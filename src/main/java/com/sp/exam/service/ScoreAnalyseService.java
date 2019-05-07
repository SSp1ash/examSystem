package com.sp.exam.service;


import com.sp.exam.pojo.ScoreAnalyse;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface ScoreAnalyseService {
    void getScoreAnalyse();

    Page<ScoreAnalyse> viewScoreAnalyse(Pageable pageable);
}
