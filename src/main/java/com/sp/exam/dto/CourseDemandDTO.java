package com.sp.exam.dto;

import lombok.Data;

/**
     * @Description:此类为传给前端的用于显示课程名，需要的监考教师数目，需要的考室数目
     * @author: SSp1ash
     * @Date:   2019/5/8
     */
@Data
public class CourseDemandDTO {
    private String courseName;

    private String courseNo;

    private Integer teacherNum;

    private Integer roomNum;
}
