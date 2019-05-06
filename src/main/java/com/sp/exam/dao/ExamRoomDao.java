package com.sp.exam.dao;

import com.sp.exam.pojo.ExamRoom;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ExamRoomDao  extends JpaRepository<ExamRoom,Integer> {
    List<ExamRoom> findByAvailable(Integer available);


}
