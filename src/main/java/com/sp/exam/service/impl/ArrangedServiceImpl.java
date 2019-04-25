package com.sp.exam.service.impl;

import com.sp.exam.dao.*;
import com.sp.exam.pojo.CourseExam;
import com.sp.exam.pojo.CourseRemix;
import com.sp.exam.pojo.CourseRemixRecord;
import com.sp.exam.pojo.TimeTable;
import com.sp.exam.service.ArrangedService;
import com.sp.exam.utils.GetSemester;
import com.sp.exam.utils.RemixCourseUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.stream.Collectors;

/**
     * @Description:把课程根据权重优先放入时间表里面
     * @author: SSp1ash
     * @Date:   2019/4/24
     */
@Service
public class ArrangedServiceImpl implements ArrangedService {
    @Autowired
    private TimeTableDao timeTableDao;

    @Autowired
    private CourseRemixDao courseRemixDao;

    @Autowired
    private CourseDao courseDao;

    @Autowired
    private CourseExamDao courseExamDao;

    @Autowired
    private CourseRemixRecordDao courseRemixRecordDao;

    /**
         * @Description:这个函数目前是排出学生一天最多考一堂课的函数，
         * 还有一些没有排到时间表上的课程，在自动排课课程中，接下来会进行尽量不在一个上午或者一个下午考试的安排方法，
         * 最后才是无条件地直接插入空位，如果位置还是不够，管理员可以考虑增加时间表，当前默认时间表是一周5天
         * @author: SSp1ash
         * @Date:   2019/4/24
         */
    @Override
    public void arrangedTimeTableByDay() {
        //1.取出需要拍的课程还有可用的时间
        List<CourseRemix> courseRemixes = courseRemixDao.findByTimeAndBeArrangedOrderByWeightDesc(GetSemester.get(), "0");
        List<TimeTable> timeTables = timeTableDao.findByBeArrangedAndTimeSemester("0",GetSemester.get());

        //2.给课程排考，排考有个原则，不要再一天内考多堂
        int flag=0;
        for(int i=0;i<courseRemixes.size();i++){
            for(int j=0;j<timeTables.size();j++){
                flag=0;
                CourseRemix courseRemix = courseRemixes.get(i);
                TimeTable timeTable = timeTables.get(j);
                //开始进行判断
                String dayTime = timeTable.getTimeDetail().substring(0, 2);
                List<TimeTable> nearbyTime = timeTableDao.findByTimeDetailLike(dayTime + "%");

                for(int x=0;x<nearbyTime.size();x++){
                    //把remix课程中设计到的课程号生成一个List
                    if(nearbyTime.get(x).getRemixId()!=null){
                    String remixLimit = courseRemixDao.findById(nearbyTime.get(x).getRemixId()).get().getRemixLimit();
                    //把remixLimit字符串分割开形成了String数组
                    String[] near=remixLimit.split("\\+");
                    String[] thisRemix=courseRemix.getRemixLimit().split("\\+");
                    //此处为了扩展remix更多课程时的操作

                    for(int q=0;q<near.length;q++){
                        for(int w=0;w<thisRemix.length;w++) {
                            if(RemixCourseUtil.contrastLimit(near[q],thisRemix[w])){
                                continue;
                            }else {
                                flag=1;
                                break;
                            }
                        }
                        if(flag==1){break;}
                    }

                    }
                    //这时候说明这天学生只会考一堂考试，可以直接把当前课程插入当前时间
                    if(flag==0&&x==nearbyTime.size()-1){
                        timeTable.setRemixId(courseRemix.getRemixId());
                        timeTable.setBeArranged("1");
                        timeTableDao.save(timeTable);
                        courseRemix.setBeArranged("1");
                        courseRemixDao.save(courseRemix);

                        List<CourseRemixRecord> byRemixId = courseRemixRecordDao.findByRemixId(courseRemix.getRemixId());
                        for(CourseRemixRecord courseRemixRecord:byRemixId){
                            courseRemixRecord.setBeArranged("1");
                            courseRemixRecordDao.save(courseRemixRecord);
                        }

                        List<String> courseList = byRemixId.stream().map(e -> e.getCourseId()).collect(Collectors.toList());

                        for(String courseNo:courseList){
                            CourseExam courseExam = courseExamDao.findById(courseNo).get();
                            courseExam.setBeArranged("1");
                            courseExamDao.save(courseExam);
                        }
                        //保存执行完毕
                        flag=2;
                        break;
                    }
                    //如果发现有一天考多门，就先考虑第二天的，这里先不做直接跳到下一天的操作
                    if(flag==1){
                        break;
                    }
                }
                if(flag==2){
                    timeTables.remove(j);
                    break;
                }
            }
        }
    }

