package com.sp.exam.service;

import com.sp.exam.pojo.CourseExam;
import com.sp.exam.pojo.TimeTable;

import java.util.List;

public interface ArrangedCourseService {
    void arrangedTimeTableByDay();

    void arrangedTimeTableByTimeSlot();

    void arrangedTimeTableByNoting();

    List<TimeTable> timeTableStatus(String week);

    List<CourseExam> courseExamStatus();

    //得到某一时间点的所有课程
    List<TimeTable> timeTablePoint(String week,String x);
}
