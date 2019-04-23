package com.sp.exam.dao;

import com.sp.exam.pojo.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserDao extends JpaRepository<User,String> {

    User findByUsername(String userName);




}
