package com.zgkaii.sharding.entity;

import lombok.Data;

import java.util.Date;

/**
 * @Author: Mr.Z
 * @DateTime: 2021/05/14 23:54
 * @Description:
 **/
@Data
public class User {
    private Integer id;
    private String name;
    private String password;
    private String sex;
    private Date birthday;
}
