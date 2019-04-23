package com.sp.exam.controller;

import com.sp.exam.service.SelectCourseService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@Slf4j
@RequestMapping("/selectCourse")
public class SelectCourseController {
    @Autowired
    private SelectCourseService selectCourseService;

    @GetMapping("/show")
    public ModelAndView show(){
        return new ModelAndView("selectCourse/autoSelect");
    }

    @GetMapping("/auto")
    @ResponseBody
    public String auto(){
        selectCourseService.autoSelectCourse();
        log.info("选课成功");
        return "Success";
    }
}
