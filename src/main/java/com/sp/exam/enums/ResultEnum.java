package com.sp.exam.enums;

import lombok.Getter;

@Getter
public enum ResultEnum {
    ACCOUNT_WRONG(1,"账号或密码错误"),
    ;
    private Integer code;
    private String message;

    ResultEnum(Integer code, String message) {
        this.code = code;
        this.message = message;
    }
}
