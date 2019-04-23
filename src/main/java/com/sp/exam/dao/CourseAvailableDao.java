package com.sp.exam.dao;

import com.sp.exam.pojo.CourseAvailable;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CourseAvailableDao extends JpaRepository<CourseAvailable,Integer> {
    List<CourseAvailable> findByTime(String time);

}
