package com.zgkaii.sharding.mapper;

import com.zgkaii.sharding.entity.User;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * @Author: Mr.Z
 * @DateTime: 2021/05/13 15:56
 * @Description:
 **/
@Mapper
public interface UserMapper {
    /**
     * 获取全部数据
     */
    List<User> query();

    /**
     * 插入一条数据
     */
    void insert(User user);
}
