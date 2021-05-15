package com.zgkaii.sharding.controller;

import com.zgkaii.sharding.entity.User;
import com.zgkaii.sharding.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @Author: Mr.Z
 * @DateTime: 2021/05/13 15:57
 * @Description:
 **/
@RestController
@RequestMapping("/user")
public class StudentController {

    @Autowired
    UserMapper userMapper;

    @GetMapping("/query")
    public List<User> query() {
        return userMapper.query();
    }

    @GetMapping("/insert")
    public void insert(User user) {
        userMapper.insert(user);
    }
}
