package com.sp.exam.service.impl;

import com.sp.exam.service.RemixCourseService;
import lombok.extern.slf4j.Slf4j;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

import static org.junit.Assert.*;

@RunWith(SpringRunner.class)
@SpringBootTest
@Slf4j
public class RemixCourseServiceImplTest {

    @Autowired
    private RemixCourseService remixCourseService;

    @Test
    public void autoRemix() {
        remixCourseService.autoRemix();
    }

    @Test
    public void listTest() {

        String[] arr = {"a", "b", "a"};
        List<String> list = new ArrayList<>(Arrays.asList(arr));
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            System.out.println(it.next());
        }

    }


}
