package com.sp.exam.controller;

import com.sp.exam.VO.ResultVO;
import com.sp.exam.constant.CookieConstant;
import com.sp.exam.constant.RedisConstant;
import com.sp.exam.dao.UserDao;
import com.sp.exam.dto.CourseAvailableDTO;
import com.sp.exam.pojo.CourseAvailable;
import com.sp.exam.service.SelectCourseResultService;
import com.sp.exam.service.SelectCourseService;
import com.sp.exam.service.UserService;
import com.sp.exam.utils.CookieUtil;
import com.sp.exam.utils.ResultVOUtil;
import com.sp.exam.utils.UserTypeUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import java.util.Map;

@Controller
@Slf4j
@RequestMapping("/admin/selectCourse")
public class SelectCourseController {
    @Autowired
    private SelectCourseService selectCourseService;

    @Autowired
    private SelectCourseResultService selectCourseResultService;

    @Autowired
    private StringRedisTemplate redisTemplate;

    @Autowired
    private UserDao userDao;

    @GetMapping("/autoSelectSite")
    public ModelAndView show(Map<String,Object> map,HttpServletRequest request){
        Cookie cookie= CookieUtil.get(request, CookieConstant.TOKEN);
        String userID = redisTemplate.opsForValue().get(String.format(RedisConstant.TOKEN_PREFIX, cookie.getValue()));
        map.put("userName",userDao.findById(userID).get().getNickname());
        map.put("userType", UserTypeUtil.userType(userDao.findById(userID).get().getUserType()));

        return new ModelAndView("selectCourse/autoSelect",map);
    }

    @GetMapping("/auto")
    @ResponseBody
    public String auto(){
        selectCourseService.autoSelectCourse();
        log.info("选课成功");
        return "Success";
    }

    @GetMapping("/confirmSelectCourse")
    public ModelAndView confirmSelectCourse(@RequestParam(value="page",defaultValue = "1") Integer page,
                                            @RequestParam(value="size",defaultValue = "15") Integer size,
                                            Map<String,Object> map,
                                            HttpServletRequest request){
        PageRequest pageRequest=PageRequest.of(page-1,size);
        Page<CourseAvailableDTO> courseAvailableStatusPage = selectCourseService.getCourseAvailableStatus(pageRequest);
        Cookie cookie= CookieUtil.get(request, CookieConstant.TOKEN);
        String userID = redisTemplate.opsForValue().get(String.format(RedisConstant.TOKEN_PREFIX, cookie.getValue()));
        map.put("userName",userDao.findById(userID).get().getNickname());
        map.put("userType", UserTypeUtil.userType(userDao.findById(userID).get().getUserType()));
        map.put("courseAvailableStatusPage",courseAvailableStatusPage);
        map.put("currentPage",page);
        map.put("size",size);
        return new ModelAndView("selectCourse/confirmSelectCourse",map);
    }

    @GetMapping("/confirmSelectCourse/confirm")
    public ResultVO confirmChoose(){
        selectCourseResultService.summary();
        return ResultVOUtil.success();
    }
}
