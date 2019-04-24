package com.sp.exam.dao;

import com.sp.exam.pojo.CourseRemixRecord;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CourseRemixRecordDao extends JpaRepository<CourseRemixRecord,Integer> {
    List<CourseRemixRecord> findByRemixId(String remixId);
}
