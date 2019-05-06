package com.sp.exam.service.impl;

import com.sp.exam.converter.ExamRoomArranged2ExamRoomArrangedDTOConverter;
import com.sp.exam.dao.ExamRoomArrangedDao;
import com.sp.exam.dto.ExamRoomArrangedDTO;
import com.sp.exam.pojo.ExamRoomArranged;
import com.sp.exam.service.ArrangedDLCService;
import com.sp.exam.utils.GetSemester;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ArrangedDLCServiceImpl implements ArrangedDLCService {
    @Autowired
    private ExamRoomArrangedDao examRoomArrangedDao;

    @Override
    public Page<ExamRoomArrangedDTO> detailArrangedExam(Pageable pageable) {
        Page<ExamRoomArranged> examRoomArrangeds = examRoomArrangedDao.findByTimeSemester(pageable, GetSemester.get());
        List<ExamRoomArrangedDTO> examRoomArrangedDTOS=new ArrayList<>();
        for(ExamRoomArranged examRoomArranged:examRoomArrangeds.getContent()){
            ExamRoomArrangedDTO examRoomArrangedDTO = ExamRoomArranged2ExamRoomArrangedDTOConverter.converter(examRoomArranged);
            examRoomArrangedDTOS.add(examRoomArrangedDTO);
        }
        Page<ExamRoomArrangedDTO> examRoomArrangedDTOPage= new PageImpl<ExamRoomArrangedDTO>(examRoomArrangedDTOS,pageable,examRoomArrangeds.getTotalElements());
        return examRoomArrangedDTOPage;
    }
}
