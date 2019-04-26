package com.sp.exam.enums;

import lombok.Getter;

@Getter
public enum  ArrangedEnum {
    LACK_OF_ROOM(0,"考室不够用"),
    LACK_OF_TEACHER(1,"监考教师不够"),

    ;
    private Integer code;
    private String message;

    ArrangedEnum(Integer code, String message) {
        this.code = code;
        this.message = message;
    }
}
