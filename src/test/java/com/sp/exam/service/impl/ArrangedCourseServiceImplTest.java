package com.sp.exam.service.impl;

import com.sp.exam.service.ArrangedCourseService;
import lombok.extern.slf4j.Slf4j;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
@Slf4j
public class ArrangedCourseServiceImplTest {

    @Autowired
    private ArrangedCourseService arrangedCourseService;

    @Test
    public void arrangedTimeTable() {
        arrangedCourseService.arrangedTimeTableByDay();
    }

    @Test
    public void subStringTest(){
        String a="abc";
        String substring = a.substring(1, 2);
        System.out.println(substring);

    }

    @Test
    public void arrangedTimeTableByTimeSlot(){
        arrangedCourseService.arrangedTimeTableByTimeSlot();
    }



    @Test
    public void arrangedTimeTableByNoting(){
        arrangedCourseService.arrangedTimeTableByNoting();}
}
