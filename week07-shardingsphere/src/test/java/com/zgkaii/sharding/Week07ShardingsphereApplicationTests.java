package com.zgkaii.sharding;

import com.zgkaii.sharding.controller.StudentController;
import com.zgkaii.sharding.entity.User;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class Week07ShardingsphereApplicationTests {
    @Autowired
    StudentController studentController;

    @Test
    void writeAndRead() {
        System.out.println("===> 查询数据：" + studentController.query());

        User user = new User();
        user.setId(2);
        user.setName("李四");
        user.setPassword("12345678");
        user.setSex("女性");
        user.setBirthday(java.sql.Date.valueOf(java.time.LocalDate.now()));
        studentController.insert(user);

        System.out.println("===> 查询数据：" + studentController.query());
    }

}
