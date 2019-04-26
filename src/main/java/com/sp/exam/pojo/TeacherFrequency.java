package com.sp.exam.pojo;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
@Data
public class TeacherFrequency {
    @Id
    private String tcNo;

    private Integer frequency;

    private String timeSemester;

    public TeacherFrequency(String tcNo, Integer frequency, String timeSemester) {
        this.tcNo = tcNo;
        this.frequency = frequency;
        this.timeSemester = timeSemester;
    }

    public TeacherFrequency() {
    }

}
