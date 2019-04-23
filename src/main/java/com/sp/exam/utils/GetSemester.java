package com.sp.exam.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

public class GetSemester {
    public static String get(){
        Date date=new Date();
        date.getTime();
        SimpleDateFormat dateFormat=new SimpleDateFormat("yyyyMM");
        String result=dateFormat.format(date);
        String year=result.substring(0,4);
        String month=result.substring(4,6);
        Integer y=Integer.valueOf(year);
        Integer m=Integer.valueOf(month);
        if(m<=6)
        {
            Integer ty=y-1;
            return String.valueOf(ty)+year+2;

        }else {
            Integer ty=y+1;
            return year+String.valueOf(ty)+1;
        }
    }

    //根据学生年级得到学生该选第几学期的课程
    public static String getStudentSemester(String grade){
        Date date=new Date();
        date.getTime();
        SimpleDateFormat dateFormat=new SimpleDateFormat("yyyyMM");
        String result=dateFormat.format(date);
        String year=result.substring(0,4);
        String month=result.substring(4,6);
        Integer y=Integer.valueOf(year);
        Integer m=Integer.valueOf(month);
        Integer g=Integer.valueOf(grade);
        if(m>=9){
            return String.valueOf((y-g)*2+1);
        }
        else return String.valueOf((y-g)*2);

    }
}
