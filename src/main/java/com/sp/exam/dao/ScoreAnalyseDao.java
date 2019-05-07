package com.sp.exam.dao;

import com.sp.exam.pojo.ScoreAnalyse;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ScoreAnalyseDao extends JpaRepository<ScoreAnalyse,String> {
    Page<ScoreAnalyse> findByTimeSemester(Pageable pageable,String timeSemester);

    ScoreAnalyse findByTcNoAndTimeSemester(String tcNo,String timeSemester);
}
