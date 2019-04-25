package com.sp.exam.utils;

import com.sp.exam.dao.AboutTimeDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;

@Component
public class TimeDetailUtil {
    @Autowired
    private AboutTimeDao aboutTimeDao;
    private static TimeDetailUtil timeDetailUtil;

    @PostConstruct
    public void init(){
        timeDetailUtil=this;
        timeDetailUtil.aboutTimeDao=this.aboutTimeDao;
    }

    public static String TimeDetailTransform(String timeDetail){
        String a=timeDetail.substring(0,1);
        String b=timeDetail.substring(1,2);
        String c=timeDetail.substring(2,3);
        String time = TimeDetailUtil.timeDetailUtil.aboutTimeDao.findById(c).get().getTime();
        return "考试周第"+a+"周"+" 星期"+b+" "+time;
    }
}
