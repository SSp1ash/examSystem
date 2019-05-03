package com.sp.exam.service;

import com.sp.exam.VO.ResultVO;
import com.sp.exam.form.ModifyUserForm;
import com.sp.exam.pojo.User;

public interface UserService {
    //用户登录
    User login(User user);

    ResultVO modifyUser(ModifyUserForm modifyUserForm);


}
