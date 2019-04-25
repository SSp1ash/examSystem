package com.sp.exam.service.impl;

import com.sp.exam.dao.*;
import com.sp.exam.enums.ArrangedEnum;
import com.sp.exam.exception.ArrangedException;
import com.sp.exam.pojo.*;
import com.sp.exam.service.ArrangedExamRoomService;
import com.sp.exam.utils.GetSemester;
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


    /**
         * @Description:此方法为将已经安排好的时间表上的课程分别分配考室
         * @author: SSp1ash
         * @Date:   2019/4/25
         */
    @Override
    @Transactional
    public void arrangedExamRoom() {
        List<TimeTable> timeTables = timeTableDao.findByBeArrangedAndTimeSemester("1", GetSemester.get());
        for(TimeTable timeTable:timeTables){
            List<CourseRemixRecord> remixRecords = courseRemixRecordDao.findByRemixId(timeTable.getRemixId());
            List<String> CourseNos = remixRecords.stream().map(e -> e.getCourseId()).collect(Collectors.toList());
            List<CourseSelectResult> courseSelectResultList=new ArrayList<>();
            for(String courseNo:CourseNos){
                courseSelectResultList.addAll(courseSelectResultDao.findByCourseNo(courseNo));
            }
            List<ExamRoom> examRoomList = examRoomDao.findByAvailable(1);
            int i=0;
            for(CourseSelectResult courseSelectResult:courseSelectResultList){

                if(examRoomList.get(i)==null){
                    throw new ArrangedException(ArrangedEnum.LACK_OF_ROOM);
                }
                ExamRoomArranged examRoomArranged=new ExamRoomArranged();
                examRoomArranged.setRoom(examRoomList.get(i).getRoomNo());
                examRoomArranged.setCourseSelectResultId(courseSelectResult.getId());
                examRoomArranged.setTimeDetail(timeTable.getTimeDetail());
                examRoomArranged.setTimeSemester(timeTable.getTimeSemester());
                examRoomArrangedDao.save(examRoomArranged);
                i++;

            }


        }

    }
}
