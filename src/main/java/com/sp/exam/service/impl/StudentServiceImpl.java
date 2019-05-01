package com.sp.exam.service.impl;

import com.sp.exam.dao.CourseDao;
import com.sp.exam.dao.CourseSelectDao;
import com.sp.exam.dao.StuExamDetailDao;
import com.sp.exam.dto.CourseSelectDTO;
import com.sp.exam.dto.StuExamDetailDTO;
import com.sp.exam.pojo.CourseSelect;
import com.sp.exam.pojo.StuExamDetail;
import com.sp.exam.service.StudentService;
import com.sp.exam.utils.GetSemester;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class StudentServiceImpl implements StudentService {
    @Autowired
    private StuExamDetailDao stuExamDetailDao;

    @Autowired
    private CourseDao courseDao;

    @Autowired
    private CourseSelectDao courseSelectDao;

    @Override
    public List<StuExamDetailDTO> stuExamDetail(String stuNo) {
        List<StuExamDetail> stuExamDetails = stuExamDetailDao.findByStuNo(stuNo);
        List<StuExamDetailDTO> stuExamDetailDTOS=new ArrayList<>();
        for(StuExamDetail stuExamDetail:stuExamDetails){
            StuExamDetailDTO stuExamDetailDTO=new StuExamDetailDTO();
            stuExamDetailDTO.setCourseNo(stuExamDetail.getCourseNo());
            stuExamDetailDTO.setCourseName(courseDao.findById(stuExamDetail.getCourseNo()).get().getCourseName());
            stuExamDetailDTO.setTimeDetail(stuExamDetail.getTimeDetail());
            stuExamDetailDTO.setExamRoom(stuExamDetail.getExamRoom());
            stuExamDetailDTO.setSitNo(stuExamDetail.getSitNo());
            stuExamDetailDTO.setTimeSemester(GetSemester.get());
            stuExamDetailDTOS.add(stuExamDetailDTO);
        }
        return stuExamDetailDTOS;
    }

    @Override
    public List<CourseSelectDTO> stuExamScore(String stuNo) {
        List<CourseSelect> courseSelectList = courseSelectDao.findByStuNo(stuNo);
        List<CourseSelectDTO> courseSelectDTOS=new ArrayList<>();
        for(CourseSelect courseSelect:courseSelectList){
            CourseSelectDTO courseSelectDTO=new CourseSelectDTO();
            courseSelectDTO.setCourseNo(courseSelect.getCourseNo());
            courseSelectDTO.setCourseName(courseDao.findById(courseSelect.getCourseNo()).get().getCourseName());
            courseSelectDTO.setScore(courseSelect.getScore());
            courseSelectDTO.setTimeSemester(courseSelect.getTime());
            courseSelectDTOS.add(courseSelectDTO);
        }
        return courseSelectDTOS;
    }
}
