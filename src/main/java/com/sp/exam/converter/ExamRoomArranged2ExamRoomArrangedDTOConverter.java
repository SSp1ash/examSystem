package com.sp.exam.converter;

import com.sp.exam.dao.CourseDao;
import com.sp.exam.dao.CourseSelectResultDao;
import com.sp.exam.dao.TeacherDao;
import com.sp.exam.dto.ExamRoomArrangedDTO;
import com.sp.exam.pojo.ExamRoomArranged;
import com.sp.exam.utils.TimeDetailUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import java.util.Iterator;

@Component
public class ExamRoomArranged2ExamRoomArrangedDTOConverter {
    @Autowired
    private TeacherDao teacherDao;
    @Autowired
    private CourseDao courseDao;
    @Autowired
    private CourseSelectResultDao courseSelectResultDao;

    private static ExamRoomArranged2ExamRoomArrangedDTOConverter examRoomArranged2ExamRoomArrangedDTOConverter;

    @PostConstruct
    public void main(){
        examRoomArranged2ExamRoomArrangedDTOConverter=this;
        examRoomArranged2ExamRoomArrangedDTOConverter.teacherDao=this.teacherDao;
        examRoomArranged2ExamRoomArrangedDTOConverter.courseDao=this.courseDao;
        examRoomArranged2ExamRoomArrangedDTOConverter.courseSelectResultDao=this.courseSelectResultDao;
    }

    public static ExamRoomArrangedDTO converter(ExamRoomArranged examRoomArranged){

        Integer courseSelectResultId = examRoomArranged.getCourseSelectResultId();
        String courseNo = ExamRoomArranged2ExamRoomArrangedDTOConverter.examRoomArranged2ExamRoomArrangedDTOConverter.courseSelectResultDao.findById(courseSelectResultId).get().getCourseNo();
        String courseName = ExamRoomArranged2ExamRoomArrangedDTOConverter.examRoomArranged2ExamRoomArrangedDTOConverter.courseDao.findById(courseNo).get().getCourseName();
        ExamRoomArrangedDTO examRoomArrangedDTO=new ExamRoomArrangedDTO();
        examRoomArrangedDTO.setCourseName(courseName);
        examRoomArrangedDTO.setTimeDetail(TimeDetailUtil.TimeDetailTransform(examRoomArranged.getTimeDetail()));
        examRoomArrangedDTO.setRoomNo(examRoomArranged.getRoom());
        String teacherRemix = examRoomArranged.getTeacher();
        String[] teacherSplit = teacherRemix.split("\\+");
        //此处可能需要改进，有局限性
        String[] teachers=new String[2];
        int i=0;
        for(String string:teacherSplit){
            String tcName = ExamRoomArranged2ExamRoomArrangedDTOConverter.examRoomArranged2ExamRoomArrangedDTOConverter.teacherDao.findById(string).get().getTcName();
            teachers[i]=tcName;
            i++;
        }
        examRoomArrangedDTO.setTeacher(teachers);
        examRoomArrangedDTO.setTimeSemester(examRoomArranged.getTimeSemester());
        return examRoomArrangedDTO;
    }
}
