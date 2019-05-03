package com.sp.exam.controller;

import com.sp.exam.VO.ResultVO;
import com.sp.exam.constant.CookieConstant;
import com.sp.exam.constant.RedisConstant;
import com.sp.exam.converter.UserForm2UserConverter;
import com.sp.exam.dao.UserDao;
import com.sp.exam.enums.ResultEnum;
import com.sp.exam.exception.LoginException;
import com.sp.exam.form.ModifyUserForm;
import com.sp.exam.form.UserForm;
import com.sp.exam.pojo.User;
import com.sp.exam.service.UserService;
import com.sp.exam.utils.CookieUtil;
import com.sp.exam.utils.ResultVOUtil;
import com.sp.exam.utils.UserTypeUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.TimeUnit;


@Controller
@Slf4j
@RequestMapping("/user")
public class UserController {

    @Autowired
    private StringRedisTemplate redisTemplate;

    @Autowired
    private UserService userService;

    @Autowired
    private UserDao userDao;


    @PostMapping("/login")
    public ModelAndView login(@Valid UserForm userForm, BindingResult bindingResult,HttpServletResponse response){
        if(bindingResult.hasErrors()){
            log.error("【登录操作】登录失败");
            throw new LoginException(ResultEnum.ACCOUNT_WRONG.getCode(),
                    bindingResult.getFieldError().getDefaultMessage());
        }
        User result = userService.login(UserForm2UserConverter.converter(userForm));



        //设置token到redis
        String token= UUID.randomUUID().toString();
        Integer expire= RedisConstant.EXPIRE;
        redisTemplate.opsForValue().set(String.format(RedisConstant.TOKEN_PREFIX,token),result.getUserId(),expire, TimeUnit.SECONDS);

        //设置token至cookie
        CookieUtil.set(response, CookieConstant.TOKEN,token,expire);

        if(result.getUserType()==3){
            return new ModelAndView("user/adminHome");
        }
        if(result.getUserType()==2){
            return new ModelAndView("user/teacherHome");
        }
        if(result.getUserType()==1){
            return new ModelAndView("user/studentHome");
        }
        return null;

    }

    @GetMapping("/userInfo")
    public ModelAndView userInfo(Map<String,Object> map,HttpServletRequest request){
        Cookie cookie= CookieUtil.get(request, CookieConstant.TOKEN);
        String userID = redisTemplate.opsForValue().get(String.format(RedisConstant.TOKEN_PREFIX, cookie.getValue()));
        map.put("userNo",userDao.findById(userID).get().getUsername());
        map.put("userName",userDao.findById(userID).get().getNickname());
        map.put("userType", UserTypeUtil.userType(userDao.findById(userID).get().getUserType()));
        return new ModelAndView("user/userInfo",map);
    }

    @PostMapping("/modifyUser")
    @ResponseBody
    public ResultVO modifyUser(ModifyUserForm modifyUserForm,HttpServletRequest request){
        if(modifyUserForm.getNewPassword()==null||modifyUserForm.getOldPassword()==null||modifyUserForm.getRenewPassword()==null){
            return ResultVOUtil.success();
        }
        Cookie cookie= CookieUtil.get(request, CookieConstant.TOKEN);
        String userID = redisTemplate.opsForValue().get(String.format(RedisConstant.TOKEN_PREFIX, cookie.getValue()));
        modifyUserForm.setId(userID);
        return userService.modifyUser(modifyUserForm);
    }

}
