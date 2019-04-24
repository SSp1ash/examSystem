package com.sp.exam.pojo;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
@Data
public class CourseRemix {
    @Id
    private String remixId;

    private Integer weight;

    private String beArranged;

    //此处limit格式为组合之前的limit"+"+limit
    private String remixLimit;

    private String time;

}
