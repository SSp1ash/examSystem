package com.sp.exam.dao;

import com.sp.exam.pojo.Student;
import lombok.extern.slf4j.Slf4j;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;


@RunWith(SpringRunner.class)
@SpringBootTest
@Slf4j
public class StudentDaoTest {
    @Autowired
    private StudentDao studentDao;

    @Test
    public void test1(){
        List<Student> all = studentDao.findAll();
        Assert.assertNotNull(all);
    }

}
