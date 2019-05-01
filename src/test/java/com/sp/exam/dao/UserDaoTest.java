package com.sp.exam.dao;

import com.sp.exam.pojo.Teacher;
import com.sp.exam.pojo.User;
import lombok.extern.slf4j.Slf4j;
import org.junit.Assert;
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
public class UserDaoTest {

    @Autowired
    private UserDao userDao;

    @Autowired
    private TeacherDao teacherDao;

    @Test
    public void test1(){
        User user=new User();
        user.setUsername("ssplash");
        user.setPassword("123456");
        user.setUserType(3);

}

    @Test
    public void teacher2User(){
        List<Teacher> all = teacherDao.findAll();
        int i=0;
        for(Teacher teacher:all){
            User user=new User();
            user.setUserId(String.valueOf(1000+i));
            user.setPassword("123456");
            user.setUserType(2);
            user.setUsername(teacher.getTcNo());
            user.setNickname(teacher.getTcName());
            userDao.save(user);
            i++;
        }
    }
}
