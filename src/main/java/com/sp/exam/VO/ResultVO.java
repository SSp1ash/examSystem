package com.sp.exam.VO;

import lombok.Data;

import java.io.Serializable;

/**
 * http请求最外体
 */
@Data
public class ResultVO<T> implements Serializable {

    private static final long serialVersionUID = 5480079463038740681L;

    private Integer code;

    private String msg;

    private T data;
}
