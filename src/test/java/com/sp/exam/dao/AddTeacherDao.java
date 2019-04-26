package com.sp.exam.dao;

import com.sp.exam.pojo.CourseAvailable;
import com.sp.exam.pojo.Teacher;
import com.sp.exam.utils.RandomNameUtil;
import lombok.extern.slf4j.Slf4j;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.Random;

@RunWith(SpringRunner.class)
@Slf4j
@SpringBootTest
public class AddTeacherDao {

    @Autowired
    private TeacherDao teacherDao;

    @Autowired
    private CourseAvailableDao courseAvailableDao;

    @Test
    public void addTeacher(){
        for(int i=0;i<18;i++) {
            Teacher teacher = new Teacher();
            teacher.setTcNo(String.valueOf(302001+i));
            String name=RandomNameUtil.getName();
            teacher.setTcName(name);
            Random random=new Random();
            if(random.nextBoolean()){
                teacher.setTcGender("男");
            }
            else {
                teacher.setTcGender("女");
            }
            teacher.setTcTel("1111");
            teacher.setTcInst("法学院");
            teacherDao.save(teacher);

            /*CourseAvailable courseAvailable=new CourseAvailable();
            courseAvailable.setId(10+i);
            courseAvailable.setTc(teacher.getTcName());
            courseAvailable.setTcNo(teacher.getTcNo());
            courseAvailable.setCapacity(50);
            courseAvailable.setCourseNo("1A00004");
            courseAvailable.setTime("201820192");
            courseAvailableDao.save(courseAvailable);*/
        }
    }
}