    /**
         * @Description:排考时考虑为学生将不会在一个上午或者下午考多堂考试，这个方法最好是在ByDay执行完后再次执行此方法
         * @author: SSp1ash
         * @Date:   2019/4/24
         */
    @Override
    public void arrangedTimeTableByTimeSlot() {
        //1.取出需要拍的课程还有可用的时间
        List<CourseRemix> courseRemixes = courseRemixDao.findByTimeAndBeArrangedOrderByWeightDesc(GetSemester.get(), "0");
        List<TimeTable> timeTables = timeTableDao.findByBeArrangedAndTimeSemester("0",GetSemester.get());

        //2.给课程排考，此时考虑的是不在同一个上午或者下午
        int flag=0;
        for(int i=0;i<courseRemixes.size();i++){
            for(int j=0;j<timeTables.size();j++){
                flag=0;
                CourseRemix courseRemix = courseRemixes.get(i);
                TimeTable timeTable = timeTables.get(j);
                if(timeTable.getBeArranged().equals("1")){continue;}
                //开始进行判断
                String dayTime = timeTable.getTimeDetail().substring(0, 2);
                List<TimeTable> nearbyTime = timeTableDao.findByTimeDetailLikeAndTimeSlot(dayTime + "%",timeTable.getTimeSlot());
                TimeTable theNearTime=new TimeTable();
                for(TimeTable nearTime:nearbyTime){
                    if(!nearTime.getTimeDetail().equals(timeTable.getTimeDetail())){
                        theNearTime=nearTime;
                    }
                }
                //theNearTime就是同是上午或者下午的他的相邻的那堂考试
                //如果theNearTime没有被安排自然就可以吧当前考试插入当前时间
                if(theNearTime.getBeArranged().equals("0")){

                }else{

                    String remixLimit = courseRemixDao.findById(theNearTime.getRemixId()).get().getRemixLimit();
                    //把remixLimit字符串分割开形成了String数组
                    String[] near=remixLimit.split("\\+");
                    String[] thisRemix=courseRemix.getRemixLimit().split("\\+");

                    for(int q=0;q<near.length;q++){
                        for(int w=0;w<thisRemix.length;w++) {
                            if(RemixCourseUtil.contrastLimit(near[q],thisRemix[w])){
                                continue;
                            }else {
                                flag=10;
                                break;
                            }
                        }
                        if(flag==10){break;}
                    }

                }
                if(flag!=10){
                    timeTable.setRemixId(courseRemix.getRemixId());
                    timeTable.setBeArranged("1");
                    timeTableDao.save(timeTable);
                    courseRemix.setBeArranged("1");
                    courseRemixDao.save(courseRemix);

                    List<CourseRemixRecord> byRemixId = courseRemixRecordDao.findByRemixId(courseRemix.getRemixId());
                    for(CourseRemixRecord courseRemixRecord:byRemixId){
                        courseRemixRecord.setBeArranged("1");
                        courseRemixRecordDao.save(courseRemixRecord);
                    }

                    List<String> courseList = byRemixId.stream().map(e -> e.getCourseId()).collect(Collectors.toList());

                    for(String courseNo:courseList){
                        CourseExam courseExam = courseExamDao.findById(courseNo).get();
                        courseExam.setBeArranged("1");
                        courseExamDao.save(courseExam);
                    }
                    //保存执行完毕
                    break;
                }

            }
        }
    }


    /**
         * @Description:此方法是无视任何规则，只要有可以插入的时间就插入
         * @author: SSp1ash
         * @Date:   2019/4/25
         */
    @Override
    public void arrangedTimeTableByNoting() {
        //1.取出需要拍的课程还有可用的时间
        List<CourseRemix> courseRemixes = courseRemixDao.findByTimeAndBeArrangedOrderByWeightDesc(GetSemester.get(), "0");
        List<TimeTable> timeTables = timeTableDao.findByBeArrangedAndTimeSemester("0",GetSemester.get());
        for(int i=0;i<courseRemixes.size();i++){
            for(int j=0;j<timeTables.size();j++) {
                CourseRemix courseRemix = courseRemixes.get(i);
                TimeTable timeTable = timeTables.get(j);
                if(timeTable.getBeArranged().equals("1")){continue;}
                timeTable.setRemixId(courseRemix.getRemixId());
                timeTable.setBeArranged("1");
                timeTableDao.save(timeTable);
                courseRemix.setBeArranged("1");
                courseRemixDao.save(courseRemix);

                List<CourseRemixRecord> byRemixId = courseRemixRecordDao.findByRemixId(courseRemix.getRemixId());
                for(CourseRemixRecord courseRemixRecord:byRemixId){
                    courseRemixRecord.setBeArranged("1");
                    courseRemixRecordDao.save(courseRemixRecord);
                }

                List<String> courseList = byRemixId.stream().map(e -> e.getCourseId()).collect(Collectors.toList());

                for(String courseNo:courseList){
                    CourseExam courseExam = courseExamDao.findById(courseNo).get();
                    courseExam.setBeArranged("1");
                    courseExamDao.save(courseExam);
                }
                //保存执行完毕
                break;
            }
        }
    }
}

