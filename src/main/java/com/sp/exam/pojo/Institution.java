package com.sp.exam.pojo;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
@Data
public class Institution {
    @Id
    private String instNo;

    private String instName;

    private String instTel;

    private String instDescribe;


}
