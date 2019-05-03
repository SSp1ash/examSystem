package com.sp.exam.dao;

import com.sp.exam.pojo.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserDao extends JpaRepository<User,String> {

    User findByUsernameAndPasswordAndUserType(String username,String password,Integer userType);

    Boolean existsByUserIdAndPassword(String UserId,String Password);




}
