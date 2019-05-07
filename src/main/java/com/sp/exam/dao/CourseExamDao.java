package com.sp.exam.dao;

import com.sp.exam.pojo.CourseExam;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CourseExamDao extends JpaRepository<CourseExam,String> {
    List<CourseExam> findByTime(String time);

}
