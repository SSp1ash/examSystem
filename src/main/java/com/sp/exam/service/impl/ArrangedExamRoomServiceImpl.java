package com.sp.exam.service.impl;

import com.sp.exam.VO.ResultVO;
import com.sp.exam.dao.*;
import com.sp.exam.dto.CourseDemandDTO;
import com.sp.exam.enums.ArrangedEnum;
import com.sp.exam.exception.ArrangedException;
import com.sp.exam.pojo.*;
import com.sp.exam.service.ArrangedExamRoomService;
import com.sp.exam.utils.GetSemester;
import com.sp.exam.utils.ResultVOUtil;
import com.sp.exam.utils.TeacherSelectedUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class ArrangedExamRoomServiceImpl implements ArrangedExamRoomService {

    @Autowired
    private ExamRoomDao examRoomDao;

    @Autowired
    private CourseSelectResultDao courseSelectResultDao;

    @Autowired
    private TimeTableDao timeTableDao;

    @Autowired
    private CourseRemixRecordDao courseRemixRecordDao;

    @Autowired
    private ExamRoomArrangedDao examRoomArrangedDao;

    @Autowired
    private TeacherFrequencyDao teacherFrequencyDao;

    @Autowired
    private TeacherDao teacherDao;

    @Autowired
    private CourseDao courseDao;


    /**
         * @Description:此方法为将已经安排好的时间表上的课程分别分配考室，顺便把监考老师也分配了
         * @author: SSp1ash
         * @Date:   2019/4/25
         */
    @Override
    @Transactional
    public void arrangedExamRoom() {
        //一开始往teacher_frequency表写入数据
        List<TeacherFrequency> teacherFrequencies = teacherDao.findAll().stream().map(e -> new TeacherFrequency(e.getTcNo(), 0, GetSemester.get())).collect(Collectors.toList());
        for(TeacherFrequency teacherFrequency:teacherFrequencies){
            teacherFrequencyDao.save(teacherFrequency);
        }

        List<TimeTable> timeTables = timeTableDao.findByBeArrangedAndExamRoomArrangedAndTimeSemester("1", "0",GetSemester.get());
        for(TimeTable timeTable:timeTables){
            List<CourseRemixRecord> remixRecords = courseRemixRecordDao.findByRemixId(timeTable.getRemixId());
            List<String> CourseNos = remixRecords.stream().map(e -> e.getCourseId()).collect(Collectors.toList());
            List<CourseSelectResult> courseSelectResultList=new ArrayList<>();
            for(String courseNo:CourseNos){
                courseSelectResultList.addAll(courseSelectResultDao.findByCourseNo(courseNo));
            }
            //算出需要的监考教师数，为总课号数*2
            //教师安排的算法
            int requireTeacherNum = courseSelectResultList.size()*2;

            //直接取出用哪些老师
            List<TeacherFrequency> teacherSelected = TeacherSelectedUtil.teacherSelected(requireTeacherNum);
            List<String> tcNos = teacherSelected.stream().map(e -> e.getTcNo()).collect(Collectors.toList());

            List<ExamRoom> examRoomList = examRoomDao.findByAvailable(1);
            int i=0;
            for(CourseSelectResult courseSelectResult:courseSelectResultList){

                if(examRoomList.get(i)==null){
                    throw new ArrangedException(ArrangedEnum.LACK_OF_ROOM);
                }
                ExamRoomArranged examRoomArranged=new ExamRoomArranged();
                examRoomArranged.setTeacher(tcNos.get(i*2)+"+"+tcNos.get(i*2+1));
                examRoomArranged.setRoom(examRoomList.get(i).getRoomNo());
                examRoomArranged.setCourseSelectResultId(courseSelectResult.getId());
                examRoomArranged.setTimeDetail(timeTable.getTimeDetail());
                examRoomArranged.setTimeSemester(timeTable.getTimeSemester());
                examRoomArrangedDao.save(examRoomArranged);
                i++;

            }
            //做完操作后把teacher_frequency表删除
            //teacherFrequencyDao.deleteAll();
            timeTable.setExamRoomArranged("1");
            timeTableDao.save(timeTable);

        }

    }


    /**
         * @Description:此方法没有进行扩展性编写
         * @author: SSp1ash
         * @Date:   2019/5/8
         */
    @Override
    public List<CourseDemandDTO> getTeacherNumAndRoomNum(String timeDetail) {
        TimeTable timeTable = timeTableDao.findByTimeDetailAndTimeSemester(timeDetail, GetSemester.get());
        List<CourseRemixRecord> remixRecords = courseRemixRecordDao.findByRemixId(timeTable.getRemixId());
        List<String> CourseNos = remixRecords.stream().map(e -> e.getCourseId()).collect(Collectors.toList());
        List<CourseDemandDTO> courseDemandDTOS=new ArrayList<>();
        CourseDemandDTO courseDemandDTO=new CourseDemandDTO();
        courseDemandDTO.setCourseName(courseDao.findById(CourseNos.get(0)).get().getCourseName());
        courseDemandDTO.setCourseNo(CourseNos.get(0));
        courseDemandDTO.setRoomNum(courseSelectResultDao.findByCourseNo(CourseNos.get(0)).size());
        courseDemandDTO.setTeacherNum(courseSelectResultDao.findByCourseNo(CourseNos.get(0)).size()*2);
        courseDemandDTOS.add(courseDemandDTO);

        if(CourseNos.size()>1) {
            CourseDemandDTO courseDemandDTO2 = new CourseDemandDTO();
            courseDemandDTO2.setCourseName(courseDao.findById(CourseNos.get(1)).get().getCourseName());
            courseDemandDTO2.setRoomNum(courseSelectResultDao.findByCourseNo(CourseNos.get(1)).size());
            courseDemandDTO2.setCourseNo(CourseNos.get(1));
            courseDemandDTO2.setTeacherNum(courseSelectResultDao.findByCourseNo(CourseNos.get(1)).size() * 2);
            courseDemandDTOS.add(courseDemandDTO2);
        }
        return courseDemandDTOS;
    }


    @Override
    public List<TimeTable> getBeArrangedTimeTable() {
        List<TimeTable> timeTables = timeTableDao.findByBeArrangedAndExamRoomArrangedAndTimeSemester("1", "0", GetSemester.get());
        return timeTables;
    }

    @Override
    public ResultVO manualArrangedTeacherAndExamRoom(String selectTimeDetail, String teacherA, String roomA, String teacherB, String roomB) {
        List<CourseDemandDTO> courseDemandDTOList = getTeacherNumAndRoomNum(selectTimeDetail);
        String[] teacherAList = teacherA.split("\\,");
        String[] roomAList = roomA.split("\\,");
        List<String> teacherAs = Arrays.asList(teacherAList);
        List<String> roomAs=Arrays.asList(roomAList);
        Iterator<String> it1=teacherAs.iterator();
        Iterator<String> it2=roomAs.iterator();
        if(courseDemandDTOList.get(0).getRoomNum()!=roomAList.length||courseDemandDTOList.get(0).getTeacherNum()!=teacherAList.length){
            return ResultVOUtil.error(002,"教师或者考室不够");
        }
        List<CourseSelectResult> courseSelectResults = courseSelectResultDao.findByCourseNo(courseDemandDTOList.get(0).getCourseNo());
        for(CourseSelectResult courseSelectResult:courseSelectResults){
            ExamRoomArranged examRoomArranged=new ExamRoomArranged();
            examRoomArranged.setRoom(it2.next());
            String remixTeacher=it1.next()+"+"+it1.next();
            examRoomArranged.setTeacher(remixTeacher);
            examRoomArranged.setCourseSelectResultId(courseSelectResult.getId());
            examRoomArranged.setTimeDetail(selectTimeDetail);
            examRoomArranged.setTimeSemester(GetSemester.get());
            examRoomArrangedDao.save(examRoomArranged);
        }

        if(courseDemandDTOList.size()==2){
            if(teacherB.equals("")||roomB.equals("")){
                return ResultVOUtil.error(001,"你没有传值进来");
            }
            String[] teacherBList = teacherB.split("\\,");
            String[] roomBList = roomB.split("\\,");
            List<String> teacherBs = Arrays.asList(teacherBList);
            List<String> roomBs=Arrays.asList(roomBList);
            for(String string1:teacherAs){
                for(String string2:teacherBs){
                    if(string1.equals(string2)){
                        return ResultVOUtil.error(003,"产生了冲突的老师");
                    }
                }
            }

            for(String string1:roomAs){
                for(String string2:roomBs){
                    if(string1.equals(string2)){
                        return ResultVOUtil.error(004,"产生了冲突的考室");
                    }
                }
            }

            Iterator<String> it3=teacherBs.iterator();
            Iterator<String> it4=roomBs.iterator();
            if(courseDemandDTOList.get(1).getRoomNum()!=roomBList.length||courseDemandDTOList.get(1).getTeacherNum()!=teacherBList.length){
                return ResultVOUtil.error(002,"教师或者考室不够");
            }
            List<CourseSelectResult> courseSelectResults2 = courseSelectResultDao.findByCourseNo(courseDemandDTOList.get(1).getCourseNo());
            for(CourseSelectResult courseSelectResult:courseSelectResults2){
                ExamRoomArranged examRoomArranged=new ExamRoomArranged();
                examRoomArranged.setRoom(it4.next());
                String remixTeacher=it3.next()+"+"+it3.next();
                examRoomArranged.setTeacher(remixTeacher);
                examRoomArranged.setCourseSelectResultId(courseSelectResult.getId());
                examRoomArranged.setTimeDetail(selectTimeDetail);
                examRoomArranged.setTimeSemester(GetSemester.get());
                examRoomArrangedDao.save(examRoomArranged);
            }
        }
        TimeTable timeTable = timeTableDao.findByTimeDetailAndTimeSemester(selectTimeDetail, GetSemester.get());
        timeTable.setExamRoomArranged("1");
        timeTableDao.save(timeTable);
        return ResultVOUtil.success();
    }
}
