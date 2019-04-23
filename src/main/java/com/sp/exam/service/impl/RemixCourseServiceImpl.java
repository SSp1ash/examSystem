package com.sp.exam.service.impl;

import com.sp.exam.dao.CourseDao;
import com.sp.exam.dao.CourseExamDao;
import com.sp.exam.dao.CourseRemixDao;
import com.sp.exam.dao.CourseRemixRecordDao;
import com.sp.exam.enums.CommonEnum;
import com.sp.exam.pojo.CourseExam;
import com.sp.exam.pojo.CourseRemix;
import com.sp.exam.pojo.CourseRemixRecord;
import com.sp.exam.service.RemixCourseService;
import com.sp.exam.utils.KeyUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.Iterator;
import java.util.List;

@Service
public class RemixCourseServiceImpl implements RemixCourseService {
    @Autowired
    private CourseExamDao courseExamDao;

    @Autowired
    private CourseDao courseDao;

    @Autowired
    private CourseRemixRecordDao courseRemixRecordDao;

    @Autowired
    private CourseRemixDao courseRemixDao;

    @Override
    @Transactional
    public void autoRemix() {
        List<CourseExam> courseExam = courseExamDao.findAll();
        //使用迭代器
        Iterator<CourseExam> it =courseExam.iterator();
        while(it.hasNext()){
            //如果是公共课，直接加入remix,然后把它从list里面删除

            //取出迭代器所指向的值
            CourseExam thisCourseExam = it.next();
            //判断是否为公共课，公共课直接加入然后从List里面删掉
            if(courseDao.findById(thisCourseExam.getCourseNo()).get().getLimit()==0){
                CourseRemix courseRemix=new CourseRemix();
                courseRemix.setRemixId(KeyUtil.genUniqueKey());
                courseRemix.setTime(thisCourseExam.getTime());
                courseRemix.setBeArranged(String.valueOf(CommonEnum.NOT_BE_ARRANGED.getCode()));
                courseRemix.setWeight(thisCourseExam.getWeight());
                courseRemixDao.save(courseRemix);
                CourseRemixRecord courseRemixRecord=new CourseRemixRecord();
                courseRemixRecord.setRemixId(courseRemix.getRemixId());
                courseRemixRecord.setCourseId(thisCourseExam.getCourseNo());
                courseRemixRecord.setTime(thisCourseExam.getTime());
                courseRemixRecord.setBeArranged(String.valueOf(CommonEnum.NOT_BE_ARRANGED.getCode()));
                courseRemixRecordDao.save(courseRemixRecord);

                //此时删除该list
                it.remove();
            }
        }
        System.out.println(courseExam.size());

    }
}
