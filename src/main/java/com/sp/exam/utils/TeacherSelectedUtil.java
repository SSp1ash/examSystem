package com.sp.exam.utils;

import com.sp.exam.dao.TeacherFrequencyDao;
import com.sp.exam.enums.ArrangedEnum;
import com.sp.exam.exception.ArrangedException;
import com.sp.exam.pojo.TeacherFrequency;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@Component
public class TeacherSelectedUtil {
    @Autowired
    private TeacherFrequencyDao teacherFrequencyDao;
    private static TeacherSelectedUtil teacherSelectedUtil;

    @PostConstruct
    public void init(){
        teacherSelectedUtil=this;
        teacherSelectedUtil.teacherFrequencyDao=this.teacherFrequencyDao;
    }


    public static List<TeacherFrequency> teacherSelected(int requireNum){
        List<TeacherFrequency> teachers = TeacherSelectedUtil.teacherSelectedUtil.teacherFrequencyDao.findAll();
        if(teachers.size()<requireNum){
            throw new ArrangedException(ArrangedEnum.LACK_OF_TEACHER);
        }
        int i=0;
        while(true){
            //每次获取当前频率的数量
            List<TeacherFrequency> thisFrequency=new ArrayList<>();
            List<TeacherFrequency> teacherSelected=new ArrayList<>();
            for(TeacherFrequency teacherFrequency:teachers){
                if(teacherFrequency.getFrequency()==i){
                    thisFrequency.add(teacherFrequency);
                }
            }
            //当前频率不够该如何处理
            if(thisFrequency.size()==0){
                i++;
                continue;
            }

            //当前频率数量低于需求数量
            if(thisFrequency.size()<requireNum){
                teacherSelected.addAll(thisFrequency);

                i++;

                int lackNum = requireNum - thisFrequency.size();
                List<TeacherFrequency> nextFrequency=new ArrayList<>();
                for(TeacherFrequency teacherFrequency:teachers){
                    if(teacherFrequency.getFrequency()==i){
                        nextFrequency.add(teacherFrequency);
                    }
                }
                Collections.shuffle(nextFrequency);
                teacherSelected.addAll(nextFrequency.subList(0,lackNum));
                //最后再来打乱一下
                Collections.shuffle(teacherSelected);

                //把选择到的老师频率加一
                for(TeacherFrequency tF:teacherSelected){
                    tF.setFrequency(tF.getFrequency()+1);
                    TeacherSelectedUtil.teacherSelectedUtil.teacherFrequencyDao.save(tF);
                }

                return teacherSelected;
            }

            //当前频率数量满足
            if(thisFrequency.size()>=requireNum){
                Collections.shuffle(thisFrequency);
                List<TeacherFrequency> selectedTeacher = thisFrequency.subList(0, requireNum);
                for(TeacherFrequency tF:selectedTeacher){
                    tF.setFrequency(tF.getFrequency()+1);
                    TeacherSelectedUtil.teacherSelectedUtil.teacherFrequencyDao.save(tF);
                }
                return selectedTeacher;

            }

        }

    }
}
