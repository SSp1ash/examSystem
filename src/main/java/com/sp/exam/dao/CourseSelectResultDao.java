package com.sp.exam.dao;

import com.sp.exam.pojo.CourseSelect;
import com.sp.exam.pojo.CourseSelectResult;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CourseSelectResultDao extends JpaRepository<CourseSelectResult,Integer> {
    List<CourseSelectResult> findByTime(String time);

    List<CourseSelectResult> findByCourseNo(String courseNo);
}
