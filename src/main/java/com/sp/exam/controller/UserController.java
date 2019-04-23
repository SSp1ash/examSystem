package com.sp.exam.controller;

import com.sp.exam.converter.UserForm2UserConverter;
import com.sp.exam.enums.ResultEnum;
import com.sp.exam.exception.LoginException;
import com.sp.exam.form.UserForm;
import com.sp.exam.pojo.User;
import com.sp.exam.service.UserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;


@Controller
@Slf4j
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;

    @PostMapping("/login")
    public ModelAndView login(@Valid UserForm userForm, BindingResult bindingResult){
        if(bindingResult.hasErrors()){
            log.error("【登录操作】登录失败");
            throw new LoginException(ResultEnum.ACCOUNT_WRONG.getCode(),
                    bindingResult.getFieldError().getDefaultMessage());
        }
        User result = userService.login(UserForm2UserConverter.converter(userForm));
        if(result!=null){
            return new ModelAndView("user/home");
        }
        return null;

    }

    @GetMapping("/userInfo")
    public ModelAndView userInfo(){
        return new ModelAndView("user/userInfo");
    }

}
