package com.sp.exam.pojo;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
@Data
public class CourseAvailable {
    @Id
    private Integer id;

    private String courseNo;

    private String tc;

    //老师的编号
    private String tcNo;

    private Integer capacity;

    //当前选择的人数
    private Integer number;

    //此字段为具体年份学期，使用格式如，201520161
    private String time;

}
