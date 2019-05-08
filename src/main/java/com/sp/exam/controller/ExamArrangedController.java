package com.sp.exam.controller;

import com.sp.exam.VO.ResultVO;
import com.sp.exam.constant.CookieConstant;
import com.sp.exam.constant.RedisConstant;
import com.sp.exam.dao.*;
import com.sp.exam.dto.CourseDemandDTO;
import com.sp.exam.dto.CourseExamDTO;
import com.sp.exam.dto.CourseRemixRecordDTO;
import com.sp.exam.dto.ExamRoomArrangedDTO;
import com.sp.exam.pojo.*;
import com.sp.exam.service.*;
import com.sp.exam.utils.CookieUtil;
import com.sp.exam.utils.ResultVOUtil;
import com.sp.exam.utils.UserTypeUtil;
import lombok.extern.slf4j.Slf4j;
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
import java.util.Enumeration;
import java.util.List;
import java.util.Map;

@Controller
@Slf4j
@RequestMapping("/admin/examArranged")
public class ExamArrangedController {
    @Autowired
    private ArrangedCourseService arrangedCourseService;

    @Autowired
    private ArrangedExamRoomService arrangedExamRoomService;

    @Autowired
    private ArrangedStuSitService arrangedStuSitService;

    @Autowired
    private CourseExamService courseExamService;

    @Autowired
    private RemixCourseService remixCourseService;

    @Autowired
    private StringRedisTemplate redisTemplate;

    @Autowired
    private UserDao userDao;

    @Autowired
    private ArrangedDLCService arrangedDLCService;

    @Autowired
    private CourseExamDao courseExamDao;

    @Autowired
    private TeacherDao teacherDao;

    @Autowired
    private ExamRoomDao examRoomDao;



    @GetMapping("/confirmExamCourse")
    @ResponseBody
    public ResultVO confirmExamCourse(){
        List<String> exam = courseExamService.getExam();
        remixCourseService.autoRemix();

        return ResultVOUtil.success();
    }

    //这种方式不会去remix课程，但是还是会吧公共课先去掉
    @GetMapping("/confirmExamCourse2")
    @ResponseBody
    public ResultVO confirmExamCourse2(){
        List<String> exam = courseExamService.getExam();
        remixCourseService.manualPreRemix();
        return ResultVOUtil.success();
    }

    @GetMapping("/autoArranged")
    public ModelAndView autoArranged(Map<String,Object> map,
                                     @RequestParam(value = "week",defaultValue = "1")String week,
                                     HttpServletRequest request){
       // List<TimeTable> timeTables = arrangedCourseService.timeTableStatus(week);
        List<TimeTable> timeTables1 = arrangedCourseService.timeTablePoint(week, "1");
        List<TimeTable> timeTables2 = arrangedCourseService.timeTablePoint(week, "2");
        List<TimeTable> timeTables3 = arrangedCourseService.timeTablePoint(week, "3");
        List<TimeTable> timeTables4 = arrangedCourseService.timeTablePoint(week, "4");
        List<CourseExam> courseExams=arrangedCourseService.courseExamStatus();
        List<CourseExam> courseExamShows=courseExamService.showCourseExam();
        map.put("timetables1",timeTables1);
        map.put("timetables2",timeTables2);
        map.put("timetables3",timeTables3);
        map.put("timetables4",timeTables4);
        map.put("courseExams",courseExams);
        map.put("courseExamShows",courseExamShows);
        Cookie cookie= CookieUtil.get(request, CookieConstant.TOKEN);
        String userID = redisTemplate.opsForValue().get(String.format(RedisConstant.TOKEN_PREFIX, cookie.getValue()));
        map.put("userName",userDao.findById(userID).get().getNickname());
        map.put("userType", UserTypeUtil.userType(userDao.findById(userID).get().getUserType()));
        return new ModelAndView("examArranged/autoExamArranged",map);
    }


