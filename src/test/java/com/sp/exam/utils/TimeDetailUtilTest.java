package com.sp.exam.utils;

import lombok.extern.slf4j.Slf4j;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import static org.junit.Assert.*;

@RunWith(SpringRunner.class)
@SpringBootTest
@Slf4j
public class TimeDetailUtilTest {

    @Test
    public void timeDetailTransform() {
        String s = TimeDetailUtil.TimeDetailTransform("111");
        System.out.println(s);
    }
}
