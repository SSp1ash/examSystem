package com.sp.exam.dao;

import com.sp.exam.pojo.CourseExam;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CourseExamDao extends JpaRepository<CourseExam,String> {

}
