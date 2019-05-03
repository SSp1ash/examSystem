package com.sp.exam.service;

import com.sp.exam.dto.StudentScoreDTO;
import com.sp.exam.dto.TeacherInvigilateDTO;
import com.sp.exam.pojo.CourseSelect;
import com.sp.exam.pojo.Teacher;

import java.util.List;

public interface TeacherAffairService {
    List<TeacherInvigilateDTO> findInvigilate(String teacherId);

    List<StudentScoreDTO> findStudentByTeacher(String teacherId);

    CourseSelect addScore(String id,Double score);

    List<Teacher> getAllTeacher();
}
