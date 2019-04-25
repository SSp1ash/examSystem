package com.sp.exam.exception;

import com.sp.exam.enums.ArrangedEnum;

public class ArrangedException extends RuntimeException{
    private Integer code;

    public ArrangedException(ArrangedEnum arrangedEnum){
        super(arrangedEnum.getMessage());
        this.code=arrangedEnum.getCode();
    }

    public ArrangedException(Integer code,String message) {
        super(message);
        this.code = code;
    }
}
