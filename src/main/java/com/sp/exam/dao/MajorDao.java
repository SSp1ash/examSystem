package com.sp.exam.dao;

import com.sp.exam.pojo.Major;
import org.springframework.data.jpa.repository.JpaRepository;

public interface MajorDao extends JpaRepository<Major,String> {
    Major findByMajorName(String majorName);
}
