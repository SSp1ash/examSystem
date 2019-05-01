package com.sp.exam.dao;

import com.sp.exam.pojo.StuExamDetail;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface StuExamDetailDao extends JpaRepository<StuExamDetail,Integer> {
    List<StuExamDetail> findByStuNo(String stuNo);
}
