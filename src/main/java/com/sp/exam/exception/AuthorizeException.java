package com.sp.exam.exception;

import com.sp.exam.enums.ResultEnum;

public class AuthorizeException extends RuntimeException{
    private Integer code;


    public AuthorizeException(ResultEnum resultEnum){
        super(resultEnum.getMessage());
        this.code=resultEnum.getCode();
    }

    public AuthorizeException(Integer code, String message) {
        super(message);
        this.code = code;
    }
}
