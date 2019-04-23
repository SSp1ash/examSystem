package com.sp.exam.service.impl;

import com.sp.exam.dao.*;
import com.sp.exam.pojo.CourseAvailable;
import com.sp.exam.pojo.Student;
import com.sp.exam.utils.GetSemester;
import lombok.extern.slf4j.Slf4j;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import static org.junit.Assert.*;

@RunWith(SpringRunner.class)
@SpringBootTest
@Slf4j
public class SelectCourseServiceImplTest {

    @Autowired
    private CourseAvailableDao courseAvailableDao;

    @Autowired
    private StudentDao studentDao;

    @Autowired
    private CourseDao courseDao;


    @Autowired
    private CourseSelectDao courseSelectDao;

    @Autowired
    private CourseSelectResultDao courseSelectResultDao;

    @Autowired
    private SelectCourseServiceImpl  selectCourseService;

    @Test
    public void autoSelectCourse() {
        selectCourseService.autoSelectCourse();
    }
}
