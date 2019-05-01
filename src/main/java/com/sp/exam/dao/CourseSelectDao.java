package com.sp.exam.dao;

import com.sp.exam.pojo.CourseSelect;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;


public interface CourseSelectDao extends JpaRepository<CourseSelect,Integer> {
    boolean existsByStuNoAndCourseNo(String stuNo, String courseNo);

    List<CourseSelect> findByCourseNoAndSelectTcAndTime(String courseNo,String selectTc,String time);

    List<CourseSelect> findBySelectTc(String teacher);

}
