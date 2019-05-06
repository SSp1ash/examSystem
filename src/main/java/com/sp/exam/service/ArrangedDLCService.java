package com.sp.exam.service;

import com.sp.exam.dto.ExamRoomArrangedDTO;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface ArrangedDLCService {
    Page<ExamRoomArrangedDTO> detailArrangedExam(Pageable pageable);
}
