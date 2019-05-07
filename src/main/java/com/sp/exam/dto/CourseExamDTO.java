package com.sp.exam.dto;

import lombok.Data;

@Data
public class CourseExamDTO {

    private String courseNo;

    private String courseName;

    private Integer weight;

    private String beArranged;

    private String time;
}
