package com.sp.exam.pojo;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
@Data
public class Major {
    @Id
    private String majorNo;

    private String majorName;

    private String majorType;

    private String majorInstitution;

    private String majorDescribe;
}
