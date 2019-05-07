package com.sp.exam.pojo;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
@Data
public class ScoreAnalyse {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String tcNo;

    private String tcName;

    private Integer stuNum;

    private Integer failNum;

    private String failRate;

    private Double scoreAvg;

    private String timeSemester;
}
