package com.sp.exam.service.impl;

import com.sp.exam.dao.CourseSelectDao;
import com.sp.exam.dao.ScoreAnalyseDao;
import com.sp.exam.dao.TeacherDao;
import com.sp.exam.pojo.CourseSelect;
import com.sp.exam.pojo.ScoreAnalyse;
import com.sp.exam.service.ScoreAnalyseService;
import com.sp.exam.utils.GetSemester;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.text.DecimalFormat;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class ScoreAnalyseServiceImpl implements ScoreAnalyseService {
    @Autowired
    private CourseSelectDao courseSelectDao;

    @Autowired
    private ScoreAnalyseDao scoreAnalyseDao;

    @Autowired
    private TeacherDao teacherDao;


    /**
         * @Description:创建成绩分析统计表
         * @author: SSp1ash
         * @Date:   2019/5/7
         */
    @Override
    public void getScoreAnalyse() {
        DecimalFormat df=new DecimalFormat("0.00");
        List<CourseSelect> courseSelects = courseSelectDao.findByTime(GetSemester.get());
        List<String> teacherList = courseSelects.stream().map(e -> e.getSelectTc()).distinct().collect(Collectors.toList());
        int failNum=0;
        int stuNum=0;
        double scoreSum=0;
        for(String tcNo:teacherList){
            failNum=0;
            stuNum=0;
            scoreSum=0;
            ScoreAnalyse scoreAnalyse=new ScoreAnalyse();
            for(CourseSelect courseSelect:courseSelects){
                if(courseSelect.getSelectTc().equals(tcNo)){
                    stuNum++;
                    Double score;
                    if(courseSelect.getScore()==null){
                        score=0.00;
                    }else score=courseSelect.getScore();
                    scoreSum+=score;
                    if(score<60){
                        failNum++;
                    }
                }
            }
            scoreAnalyse.setTcNo(tcNo);
            scoreAnalyse.setTcName(teacherDao.findById(tcNo).get().getTcName());
            scoreAnalyse.setStuNum(stuNum);
            scoreAnalyse.setFailNum(failNum);
            scoreAnalyse.setFailRate(df.format(((double)failNum/stuNum)*100)+"%");
            scoreAnalyse.setScoreAvg(Double.valueOf(df.format((double)scoreSum/stuNum)));
            scoreAnalyse.setTimeSemester(GetSemester.get());

            ScoreAnalyse test = scoreAnalyseDao.findByTcNoAndTimeSemester(tcNo, GetSemester.get());
            if(test!=null)
                scoreAnalyse.setId(test.getId());
            scoreAnalyseDao.save(scoreAnalyse);
        }
    }

    @Override
    public Page<ScoreAnalyse> viewScoreAnalyse(Pageable pageable) {
        Page<ScoreAnalyse> scoreAnalyses = scoreAnalyseDao.findByTimeSemester(pageable, GetSemester.get());
        return scoreAnalyses;
    }
}
