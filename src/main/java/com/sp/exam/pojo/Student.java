package com.sp.exam.pojo;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
@Data
public class Student {
    @Id
    private String stuNo;

    private String stuName;

    private String stuGender;

    private String stuGrade;

    private String stuMajor;

    private String stuInstitution;

    //是否在校
    private String resident;


}
