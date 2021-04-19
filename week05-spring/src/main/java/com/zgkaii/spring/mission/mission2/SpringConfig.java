package com.zgkaii.spring.mission.mission2;

import com.zgkaii.spring.mission.mission2.impl.UserDaoImpl;
import com.zgkaii.spring.mission.mission2.impl.UserServiceImpl;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * @Author: Mr.Z
 * @DateTime: 2021/04/19 10:21
 * @Description:
 */
@Configuration
public class SpringConfig {

    @Bean
    public UserService userService() {
        return new UserServiceImpl();
    }

    @Bean
    public UserDao userDao() {
        return new UserDaoImpl();
    }

    @Bean
    public UserController userController() {
        return new UserController();
    }
}
