package com.zgkaii.sharding;

import com.alibaba.druid.spring.boot.autoconfigure.DruidDataSourceAutoConfigure;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(exclude = {DruidDataSourceAutoConfigure.class})
@MapperScan(basePackages = "com.zgkaii.sharding.mapper")
public class Week07ShardingsphereApplication {

    public static void main(String[] args) {
        SpringApplication.run(Week07ShardingsphereApplication.class, args);
    }
}
