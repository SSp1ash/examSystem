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
import com.sp.exam.utils.RemixCourseUtil;
import org.springframework.beans.BeanUtils;
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

        //1.先把公共课从list里面移除
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
                courseRemix.setRemixLimit("0");
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

        //2.开始把剩下的可以组合的课进行组合
        while(courseExam.size()>1){
            for(int i=1;courseExam.size()>1;i++) {
                boolean contrast = RemixCourseUtil.contrast(courseDao.findById(courseExam.get(0).getCourseNo()).get()
                        , courseDao.findById(courseExam.get(i).getCourseNo()).get());
                //如果可以组合就把这两个从list里面删除掉然后写入remix表
                if (contrast) {
                    CourseRemix courseRemix = new CourseRemix();
                    courseRemix.setRemixId(KeyUtil.genUniqueKey());
                    courseRemix.setWeight(courseExam.get(0).getWeight() + courseExam.get(i).getWeight());
                    courseRemix.setBeArranged("0");
                    courseRemix.setTime(courseExam.get(0).getTime());
                    courseRemix.setRemixLimit(String.valueOf(courseDao.findById(courseExam.get(0).getCourseNo()).get().getLimit())+"+"
                            +String.valueOf(courseDao.findById(courseExam.get(i).getCourseNo()).get().getLimit()));

                    courseRemixDao.save(courseRemix);

                    CourseRemixRecord courseRemixRecord = new CourseRemixRecord();
                    courseRemixRecord.setRemixId(courseRemix.getRemixId());
                    courseRemixRecord.setCourseId(courseExam.get(0).getCourseNo());
                    courseRemixRecord.setBeArranged("0");
                    courseRemixRecord.setTime(courseExam.get(0).getTime());
                    CourseRemixRecord courseRemixRecord1 = new CourseRemixRecord();
                    //两者就一个课程号不一样，所以用拷贝
                    BeanUtils.copyProperties(courseRemixRecord, courseRemixRecord1);
                    courseRemixRecord1.setCourseId(courseExam.get(i).getCourseNo());
                    //然后写入数据库
                    courseRemixRecordDao.save(courseRemixRecord);
                    courseRemixRecordDao.save(courseRemixRecord1);
                    //然后把这两个从list里面删除了
                    courseExam.remove(0);
                    courseExam.remove(i - 1);
                    i=0;
                    continue;
                }
                //如果没找到匹配的就直接把他像公共课一样处理
                if (i == courseExam.size() - 1) {
                    CourseRemix courseRemix = new CourseRemix();
                    courseRemix.setRemixId(KeyUtil.genUniqueKey());
                    courseRemix.setTime(courseExam.get(0).getTime());
                    courseRemix.setBeArranged(String.valueOf(CommonEnum.NOT_BE_ARRANGED.getCode()));
                    courseRemix.setWeight(courseExam.get(0).getWeight());
                    courseRemix.setRemixLimit(String.valueOf(courseDao.findById(courseExam.get(0).getCourseNo()).get().getLimit()));
                    courseRemixDao.save(courseRemix);
                    CourseRemixRecord courseRemixRecord = new CourseRemixRecord();
                    courseRemixRecord.setRemixId(courseRemix.getRemixId());
                    courseRemixRecord.setCourseId(courseExam.get(0).getCourseNo());
                    courseRemixRecord.setTime(courseExam.get(0).getTime());
                    courseRemixRecord.setBeArranged(String.valueOf(CommonEnum.NOT_BE_ARRANGED.getCode()));
                    courseRemixRecordDao.save(courseRemixRecord);
                    courseExam.remove(0);
                    //把i复位
                    i = 0;
                    continue;
                }
            }
        }
        if(courseExam.size()==1){
            CourseRemix courseRemix=new CourseRemix();
            courseRemix.setRemixId(KeyUtil.genUniqueKey());
            courseRemix.setTime(courseExam.get(0).getTime());
            courseRemix.setBeArranged(String.valueOf(CommonEnum.NOT_BE_ARRANGED.getCode()));
            courseRemix.setWeight(courseExam.get(0).getWeight());
            courseRemix.setRemixLimit(String.valueOf(courseDao.findById(courseExam.get(0).getCourseNo()).get().getLimit()));
            courseRemixDao.save(courseRemix);
            CourseRemixRecord courseRemixRecord=new CourseRemixRecord();
            courseRemixRecord.setRemixId(courseRemix.getRemixId());
            courseRemixRecord.setCourseId(courseExam.get(0).getCourseNo());
            courseRemixRecord.setTime(courseExam.get(0).getTime());
            courseRemixRecord.setBeArranged(String.valueOf(CommonEnum.NOT_BE_ARRANGED.getCode()));
            courseRemixRecordDao.save(courseRemixRecord);
            courseExam.remove(0);

        }


    }
}
