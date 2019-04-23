package com.sp.exam.service.impl;

import com.sp.exam.dao.CourseDao;
import com.sp.exam.dao.CourseSelectDao;
import com.sp.exam.dao.CourseSelectResultDao;
import com.sp.exam.dao.TeacherDao;
import com.sp.exam.pojo.Course;
import com.sp.exam.pojo.CourseSelect;
import com.sp.exam.pojo.CourseSelectResult;
import com.sp.exam.pojo.Teacher;
import com.sp.exam.service.SelectCourseResultService;
import com.sp.exam.utils.GetSemester;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SelectCourseResultServiceImpl implements SelectCourseResultService {
    @Autowired
    private CourseSelectResultDao courseSelectResultDao;

    @Autowired
    private CourseDao courseDao;

    @Autowired
    private TeacherDao teacherDao;

    @Autowired
    private CourseSelectDao courseSelectDao;

    @Override
    public void summary() {
        //通过课程代号和老师和时间确定一个课号出来
        List<Course> courseList = courseDao.findAll();
        List<Teacher> teacherList = teacherDao.findAll();
        for(Course course :courseList){
            for(Teacher teacher:teacherList){
                List<CourseSelect> result = courseSelectDao.findByCourseNoAndSelectTcAndTime(course.getCourseNo()
                        , teacher.getTcNo(), GetSemester.get());
                if(result.size()>0) {
                    CourseSelectResult courseSelectResult = new CourseSelectResult();
                    courseSelectResult.setStuNum(result.size());
                    courseSelectResult.setTcNo(teacher.getTcNo());
                    courseSelectResult.setCourseNo(course.getCourseNo());
                    courseSelectResult.setTime(GetSemester.get());
                    courseSelectResultDao.save(courseSelectResult);
                }
            }
        }

    }
}
