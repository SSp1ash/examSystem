package com.sp.exam.service.impl;

import com.sp.exam.dao.CourseSelectDao;
import com.sp.exam.pojo.CourseSelect;
import com.sp.exam.service.TeacherAffairService;
import com.sp.exam.utils.GetSemester;
import lombok.extern.slf4j.Slf4j;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.text.DecimalFormat;
import java.util.List;
import java.util.Random;

@RunWith(SpringRunner.class)
@SpringBootTest
@Slf4j
public class TeacherAffairServiceImplTest {
    @Autowired
    private TeacherAffairService teacherAffairService;

    @Autowired
    private CourseSelectDao courseSelectDao;

    @Test
    public void randomScore(){
        DecimalFormat df=new DecimalFormat("0.00");

        Random random=new Random();
        List<CourseSelect> courseSelects = courseSelectDao.findByTime(GetSemester.get());
        for(CourseSelect courseSelect:courseSelects){
            teacherAffairService.addScore(String.valueOf(courseSelect.getId()),Double.valueOf(df.format(random.nextDouble()*100)));
        }

    }

}
