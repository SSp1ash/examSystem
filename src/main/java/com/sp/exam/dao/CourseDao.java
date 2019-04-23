package com.sp.exam.dao;

import com.sp.exam.pojo.Course;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CourseDao extends JpaRepository<Course,String> {
}
