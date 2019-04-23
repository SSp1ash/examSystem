package com.sp.exam.pojo;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
@Data
public class Teacher {

    @Id
    private String tcNo;

    private String tcName;

    private String tcGender;

    private String tcInst;

    private String tcTel;

}
