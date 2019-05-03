package com.sp.exam.utils;

import com.sp.exam.dao.LimitDao;
import com.sp.exam.dao.MajorDao;
import com.sp.exam.pojo.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;

@Component
public class JudgeSelectCourseUtil {
    @Autowired
    private LimitDao limitDao;
    @Autowired
    private MajorDao majorDao;
    @Autowired
    private static JudgeSelectCourseUtil judgeSelectCourseUtil;

   @PostConstruct
   public void init(){
       judgeSelectCourseUtil=this;
       judgeSelectCourseUtil.limitDao=this.limitDao;
       judgeSelectCourseUtil.majorDao=this.majorDao;
   }

   public static boolean judege(Student student,Integer limitId){
       if(limitId==0){
           return true;
       }
       else {
       String majorNo = judgeSelectCourseUtil.majorDao.findByMajorName(student.getStuMajor()).getMajorNo();
       return judgeSelectCourseUtil.limitDao.existsByLimitIdAndMajorNo(limitId,majorNo);
       }
   }
}
