package com.sp.exam.service.impl;

import com.sp.exam.dao.CourseDao;
import com.sp.exam.dao.CourseExamDao;
import com.sp.exam.dao.CourseSelectResultDao;
import com.sp.exam.pojo.CourseExam;
import com.sp.exam.pojo.CourseSelectResult;
import com.sp.exam.service.CourseExamService;
import com.sp.exam.utils.GetSemester;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class CourseExamServiceImpl implements CourseExamService {
    @Autowired
    private CourseExamDao courseExamDao;

    @Autowired
    private CourseDao courseDao;

    @Autowired
    private CourseSelectResultDao courseSelectResultDao;

    @Override
    public List<String> getExam() {
        //1.在当前课号中找出具体有哪些课程，要求符合本学期
        List<CourseSelectResult> courseSelectResults = courseSelectResultDao.findByTime(GetSemester.get());
        List<String> courseNoExam = courseSelectResults.stream()
                .map(e -> e.getCourseNo()).collect(Collectors.toList()).stream().distinct().collect(Collectors.toList());
        //2.查询课程是否属于统考课程
        for(String courseNo:courseNoExam){
            if(!courseDao.findById(courseNo).get().getRemark().equals("不统考")){
                CourseExam courseExam=new CourseExam();
                //计算权重////////////////////
                courseExam.setWeight(courseSelectResultDao.findByCourseNo(courseNo).size());
                /////////////////////////////
                courseExam.setCourseNo(courseNo);
                courseExam.setBeArranged("0");
                courseExam.setTime(GetSemester.get());
                courseExamDao.save(courseExam);
            }
        }
        return courseNoExam;

    }
}
