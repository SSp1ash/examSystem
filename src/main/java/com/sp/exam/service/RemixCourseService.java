package com.sp.exam.service;

import com.sp.exam.VO.ResultVO;
import com.sp.exam.dto.CourseRemixRecordDTO;
import com.sp.exam.pojo.CourseExam;
import com.sp.exam.pojo.CourseRemix;
import com.sp.exam.pojo.CourseRemixRecord;

import java.util.List;

public interface RemixCourseService {
    void autoRemix();

    void manualPreRemix();

    ResultVO manualRemix(CourseExam courseA, CourseExam courseB);

    List<CourseRemix> selectAvailable();

    List<CourseRemixRecordDTO> getAllCourseRemix();
}
