package com.sp.exam.dto;

import lombok.Data;

@Data
public class StudentScoreDTO {
    private Integer id;

    private String stuNo;

    private String stuName;

    private String courseNo;

    private String courseName;

    private Double score;

    private String timeSemester;
}
