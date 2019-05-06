package com.sp.exam.dao;

import com.sp.exam.pojo.ExamRoomArranged;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ExamRoomArrangedDao extends JpaRepository<ExamRoomArranged,Integer> {
    List<ExamRoomArranged> findByTimeSemester(String timeSemester);

    List<ExamRoomArranged> findByTeacherLikeAndTimeSemester(String teacher,String timeSemester);

    Page<ExamRoomArranged> findByTimeSemester(Pageable pageable,String timeSemester);
}
