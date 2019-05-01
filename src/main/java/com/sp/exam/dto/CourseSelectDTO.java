package com.sp.exam.dto;

import lombok.Data;

@Data
public class CourseSelectDTO {
    private String courseNo;

    private String courseName;

    private Double score;

    private String timeSemester;
}
