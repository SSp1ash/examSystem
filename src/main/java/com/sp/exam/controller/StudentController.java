package com.sp.exam.controller;

import com.sp.exam.constant.CookieConstant;
import com.sp.exam.constant.RedisConstant;
import com.sp.exam.dao.UserDao;
import com.sp.exam.dto.CourseSelectDTO;
import com.sp.exam.dto.StuExamDetailDTO;
import com.sp.exam.pojo.StuExamDetail;
import com.sp.exam.service.StudentService;
import com.sp.exam.utils.CookieUtil;
import com.sp.exam.utils.UserTypeUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;


@Controller
@RequestMapping("/student")
public class StudentController {
    @Autowired
    private StringRedisTemplate redisTemplate;

    @Autowired
    private UserDao userDao;

    @Autowired
    private StudentService studentService;

    @GetMapping("/examStatus")
    public ModelAndView examStatus(Map<String,Object> map, HttpServletRequest request){
        Cookie cookie= CookieUtil.get(request, CookieConstant.TOKEN);
        String userId = redisTemplate.opsForValue().get(String.format(RedisConstant.TOKEN_PREFIX, cookie.getValue()));
        String stuNo = userDao.findById(userId).get().getUsername();
        List<StuExamDetailDTO> stuExamDetailDTOs = studentService.stuExamDetail(stuNo);
        map.put("userName",userDao.findById(userId).get().getNickname());
        map.put("userType", UserTypeUtil.userType(userDao.findById(userId).get().getUserType()));
        map.put("stuExamDetails",stuExamDetailDTOs);
        return new ModelAndView("student/examDetail",map);
    }

    @GetMapping("/examScore")
    public ModelAndView examScore(Map<String,Object> map, HttpServletRequest request){
        Cookie cookie= CookieUtil.get(request, CookieConstant.TOKEN);
        String userId = redisTemplate.opsForValue().get(String.format(RedisConstant.TOKEN_PREFIX, cookie.getValue()));
        String stuNo = userDao.findById(userId).get().getUsername();
        List<CourseSelectDTO> courseSelectDTOS = studentService.stuExamScore(stuNo);
        map.put("userName",userDao.findById(userId).get().getNickname());
        map.put("userType", UserTypeUtil.userType(userDao.findById(userId).get().getUserType()));
        map.put("courseSelectDTOS",courseSelectDTOS);
        return new ModelAndView("student/examScore",map);

    }
}
