package com.sp.exam.service;

import com.sp.exam.dto.CourseAvailableDTO;
import com.sp.exam.pojo.CourseAvailable;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;


public interface SelectCourseService {
    void autoSelectCourse();

    Page<CourseAvailableDTO> getCourseAvailableStatus(Pageable pageable);
}
