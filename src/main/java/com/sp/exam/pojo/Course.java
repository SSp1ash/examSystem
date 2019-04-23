package com.sp.exam.pojo;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
@Data
public class Course {
    @Id
    private String courseNo;

    private String courseName;

    //所推荐的课程选择学期
    private String courseSemester;

    //字段为0为公共无限制必修课程，1为学生自选选修课，2为专业课不能跨选
    private Integer limit;

    private String remark;
}
