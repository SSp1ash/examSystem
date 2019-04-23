package com.sp.exam.dao;

import com.sp.exam.pojo.CourseSelect;
import com.sp.exam.pojo.CourseSelectResult;
import lombok.extern.slf4j.Slf4j;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

import static org.junit.Assert.*;

@RunWith(SpringRunner.class)
@SpringBootTest
@Slf4j
public class CourseSelectDaoTest {

    @Autowired
    private CourseSelectDao courseSelectDao;

    @Test
    public void existsByStuNoAndCourseNo() {
    }

    @Test
    public void findByCourseNoAndSelectTcAndTime() {
        List<CourseSelect> result = courseSelectDao.findByCourseNoAndSelectTcAndTime("1A00002", "300001", "201820192");
        log.info("Result的大小{}",result.size());

    }
}
