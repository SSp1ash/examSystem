package com.sp.exam.dao;

import lombok.extern.slf4j.Slf4j;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import static org.junit.Assert.*;

@RunWith(SpringRunner.class)
@SpringBootTest
@Slf4j
public class LimitDaoTest {

    @Autowired
    private LimitDao limitDao;


    @Test
    public void findByLimitId() {
        System.out.println(limitDao.findAll());

    }
}
