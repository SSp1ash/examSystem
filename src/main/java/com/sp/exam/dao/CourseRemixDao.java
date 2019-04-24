package com.sp.exam.dao;

import com.sp.exam.pojo.CourseRemix;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CourseRemixDao extends JpaRepository<CourseRemix,String> {
    List<CourseRemix> findByTimeAndBeArrangedOrderByWeightDesc(String time,String beArranged);

}
