package com.sp.exam.dao;

import com.sp.exam.pojo.User;
import lombok.extern.slf4j.Slf4j;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;


import static org.junit.Assert.*;

@RunWith(SpringRunner.class)
@SpringBootTest
@Slf4j
public class UserDaoTest {

    @Autowired
    private UserDao userDao;

    @Test
    public void test1(){
        User user=new User();
        user.setUsername("ssplash");
        user.setPassword("123456");
        user.setUserType(3);
        User user1 = userDao.findByUsername(user.getUsername());

        log.info("id={}",user1.getUserId());



}
}
