package com.sp.exam.dto;

import lombok.Data;

@Data
public class CourseAvailableDTO {
    private Integer id;

    private String courseNo;

    private String tc;

    private Integer capacity;

    private Integer number;

    private String time;

    public CourseAvailableDTO(Integer id, String courseNo, String tc, Integer capacity, Integer number, String time) {
        this.id = id;
        this.courseNo = courseNo;
        this.tc = tc;
        this.capacity = capacity;
        this.number = number;
        this.time = time;
    }

    public CourseAvailableDTO() {
    }
}
