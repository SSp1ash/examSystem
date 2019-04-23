package com.sp.exam.exception;

import com.sp.exam.enums.ResultEnum;

public class LoginException extends RuntimeException{
    private Integer code;


    public LoginException(ResultEnum resultEnum){
        super(resultEnum.getMessage());
        this.code=resultEnum.getCode();
    }

    public LoginException(Integer code,String message) {
        super(message);
        this.code = code;
    }
}
