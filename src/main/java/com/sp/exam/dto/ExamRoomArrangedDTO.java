package com.sp.exam.dto;

import lombok.Data;

@Data
public class ExamRoomArrangedDTO {
    private String courseName;

    private String timeDetail;

    private String roomNo;

    private String[] teacher;

    private String timeSemester;
}
