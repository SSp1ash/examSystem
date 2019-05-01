package com.sp.exam.dto;

import lombok.Data;

@Data
public class StuExamDetailDTO {
    private String courseNo;

    private String courseName;

    private String timeDetail;

    private String examRoom;

    private Integer sitNo;

    private String timeSemester;
}
