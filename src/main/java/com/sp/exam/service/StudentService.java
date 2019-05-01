package com.sp.exam.service;

import com.sp.exam.dto.CourseSelectDTO;
import com.sp.exam.dto.StuExamDetailDTO;

import java.util.List;

public interface StudentService {
    List<StuExamDetailDTO> stuExamDetail(String stuNo);

    List<CourseSelectDTO> stuExamScore(String stuNo);
}
