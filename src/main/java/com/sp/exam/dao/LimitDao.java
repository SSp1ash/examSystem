package com.sp.exam.dao;

import com.sp.exam.pojo.Limit;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface LimitDao extends JpaRepository<Limit,Integer> {
    List<Limit> findByLimitId(Integer limitId);
}
