package com.sp.exam.converter;

import com.google.gson.Gson;
import com.sp.exam.form.UserForm;
import com.sp.exam.pojo.User;
import lombok.extern.slf4j.Slf4j;

@Slf4j
public class UserForm2UserConverter {
    public static User converter(UserForm userForm){

        User user=new User();
        user.setUsername(userForm.getName());
        user.setPassword(userForm.getPassword());
        user.setUserType(userForm.getUserType());
        return user;
    }
}
