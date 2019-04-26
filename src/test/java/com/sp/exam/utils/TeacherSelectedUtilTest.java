package com.sp.exam.utils;

import com.sp.exam.dao.TeacherFrequencyDao;
import com.sp.exam.pojo.TeacherFrequency;
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
public class TeacherSelectedUtilTest {
    @Autowired
    private TeacherFrequencyDao teacherFrequencyDao;

    @Test
    public void teacherSelected() {
        List<TeacherFrequency> teacherFrequencies = TeacherSelectedUtil.teacherSelected(4);

    }
}
