package com.zgkaii.spring.mission.mission2;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

/**
 * @Author: Mr.Z
 * @DateTime: 2021/04/17 22:08
 * @Description:
 **/
@Controller("userController")
public class UserController {
//    @Resource(name = "userService")
    @Autowired
    private UserService userService;

    public void testFunc() {
        userService.add();
        System.out.println("控制层的testFunc()方法执行了");
    }
}
