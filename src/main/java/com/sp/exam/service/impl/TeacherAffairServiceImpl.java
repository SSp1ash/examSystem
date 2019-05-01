package com.sp.exam.service.impl;

import com.sp.exam.dao.*;
import com.sp.exam.dto.StudentScoreDTO;
import com.sp.exam.dto.TeacherInvigilateDTO;
import com.sp.exam.pojo.CourseSelect;
import com.sp.exam.pojo.ExamRoomArranged;
import com.sp.exam.service.TeacherAffairService;
import com.sp.exam.utils.GetSemester;
import com.sp.exam.utils.TeacherNameUtil;
import com.sp.exam.utils.TimeDetailUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class TeacherAffairServiceImpl implements TeacherAffairService {
    @Autowired
    private ExamRoomArrangedDao examRoomArrangedDao;

    @Autowired
    private CourseSelectResultDao courseSelectResultDao;

    @Autowired
    private CourseDao courseDao;

    @Autowired
    private CourseSelectDao courseSelectDao;

    @Autowired
    private StudentDao studentDao;

    @Override
    public List<TeacherInvigilateDTO> findInvigilate(String teacherId) {
        List<ExamRoomArranged> examRoomArrangeds = examRoomArrangedDao.findByTeacherLikeAndTimeSemester("%" + teacherId + "%", GetSemester.get());
        //遍历有关这个老师的考试的List
        List<TeacherInvigilateDTO> invigilateDTOList=new ArrayList<>();
        for(ExamRoomArranged examRoomArranged:examRoomArrangeds){
            TeacherInvigilateDTO teacherInvigilateDTO=new TeacherInvigilateDTO();
            teacherInvigilateDTO.setRoomNo(examRoomArranged.getRoom());
            teacherInvigilateDTO.setTimeDetail(TimeDetailUtil.TimeDetailTransform(examRoomArranged.getTimeDetail()));
            teacherInvigilateDTO.setCourseName(courseDao.findById(courseSelectResultDao.findById(examRoomArranged.getCourseSelectResultId()).get().getCourseNo()).get().getCourseName());
            teacherInvigilateDTO.setTimeSemester(examRoomArranged.getTimeSemester());
            teacherInvigilateDTO.setTeacherName(TeacherNameUtil.getTeacherName(examRoomArranged.getTeacher()));
            invigilateDTOList.add(teacherInvigilateDTO);
        }
        return invigilateDTOList;
    }

    @Override
    public List<StudentScoreDTO> findStudentByTeacher(String teacherId) {
        List<CourseSelect> courseSelects = courseSelectDao.findBySelectTc(teacherId);
        List<StudentScoreDTO> studentScoreDTOList=new ArrayList<>();
        for(CourseSelect courseSelect:courseSelects){
            StudentScoreDTO studentScoreDTO=new StudentScoreDTO();
            studentScoreDTO.setCourseName(courseDao.findById(courseSelect.getCourseNo()).get().getCourseName());
            studentScoreDTO.setCourseNo(courseSelect.getCourseNo());
            studentScoreDTO.setStuName(studentDao.findById(courseSelect.getStuNo()).get().getStuName());
            studentScoreDTO.setStuNo(courseSelect.getStuNo());
            studentScoreDTO.setTimeSemester(courseSelect.getTime());
            studentScoreDTO.setScore(courseSelect.getScore());
            studentScoreDTO.setId(courseSelect.getId());
            studentScoreDTOList.add(studentScoreDTO);
        }
        return studentScoreDTOList;
    }

    @Override
    public CourseSelect addScore(String id, Double score) {
        CourseSelect courseSelect = courseSelectDao.findById(Integer.valueOf(id)).get();
        courseSelect.setScore(score);
        courseSelectDao.save(courseSelect);
        return courseSelect;
    }
}
