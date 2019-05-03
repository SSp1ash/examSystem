package com.sp.exam.service.impl;

import com.sp.exam.VO.ResultVO;
import com.sp.exam.dao.UserDao;
import com.sp.exam.enums.ResultEnum;
import com.sp.exam.exception.LoginException;
import com.sp.exam.form.ModifyUserForm;
import com.sp.exam.form.UserForm;
import com.sp.exam.pojo.User;
import com.sp.exam.service.UserService;
import com.sp.exam.utils.ResultVOUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;

    @Override
    public User login(User user) {
        User resultUser = userDao.findByUsernameAndPasswordAndUserType(user.getUsername(),user.getPassword(),user.getUserType());
        if(resultUser!=null){
            return resultUser;
        }else {
            throw new LoginException(ResultEnum.ACCOUNT_WRONG);
        }

    }

    @Override
    public ResultVO modifyUser(ModifyUserForm modifyUserForm) {
        if(userDao.existsByUserIdAndPassword(modifyUserForm.getId(),modifyUserForm.getOldPassword())){
            if(modifyUserForm.getNewPassword().equals(modifyUserForm.getRenewPassword())){
                User user = userDao.findById(modifyUserForm.getId()).get();
                user.setPassword(modifyUserForm.getNewPassword());
                userDao.save(user);
                return ResultVOUtil.success();
            }
            else {
                return ResultVOUtil.error(-1,"两次输入的密码不一致");
            }
        }else {
            return ResultVOUtil.error(-100,"密码错误");
        }
    }
}
