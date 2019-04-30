package com.sp.exam.service;

import com.sp.exam.pojo.CourseExam;
import com.sp.exam.pojo.TimeTable;

import java.util.List;

public interface ArrangedCourseService {
    void arrangedTimeTableByDay();

    void arrangedTimeTableByTimeSlot();

    void arrangedTimeTableByNoting();

    List<TimeTable> timeTableStatus(String day);

    List<CourseExam> courseExamStatus();
}
