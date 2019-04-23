package com.sp.exam.pojo;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Data
@Table(name="selectLimit")
public class Limit {
    @Id
    private Integer Id;

    private Integer limitId;

    private String majorNo;
}
