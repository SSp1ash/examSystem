package com.sp.exam.dao;

import com.sp.exam.dao.test.AddStudent;
import com.sp.exam.pojo.Student;
import com.sp.exam.utils.RandomNameUtil;
import lombok.extern.slf4j.Slf4j;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.Random;

@RunWith(SpringRunner.class)
@SpringBootTest
@Slf4j
public class AddStudentDao {
    @Autowired
    private AddStudent addStudent;

    @Test
    public void addStudent(){
        Random random=new Random();
        for (Integer i=0;i<50;i++){

            Student stu=new Student();
            stu.setStuNo(String.valueOf(201833001+i));

            stu.setStuName(RandomNameUtil.getName());
            stu.setStuMajor("民族学");
            if(random.nextBoolean()){
                stu.setStuGender("男");
            }
            else {
                    stu.setStuGender("女");
                }
            stu.setStuGrade("2018");
            stu.setStuInstitution("法学院");
            stu.setResident("1");
            addStudent.save(stu);
        }

    }



}
