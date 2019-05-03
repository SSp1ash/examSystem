package com.sp.exam.service.impl;

import com.sp.exam.dao.CourseAvailableDao;
import com.sp.exam.dao.TeacherDao;
import com.sp.exam.pojo.CourseAvailable;
import com.sp.exam.service.CourseAvailableService;
import com.sp.exam.utils.GetSemester;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CourseAvailableServiceImpl implements CourseAvailableService {
    @Autowired
    private CourseAvailableDao courseAvailableDao;

    @Autowired
    private TeacherDao teacherDao;

    @Override
    public void addCourseAvailable(String tcNo, String courseNo, Integer capacity) {
        CourseAvailable courseAvailable=new CourseAvailable();
        courseAvailable.setNumber(0);
        courseAvailable.setCapacity(capacity);
        courseAvailable.setCourseNo(courseNo);
        courseAvailable.setTcNo(tcNo);
        courseAvailable.setTc(teacherDao.findById(tcNo).get().getTcName());
        courseAvailable.setTime(GetSemester.get());
        courseAvailableDao.save(courseAvailable);
    }
}
