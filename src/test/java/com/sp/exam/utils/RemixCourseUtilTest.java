package com.sp.exam.utils;

import com.sp.exam.dao.CourseDao;
import com.sp.exam.dao.LimitDao;
import com.sp.exam.pojo.Limit;
import lombok.extern.slf4j.Slf4j;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.stereotype.Component;
import org.springframework.test.context.junit4.SpringRunner;

import static org.junit.Assert.*;

@RunWith(SpringRunner.class)
@SpringBootTest
@Slf4j
public class RemixCourseUtilTest {

    @Autowired
    private CourseDao courseDao;

    @Test
    public void contrast() {
        RemixCourseUtil remixCourseUtil=new RemixCourseUtil();
        boolean contrast = remixCourseUtil.contrast(courseDao.findById("1A00042").get(), courseDao.findById("1A00021").get());
        System.out.println(contrast);
    }
}
