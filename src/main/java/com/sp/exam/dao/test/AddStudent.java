package com.sp.exam.dao.test;

import com.sp.exam.pojo.Student;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AddStudent extends JpaRepository<Student,String> {

}
