package com.sp.exam.service;

import com.sp.exam.pojo.*;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;


public interface DataManagementService {
    Page<Course> findAllCourse(Pageable pageable);

    Page<Student> findAllStudent(Pageable pageable);

    Page<Teacher> findAllTeacher(Pageable pageable);

    Page<ExamRoom> findAllExamRoom(Pageable pageable);

    Page<Limit> findAllLimit(Pageable pageable);

    List<Limit> findAllLimit();

    List<Integer> getLimits();

    List<String> getInstitutions();

    void addCourse(Course course);

    void addStudent(Student student);

    void addTeacher(Teacher teacher);

    void addExamRoom(ExamRoom examRoom);

    void deleteCourse(String courseNo);

    void deleteStudent(String stuNo);

    void deleteTeacher(String tcNo);

    void deleteExamRoom(Integer id);

}
