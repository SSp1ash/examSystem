package com.sp.exam.pojo;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
@Data
public class User {
    @Id
    private String userId;

    private String nickname;

    private String username;

    private String password;

    private Integer userType;


}
