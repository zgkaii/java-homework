package com.zgkaii.spring.mission.mission2.impl;

import com.zgkaii.spring.mission.mission2.UserDao;
import org.springframework.stereotype.Repository;

/**
 * @Author: Mr.Z
 * @DateTime: 2021/04/17 22:04
 * @Description:
 **/
@Repository("userDao")
public class UserDaoImpl implements UserDao {
    @Override
    public void save() {
        System.out.println("数据访问层的save()方法执行了");
    }
}
