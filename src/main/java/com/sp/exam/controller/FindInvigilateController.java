package com.sp.exam.controller;

import com.sp.exam.constant.CookieConstant;
import com.sp.exam.constant.RedisConstant;
import com.sp.exam.dao.UserDao;
import com.sp.exam.dto.TeacherInvigilateDTO;
import com.sp.exam.service.TeacherAffairService;
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
@RequestMapping("/teacher/")
public class FindInvigilateController {
    @Autowired
    private StringRedisTemplate redisTemplate;

    @Autowired
    private UserDao userDao;

    @Autowired
    private TeacherAffairService teacherAffairService;

    @GetMapping("/findInvigilate")
    public ModelAndView findInvigilate(Map<String,Object> map,HttpServletRequest request){
        Cookie cookie= CookieUtil.get(request, CookieConstant.TOKEN);
        String userId = redisTemplate.opsForValue().get(String.format(RedisConstant.TOKEN_PREFIX, cookie.getValue()));
        List<TeacherInvigilateDTO> invigilate = teacherAffairService.findInvigilate(userDao.findById(userId).get().getUsername());
        map.put("invigilates",invigilate);
        map.put("userName",userDao.findById(userId).get().getNickname());
        map.put("userType", UserTypeUtil.userType(userDao.findById(userId).get().getUserType()));
        return new ModelAndView("teacher/invigilate",map);
    }
}
