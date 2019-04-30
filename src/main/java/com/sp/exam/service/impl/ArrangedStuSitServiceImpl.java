package com.sp.exam.service.impl;

import com.sp.exam.dao.CourseSelectDao;
import com.sp.exam.dao.CourseSelectResultDao;
import com.sp.exam.dao.ExamRoomArrangedDao;
import com.sp.exam.dao.StuExamDetailDao;
import com.sp.exam.pojo.CourseSelect;
import com.sp.exam.pojo.CourseSelectResult;
import com.sp.exam.pojo.ExamRoomArranged;
import com.sp.exam.pojo.StuExamDetail;
import com.sp.exam.service.ArrangedStuSitService;
import com.sp.exam.utils.GetSemester;
import com.sp.exam.utils.TimeDetailUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

@Service
public class ArrangedStuSitServiceImpl implements ArrangedStuSitService {
    @Autowired
    private StuExamDetailDao stuExamDetailDao;

    @Autowired
    private ExamRoomArrangedDao examRoomArrangedDao;

    @Autowired
    private CourseSelectDao courseSelectDao;

    @Autowired
    private CourseSelectResultDao courseSelectResultDao;

    @Override
    public void arrangedStuSit() {
        //讲考试安排表遍历
        List<ExamRoomArranged> examRoomArrangeds = examRoomArrangedDao.findByTimeSemester(GetSemester.get());
        for(ExamRoomArranged examRoomArranged:examRoomArrangeds){
            CourseSelectResult courseSelectResult = courseSelectResultDao.findById(examRoomArranged.getCourseSelectResultId()).get();
            List<CourseSelect> students = courseSelectDao.findByCourseNoAndSelectTcAndTime(courseSelectResult.getCourseNo(), courseSelectResult.getTcNo(), GetSemester.get());
            //初始化考号
            List<Integer> examNo=new ArrayList<>();
            for(int i=0;i<students.size();i++){
                examNo.add(i+1);
            }
            Collections.shuffle(examNo);
            Iterator<Integer> it=examNo.iterator();
            for(CourseSelect courseSelect:students){
                StuExamDetail stuExamDetail=new StuExamDetail();
                stuExamDetail.setCourseNo(courseSelect.getCourseNo());
                stuExamDetail.setExamRoom(examRoomArranged.getRoom());
                stuExamDetail.setStuNo(courseSelect.getStuNo());
                stuExamDetail.setTimeDetail(TimeDetailUtil.TimeDetailTransform(examRoomArranged.getTimeDetail()));
                stuExamDetail.setSitNo(it.next());

                stuExamDetailDao.save(stuExamDetail);
            }

        }

    }
}
