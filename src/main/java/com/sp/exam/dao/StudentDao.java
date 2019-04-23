package com.sp.exam.dao;

import com.sp.exam.pojo.Student;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface StudentDao extends JpaRepository<Student,String> {
    List<Student> findByResident(String resident);
}
