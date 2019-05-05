package com.sp.exam.service.impl;

import com.sp.exam.service.DataManagementService;
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
public class DataManagementServiceImplTest {

    @Autowired
    private DataManagementService dataManagementService;

    @Test
    public void getLimits() {
        List<Integer> limits = dataManagementService.getLimits();
        System.out.println(limits);
    }
}
