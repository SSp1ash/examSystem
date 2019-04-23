package com.sp.exam.form;

import lombok.Data;

import javax.validation.constraints.NotEmpty;

@Data
public class UserForm {
    //用户名
    @NotEmpty(message="用户名必填")
    private String name;

    @NotEmpty(message="密码必填")
    private String password;


    private Integer userType;
}
