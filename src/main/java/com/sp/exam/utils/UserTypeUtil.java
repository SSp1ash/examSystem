package com.sp.exam.utils;

public class UserTypeUtil {
    public static String userType(Integer a){
        if(a==1){return "学生";}

        if(a==2){return "监考教师";}

        if(a==3){return "管理员";}

        return null;
    }
}
