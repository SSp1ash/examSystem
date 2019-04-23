package com.sp.exam.enums;

import lombok.Getter;

@Getter
public enum CommonEnum {
    AT_SCHOOL(1,"在学校"),
    NOT_AT_SCHOOL(0,"不在学校"),
    BE_ARRANGED(1,"已经被安排考试"),
    NOT_BE_ARRANGED(0,"还没有被安排考试")
    ;
    private Integer code;
    private String message;

    CommonEnum(Integer code, String message) {
        this.code = code;
        this.message = message;
    }
}
