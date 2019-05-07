package com.sp.exam.service.impl;

import com.sp.exam.dao.*;
import com.sp.exam.enums.ArrangedEnum;
import com.sp.exam.exception.ArrangedException;
import com.sp.exam.pojo.*;
import com.sp.exam.service.ArrangedExamRoomService;
import com.sp.exam.utils.GetSemester;
import com.sp.exam.utils.TeacherSelectedUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.ArrayList;
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

        }

    }

    @Override
    public Integer[] getTeacherNumAndRoomNum(String timeDetail) {
        TimeTable timeTable = timeTableDao.findByTimeDetailAndTimeSemester(timeDetail, GetSemester.get());
        List<CourseRemixRecord> remixRecords = courseRemixRecordDao.findByRemixId(timeTable.getRemixId());
        List<String> CourseNos = remixRecords.stream().map(e -> e.getCourseId()).collect(Collectors.toList());
        Integer a[]=new Integer[2];
        a[0]=CourseNos.size()*2;
        List<CourseSelectResult> courseSelectResultList=new ArrayList<>();
        for(String courseNo:CourseNos){
            courseSelectResultList.addAll(courseSelectResultDao.findByCourseNo(courseNo));
        }
        a[1]=courseSelectResultList.size();
        return a;
    }


    @Override
    public List<TimeTable> getBeArrangedTimeTable() {
        List<TimeTable> timeTables = timeTableDao.findByBeArrangedAndExamRoomArrangedAndTimeSemester("1", "0", GetSemester.get());
        return timeTables;
    }
}
