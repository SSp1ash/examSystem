package com.sp.exam.utils;

import com.sp.exam.dao.TeacherDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;

@Component
public class TeacherNameUtil {
    @Autowired
    private TeacherDao teacherDao;
    private static TeacherNameUtil teacherNameUtil;

    @PostConstruct
    public void init(){
        teacherNameUtil=this;
        teacherNameUtil.teacherDao=this.teacherDao;
    }

    public static String getTeacherName(String remixName){
        String[] teacherIds=remixName.split("\\+");
        String result=new String();
        for(int i=0;i<teacherIds.length;i++){
            result=result+TeacherNameUtil.teacherNameUtil.teacherDao.findById(teacherIds[i]).get().getTcName()+"+";
        }
        result = result.substring(0, result.length() - 1);
        return result;
    }

}
