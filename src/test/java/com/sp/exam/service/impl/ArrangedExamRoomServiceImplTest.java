package com.sp.exam.service.impl;

import com.sp.exam.dao.ExamRoomDao;
import com.sp.exam.pojo.ExamRoom;
import com.sp.exam.service.ArrangedExamRoomService;
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
public class ArrangedExamRoomServiceImplTest {

    @Autowired
    private ArrangedExamRoomService arrangedExamRoomService;

    @Autowired
    private ExamRoomDao examRoomDao;

    @Test
    public void arrangedExamRoom() {
        arrangedExamRoomService.arrangedExamRoom();
    }

    @Test
    public void addExamRoom(){

        for(int i=0;i<9;i++){
            ExamRoom examRoom=new ExamRoom();
            examRoom.setAvailable(1);
            examRoom.setCapacity(50);
            examRoom.setRoomNo("B10"+String.valueOf(1+i));
            examRoom.setRoomPlace("教学主楼");
            examRoomDao.save(examRoom);
        }

    }


}
