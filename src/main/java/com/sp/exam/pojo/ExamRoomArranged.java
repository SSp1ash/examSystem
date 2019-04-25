package com.sp.exam.pojo;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
@Data
public class ExamRoomArranged {
    @Id
    private Integer courseSelectResultId;

    private String timeDetail;

    private String room;

    private String timeSemester;
}
