package com.sp.exam.form;

import lombok.Data;

@Data
public class ModifyUserForm {
    private String id;

    private String nickName;

    private String oldPassword;

    private String newPassword;

    private String renewPassword;
}
