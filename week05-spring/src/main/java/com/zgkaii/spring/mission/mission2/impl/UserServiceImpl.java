package com.zgkaii.spring.mission.mission2.impl;

import com.zgkaii.spring.mission.mission2.UserDao;
import com.zgkaii.spring.mission.mission2.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @Author: Mr.Z
 * @DateTime: 2021/04/17 22:06
 * @Description:
 **/
//@Service("userService")
@Service
public class UserServiceImpl implements UserService {

    // @Resource(name = "userDao")
    @Autowired
    private UserDao userDao;

    @Override
    public void add() {
        userDao.save();
        System.out.println("业务层的add()方法执行了");
    }
}
