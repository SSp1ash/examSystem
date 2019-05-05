package com.sp.exam.dao;

import com.sp.exam.pojo.Institution;
import org.springframework.data.jpa.repository.JpaRepository;

public interface InstitutionDao extends JpaRepository<Institution,Integer> {
}
