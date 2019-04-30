package com.sp.exam.converter;

import com.sp.exam.dto.CourseAvailableDTO;
import com.sp.exam.pojo.CourseAvailable;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.BeanUtils;

import java.util.List;
import java.util.stream.Collectors;

@Slf4j
public class CourseAvailable2CourseAvailableDTO {
    public static CourseAvailableDTO converter(CourseAvailable courseAvailable){
        CourseAvailableDTO courseAvailableDTO=new CourseAvailableDTO();
        BeanUtils.copyProperties(courseAvailable,courseAvailableDTO);
        return courseAvailableDTO;
    }

    public static List<CourseAvailableDTO> converter(List<CourseAvailable> courseAvailableList){
        return courseAvailableList.stream().map(e->converter(e)).collect(Collectors.toList());
    }
}
