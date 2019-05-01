package com.sp.exam.dao;

import com.sp.exam.pojo.Teacher;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TeacherDao extends JpaRepository<Teacher,String> {

}
