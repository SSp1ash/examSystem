package com.sp.exam.controller;

import com.sp.exam.VO.ResultVO;
import com.sp.exam.constant.CookieConstant;
import com.sp.exam.constant.RedisConstant;
import com.sp.exam.dao.ScoreAnalyseDao;
import com.sp.exam.dao.UserDao;
import com.sp.exam.pojo.ScoreAnalyse;
import com.sp.exam.service.ScoreAnalyseService;
import com.sp.exam.utils.CookieUtil;
import com.sp.exam.utils.ResultVOUtil;
import com.sp.exam.utils.UserTypeUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
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
@RequestMapping("/admin")
public class ScoreAnalyseController {

    @Autowired
    private StringRedisTemplate redisTemplate;

    @Autowired
    private ScoreAnalyseService scoreAnalyseService;

    @Autowired
    private UserDao userDao;

    @GetMapping("/createScoreAnalyse")
    @ResponseBody
    public ResultVO createScoreAnalyse(){
        scoreAnalyseService.getScoreAnalyse();
        return ResultVOUtil.success();
    }

    @GetMapping("/viewScoreAnalyse")
    public ModelAndView viewScoreAnalyse(Map<String,Object> map,
                                         HttpServletRequest request,
                                         @RequestParam(value="page",defaultValue = "1") Integer page,
                                         @RequestParam(value="size",defaultValue = "15") Integer size){
        Cookie cookie= CookieUtil.get(request, CookieConstant.TOKEN);
        String userID = redisTemplate.opsForValue().get(String.format(RedisConstant.TOKEN_PREFIX, cookie.getValue()));
        Pageable pageable= PageRequest.of(page-1,size);
        Page<ScoreAnalyse> scoreAnalyses = scoreAnalyseService.viewScoreAnalyse(pageable);
        map.put("scoreAnalyses",scoreAnalyses);
        map.put("currentPage",page);
        map.put("size",size);
        map.put("userName",userDao.findById(userID).get().getNickname());
        map.put("userType", UserTypeUtil.userType(userDao.findById(userID).get().getUserType()));
        return new ModelAndView("scoreAnalyse/viewScoreAnalyse",map);
    }

}
