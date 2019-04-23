package com.sp.exam.service.impl;

import com.sp.exam.service.SelectCourseResultService;
import com.sp.exam.service.SelectCourseService;
import lombok.extern.slf4j.Slf4j;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import static org.junit.Assert.*;

@RunWith(SpringRunner.class)
@Slf4j
@SpringBootTest
public class SelectCourseResultServiceImplTest {

    @Autowired
    private SelectCourseResultService selectCourseResultService;

    @Test
    public void summary() {
        selectCourseResultService.summary();
    }
}
