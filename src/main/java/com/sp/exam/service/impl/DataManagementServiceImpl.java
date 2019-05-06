package com.sp.exam.service.impl;

import com.sp.exam.dao.*;
import com.sp.exam.pojo.*;
import com.sp.exam.service.DataManagementService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;


@Service
public class DataManagementServiceImpl implements DataManagementService {
    @Autowired
    private CourseDao courseDao;

    @Autowired
    private StudentDao studentDao;

    @Autowired
    private TeacherDao teacherDao;

    @Autowired
    private ExamRoomDao examRoomDao;

    @Autowired
    private LimitDao limitDao;

    @Autowired
    private InstitutionDao institutionDao;

    @Override
    public Page<Course> findAllCourse(Pageable pageable) {
        return courseDao.findAll(pageable);
    }

    @Override
    public Page<Student> findAllStudent(Pageable pageable) {
        return studentDao.findAll(pageable);
    }

    @Override
    public Page<Teacher> findAllTeacher(Pageable pageable) {
        return teacherDao.findAll(pageable);
    }

    @Override
    public Page<ExamRoom> findAllExamRoom(Pageable pageable) {
        return examRoomDao.findAll(pageable);
}

    @Override
    public Page<Limit> findAllLimit(Pageable pageable) {
        return limitDao.findAll(pageable);
    }

    @Override
    public List<Limit> findAllLimit() {
        return limitDao.findAll();
    }

    @Override
    public List<String> getInstitutions() {
        return institutionDao.findAll().stream().map(e->e.getInstName()).collect(Collectors.toList());
    }

    //distinct()用来去重
    @Override
    public List<Integer> getLimits() {
        return limitDao.findAll().stream().map(e->e.getLimitId()).distinct().collect(Collectors.toList());
    }

    @Override
    public void addCourse(Course course) {
        courseDao.save(course);
    }

    @Override
    public void addStudent(Student student) {
        studentDao.save(student);
    }

    @Override
    public void addTeacher(Teacher teacher) {
        teacherDao.save(teacher);
    }

    @Override
    public void addExamRoom(ExamRoom examRoom) {
        examRoomDao.save(examRoom);
    }

    @Override
    public void deleteCourse(String courseNo) {
        courseDao.deleteById(courseNo);
    }

    @Override
    public void deleteStudent(String stuNo) {
        studentDao.deleteById(stuNo);
    }

    @Override
    public void deleteTeacher(String tcNo) {
        teacherDao.deleteById(tcNo);
    }

    @Override
    public void deleteExamRoom(Integer id) {
        examRoomDao.deleteById(id);
    }
}
