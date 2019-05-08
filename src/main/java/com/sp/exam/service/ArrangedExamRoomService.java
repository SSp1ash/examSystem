package com.sp.exam.service;

import com.sp.exam.VO.ResultVO;
import com.sp.exam.dto.CourseDemandDTO;
import com.sp.exam.pojo.TimeTable;

import java.util.List;

public interface ArrangedExamRoomService {
    void arrangedExamRoom();

    List<CourseDemandDTO> getTeacherNumAndRoomNum(String timeDetail);

    List<TimeTable> getBeArrangedTimeTable();

    ResultVO manualArrangedTeacherAndExamRoom(String selectTimeDetail,String teacherA,String roomA,String teacherB,String roomB);
}
