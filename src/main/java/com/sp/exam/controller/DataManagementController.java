package com.sp.exam.controller;

import com.sp.exam.VO.ResultVO;
import com.sp.exam.constant.CookieConstant;
import com.sp.exam.constant.RedisConstant;
import com.sp.exam.dao.UserDao;
import com.sp.exam.pojo.*;
import com.sp.exam.service.DataManagementService;
import com.sp.exam.utils.CookieUtil;
import com.sp.exam.utils.ResultVOUtil;
import com.sp.exam.utils.UserTypeUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/admin")
public class DataManagementController {
    @Autowired
    private StringRedisTemplate redisTemplate;

    @Autowired
    private UserDao userDao;

    @Autowired
    private DataManagementService dataManagementService;

    @GetMapping("/courseData")
    public ModelAndView courseData(Map<String,Object> map,
                                   HttpServletRequest request,
                                   @RequestParam(value="page",defaultValue = "1") Integer page,
                                   @RequestParam(value="size",defaultValue = "15") Integer size){
        Cookie cookie= CookieUtil.get(request, CookieConstant.TOKEN);
        String userID = redisTemplate.opsForValue().get(String.format(RedisConstant.TOKEN_PREFIX, cookie.getValue()));
        Pageable pageable= PageRequest.of(page-1,size);
        Page<Course> allCourse = dataManagementService.findAllCourse(pageable);
        List<Integer> limits = dataManagementService.getLimits();
        map.put("limits",limits);
        map.put("allCourse",allCourse);
        map.put("currentPage",page);
        map.put("size",size);
        map.put("userName",userDao.findById(userID).get().getNickname());
        map.put("userType", UserTypeUtil.userType(userDao.findById(userID).get().getUserType()));
        return new ModelAndView("dataManagement/courseData",map);
    }

    @GetMapping("/studentData")
    public ModelAndView studentData(Map<String,Object> map,
                                    HttpServletRequest request,
                                    @RequestParam(value="page",defaultValue = "1") Integer page,
                                    @RequestParam(value="size",defaultValue = "15") Integer size){
        Cookie cookie= CookieUtil.get(request, CookieConstant.TOKEN);
        String userID = redisTemplate.opsForValue().get(String.format(RedisConstant.TOKEN_PREFIX, cookie.getValue()));
        Pageable pageable= PageRequest.of(page-1,size);
        Page<Student> allStudent = dataManagementService.findAllStudent(pageable);
        List<String> institutions = dataManagementService.getInstitutions();
        map.put("institutions",institutions);
        map.put("allStudent",allStudent);
        map.put("currentPage",page);
        map.put("size",size);
        map.put("userName",userDao.findById(userID).get().getNickname());
        map.put("userType", UserTypeUtil.userType(userDao.findById(userID).get().getUserType()));
        return new ModelAndView("dataManagement/studentData",map);
    }

    @GetMapping("/teacherData")
    public ModelAndView teacherData(Map<String,Object> map,
                                    HttpServletRequest request,
                                    @RequestParam(value="page",defaultValue = "1") Integer page,
                                    @RequestParam(value="size",defaultValue = "15") Integer size){
        Cookie cookie= CookieUtil.get(request, CookieConstant.TOKEN);
        String userID = redisTemplate.opsForValue().get(String.format(RedisConstant.TOKEN_PREFIX, cookie.getValue()));
        Pageable pageable= PageRequest.of(page-1,size);
        Page<Teacher> allTeacher = dataManagementService.findAllTeacher(pageable);
        List<String> institutions = dataManagementService.getInstitutions();
        map.put("institutions",institutions);
        map.put("allTeacher",allTeacher);
        map.put("currentPage",page);
        map.put("size",size);
        map.put("userName",userDao.findById(userID).get().getNickname());
        map.put("userType", UserTypeUtil.userType(userDao.findById(userID).get().getUserType()));
        return new ModelAndView("dataManagement/teacherData",map);
    }

    @GetMapping("/examRoomData")
    public ModelAndView examRoomData(Map<String,Object> map,
                                     HttpServletRequest request,
                                     @RequestParam(value="page",defaultValue = "1") Integer page,
                                     @RequestParam(value="size",defaultValue = "15") Integer size){
        Cookie cookie= CookieUtil.get(request, CookieConstant.TOKEN);
        String userID = redisTemplate.opsForValue().get(String.format(RedisConstant.TOKEN_PREFIX, cookie.getValue()));
        Pageable pageable= PageRequest.of(page-1,size);
        Page<ExamRoom> allExamRoom = dataManagementService.findAllExamRoom(pageable);
        map.put("allExamRoom",allExamRoom);
        map.put("currentPage",page);
        map.put("size",size);
        map.put("userName",userDao.findById(userID).get().getNickname());
        map.put("userType", UserTypeUtil.userType(userDao.findById(userID).get().getUserType()));
        return new ModelAndView("dataManagement/examRoomData",map);
    }

    @PostMapping("/addCourse")
    @ResponseBody
    public ResultVO addCourse(Course course){
        if(course.getRemark()==null){
            course.setRemark("0");
        }
        dataManagementService.addCourse(course);
        return ResultVOUtil.success();
    }

    @PostMapping("/addStudent")
    @ResponseBody
    public ResultVO addStudent(Student student){

        dataManagementService.addStudent(student);
        return ResultVOUtil.success();
    }

    @PostMapping("/addTeacher")
    @ResponseBody
    public ResultVO addTeacher(Teacher teacher){

        dataManagementService.addTeacher(teacher);
        return ResultVOUtil.success();
    }

    @PostMapping("/addExamRoom")
    @ResponseBody
    public ResultVO addExamRoom(ExamRoom examRoom,String capacity1){
        Integer capacity=Integer.valueOf(capacity1);
        examRoom.setCapacity(capacity);
        dataManagementService.addExamRoom(examRoom);
        return ResultVOUtil.success();
    }

}
