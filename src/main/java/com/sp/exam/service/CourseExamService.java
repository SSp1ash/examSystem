package com.sp.exam.service;

import com.sp.exam.pojo.CourseExam;

import java.util.List;

public interface CourseExamService {
    List<String> getExam();

    List<CourseExam> showCourseExam();
}
