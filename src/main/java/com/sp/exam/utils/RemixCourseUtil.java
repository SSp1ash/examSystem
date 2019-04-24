package com.sp.exam.utils;

import com.sp.exam.dao.LimitDao;
import com.sp.exam.pojo.Course;
import com.sp.exam.pojo.Limit;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import java.util.List;
import java.util.stream.Collectors;

@Component
public class RemixCourseUtil {
    @Autowired
    private LimitDao limitDao;
    private static RemixCourseUtil remixCourseUtil;

    @PostConstruct
    public void init() {
        remixCourseUtil = this;
        remixCourseUtil.limitDao = this.limitDao;
    }

    /**
         * @Description:如果返回为真说明这两个课程可以组合
         * @author: SSp1ash
         * @Date:   2019/4/23
         */
    public static boolean contrast(Course a, Course b) {

        //拿到两个课程的限制代号
        if (!(a.getLimit() == b.getLimit())) {
            List<Limit> byLimitId = remixCourseUtil.limitDao.findByLimitId(0);
            List<Limit> listA = remixCourseUtil.limitDao.findByLimitId(a.getLimit());
            List<Limit> listB = remixCourseUtil.limitDao.findByLimitId(b.getLimit());
            List<String> majorA = listA.stream().map(e -> e.getMajorNo()).collect(Collectors.toList());
            List<String> majorB = listB.stream().map(e -> e.getMajorNo()).collect(Collectors.toList());
            for (String m1 : majorA) {
                for (String m2 : majorB) {
                    if (m1.equals(m2)) {
                        return false;
                    }
                }
            }
            return true;
        }
        return false;

    }

    //用于后面直接比较两个limit代号
    public static boolean contrastLimit(String a,String b){
        if(!a.equals(b)) {
            List<Limit> listA = remixCourseUtil.limitDao.findByLimitId(Integer.valueOf(a));
            List<Limit> listB = remixCourseUtil.limitDao.findByLimitId(Integer.valueOf(b));
            List<String> majorA = listA.stream().map(e -> e.getMajorNo()).collect(Collectors.toList());
            List<String> majorB = listB.stream().map(e -> e.getMajorNo()).collect(Collectors.toList());
            for (String m1 : majorA) {
                for (String m2 : majorB) {
                    if (m1.equals(m2)) {
                        return false;
                    }
                }
            }
            return true;
        }
        return false;
    }
}
