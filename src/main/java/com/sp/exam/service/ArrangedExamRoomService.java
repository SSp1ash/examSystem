package com.sp.exam.service;

import com.sp.exam.pojo.TimeTable;

import java.util.List;

public interface ArrangedExamRoomService {
    void arrangedExamRoom();

    Integer[] getTeacherNumAndRoomNum(String timeDetail);

    List<TimeTable> getBeArrangedTimeTable();
}
