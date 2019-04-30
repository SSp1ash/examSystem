package com.sp.exam.service.impl;

import com.sp.exam.service.ArrangedStuSitService;
import lombok.extern.slf4j.Slf4j;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
@Slf4j
public class ArrangedStuSitServiceImplTest {

    @Autowired
    private ArrangedStuSitService arrangedStuSitService;

    @Test
    public void arrangedStuSit() {
        arrangedStuSitService.arrangedStuSit();
    }
}
