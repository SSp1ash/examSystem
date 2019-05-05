package com.sp.exam.dao;

import com.sp.exam.pojo.Course;
import org.springframework.data.domain.Page;
import org.springframework.data.jpa.repository.JpaRepository;

import java.awt.print.Pageable;

public interface CourseDao extends JpaRepository<Course,String> {

}
