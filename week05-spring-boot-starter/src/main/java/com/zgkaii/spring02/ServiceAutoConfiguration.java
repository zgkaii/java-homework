package com.zgkaii.spring02;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.condition.ConditionalOnClass;
import org.springframework.boot.autoconfigure.condition.ConditionalOnMissingBean;
import org.springframework.boot.autoconfigure.condition.ConditionalOnProperty;
import org.springframework.boot.autoconfigure.condition.ConditionalOnWebApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * @Author: Mr.Z
 * @DateTime: 2021/04/20 10:24
 * @Description: 自动配置类
 */
@Configuration
@ConditionalOnWebApplication
@ConditionalOnClass(MessageService.class)
@EnableConfigurationProperties(School.class)
public class ServiceAutoConfiguration {
    @Autowired
    private School school;

    @Bean
    @ConditionalOnMissingBean(MessageService.class)
    @ConditionalOnProperty(prefix = "school", value = "enabled", havingValue = "true")
    public MessageService demoService() {
        MessageService messageService = new MessageService(school);
        return messageService;
    }
}
