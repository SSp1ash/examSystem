package com.sp.exam.dao;

import com.sp.exam.pojo.TimeTable;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface TimeTableDao extends JpaRepository<TimeTable,String> {
    List<TimeTable> findByBeArrangedAndTimeSemester(String beArranged,String timeSemester);

    List<TimeTable> findByTimeDetailLike(String timeDetail);

    List<TimeTable> findByTimeDetailLikeAndTimeSlot(String timeDetail,String timeSlot);

    List<TimeTable> findByBeArrangedAndExamRoomArrangedAndTimeSemester(String beArranged,String examRoomArranged,String timeSemester);
}
