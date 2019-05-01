package com.sp.exam.controller;

import com.sp.exam.VO.ResultVO;
import com.sp.exam.constant.CookieConstant;
import com.sp.exam.constant.RedisConstant;
import com.sp.exam.dao.UserDao;
import com.sp.exam.dto.StudentScoreDTO;
import com.sp.exam.pojo.CourseSelect;
import com.sp.exam.service.TeacherAffairService;
import com.sp.exam.utils.CookieUtil;
import com.sp.exam.utils.ResultVOUtil;
import com.sp.exam.utils.UserTypeUtil;
import io.lettuce.core.output.MapOutput;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.persistence.Id;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/teacher")
public class StudentScoreManagementController {
    @Autowired
    private StringRedisTemplate redisTemplate;

    @Autowired
    private UserDao userDao;

    @Autowired
    private TeacherAffairService teacherAffairService;

    @GetMapping("/addStudentScore")
    public ModelAndView addStudentScore(Map<String,Object> map, HttpServletRequest request){
        Cookie cookie= CookieUtil.get(request, CookieConstant.TOKEN);
        String userId = redisTemplate.opsForValue().get(String.format(RedisConstant.TOKEN_PREFIX, cookie.getValue()));
        String teacherId = userDao.findById(userId).get().getUsername();
        List<StudentScoreDTO> studentByTeacher = teacherAffairService.findStudentByTeacher(teacherId);
        map.put("studentScores",studentByTeacher);
        map.put("userName",userDao.findById(userId).get().getNickname());
        map.put("userType", UserTypeUtil.userType(userDao.findById(userId).get().getUserType()));
        return new ModelAndView("teacher/addScore",map);
    }

    @PostMapping("/add")
    @ResponseBody
    public ResultVO add(@RequestParam(value = "courseSelectId")String id,
                        @RequestParam(value = "score")Double score){
        CourseSelect courseSelect = teacherAffairService.addScore(id, score);
        return ResultVOUtil.success();
    }
}