    @GetMapping("/manualArranged")
    public ModelAndView manualArranged(Map<String,Object> map,
                                     @RequestParam(value = "week",defaultValue = "1")String week,
                                     HttpServletRequest request){
        List<TimeTable> timeTables1 = arrangedCourseService.timeTablePoint(week, "1");
        List<TimeTable> timeTables2 = arrangedCourseService.timeTablePoint(week, "2");
        List<TimeTable> timeTables3 = arrangedCourseService.timeTablePoint(week, "3");
        List<TimeTable> timeTables4 = arrangedCourseService.timeTablePoint(week, "4");

        List<TimeTable> timeTables = arrangedExamRoomService.getBeArrangedTimeTable();
        map.put("timeTables",timeTables);

        List<Teacher> teacherList = teacherDao.findAll();
        List<ExamRoom> examRoomList = examRoomDao.findAll();
        map.put("teacherList",teacherList);
        map.put("examRoomList",examRoomList);

        List<CourseExam> courseExams=arrangedCourseService.courseExamStatus();
        List<CourseExam> courseExamShows=courseExamService.showCourseExam();
        List<CourseExamDTO> courseExamNotRemixes=arrangedCourseService.courseExamNotRemix();
        List<CourseRemix> courseRemixes = remixCourseService.selectAvailable();
        List<CourseRemixRecordDTO> allCourseRemixRecord = remixCourseService.getAllCourseRemix();
        map.put("timetables1",timeTables1);
        map.put("timetables2",timeTables2);
        map.put("timetables3",timeTables3);
        map.put("timetables4",timeTables4);
        map.put("courseExams",courseExams);
        map.put("courseExamShows",courseExamShows);
        map.put("courseExamNotRemixes",courseExamNotRemixes);
        map.put("courseRemixes",courseRemixes);
        map.put("allCourseRemixRecord",allCourseRemixRecord);
        Cookie cookie= CookieUtil.get(request, CookieConstant.TOKEN);
        String userID = redisTemplate.opsForValue().get(String.format(RedisConstant.TOKEN_PREFIX, cookie.getValue()));
        map.put("userName",userDao.findById(userID).get().getNickname());
        map.put("userType", UserTypeUtil.userType(userDao.findById(userID).get().getUserType()));
        return new ModelAndView("examArranged/manualExamArranged",map);
    }

    @GetMapping("/auto1")
    @ResponseBody
    public ResultVO auto1(){
        arrangedCourseService.arrangedTimeTableByDay();
        return ResultVOUtil.success();
    }

    @GetMapping("/auto2")
    @ResponseBody
    public ResultVO auto2(){
        arrangedCourseService.arrangedTimeTableByTimeSlot();
        return ResultVOUtil.success();
    }

    @GetMapping("/auto3")
    @ResponseBody
    public ResultVO auto3(){
        arrangedCourseService.arrangedTimeTableByNoting();
        return ResultVOUtil.success();
    }

    @GetMapping("/last")
    @ResponseBody
    public ResultVO last(){
        arrangedExamRoomService.arrangedExamRoom();
        arrangedStuSitService.arrangedStuSit();
        return ResultVOUtil.success();
    }

    @GetMapping("/detailArrangedExam")
    public ModelAndView detailArrangedExam(Map<String,Object> map,
                                           HttpServletRequest request,
                                           @RequestParam(value="page",defaultValue = "1") Integer page,
                                           @RequestParam(value="size",defaultValue = "15") Integer size){
        Cookie cookie= CookieUtil.get(request, CookieConstant.TOKEN);
        String userID = redisTemplate.opsForValue().get(String.format(RedisConstant.TOKEN_PREFIX, cookie.getValue()));
        Pageable pageable= PageRequest.of(page-1,size);
        Page<ExamRoomArrangedDTO> examRoomArrangedDTOS = arrangedDLCService.detailArrangedExam(pageable);
        map.put("examRoomArrangedDTOS",examRoomArrangedDTOS);
        map.put("currentPage",page);
        map.put("size",size);
        map.put("userName",userDao.findById(userID).get().getNickname());
        map.put("userType", UserTypeUtil.userType(userDao.findById(userID).get().getUserType()));
        return new ModelAndView("examArranged/examDetailArranged",map);

    }

    @PostMapping("/remixCourse")
    @ResponseBody
    public ResultVO remixCourse(String courseA,String courseB){
        CourseExam courseExamA = courseExamDao.findById(courseA).get();
        CourseExam courseExamB = courseExamDao.findById(courseB).get();
        ResultVO resultVO = remixCourseService.manualRemix(courseExamA, courseExamB);
        System.out.println(resultVO);
        return resultVO;
    }

    @PostMapping("/arrangedRemixCourse")
    @ResponseBody
    public ResultVO arrangedRemixCourse(String timeDetail, String remixCourseId){
        arrangedCourseService.manualArrangedTimeTable(timeDetail,remixCourseId);
        return ResultVOUtil.success();
    }

    @GetMapping("/getTeacherNumExamRoomNum")
    @ResponseBody
    public ResultVO getTeacherNumExamRoomNum(String timeDetail){

        List<CourseDemandDTO> teacherNumAndRoomNum = arrangedExamRoomService.getTeacherNumAndRoomNum(timeDetail);
        return  ResultVOUtil.success(teacherNumAndRoomNum);


    }

    @PostMapping("/arrangedTeacherAndRoom")
    @ResponseBody
    public ResultVO arrangedTeacherAndRoom(String selectTimeDetail,String teacherA,String roomA,String teacherB,String roomB){
        if(teacherA.equals(null)||roomA.equals("")){
            return ResultVOUtil.error(001,"你没有传值进来");
        }
        ResultVO resultVO = arrangedExamRoomService.manualArrangedTeacherAndExamRoom(selectTimeDetail, teacherA, roomA, teacherB, roomB);

        return resultVO;
    }

    @GetMapping("/stuSit")
    @ResponseBody
    public ResultVO stuSit(){
        arrangedStuSitService.arrangedStuSit();
        return ResultVOUtil.success();
    }
}
