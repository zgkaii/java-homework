package com.zgkaii.spring;

import com.zgkaii.spring.mission.mission2.SpringConfig;
import com.zgkaii.spring.mission.mission2.UserController;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * @Author: Mr.Z
 * @DateTime: 2021/04/17 20:52
 * @Description:
 **/
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = SpringConfig.class)
public class MissonTest {

    @Test
    public void testString() {
        // 定义Spring配置文件的路径
//        String xmlPath = "applicationContext.xml";
//        // 初始化Spring容器，加载配置文件
//        ApplicationContext applicationContext = new ClassPathXmlApplicationContext(
//                xmlPath);
        // 通过容器获取IAccountService实例
//        IAccountService as = (IAccountService) applicationContext
//                .getBean("accountService1");
//        IAccountService as = (IAccountService) applicationContext
//                .getBean("accountService2");
//        IAccountService as = (IAccountService) applicationContext
//                .getBean("accountService3");
        // 调用IAccountService的saveAccount方法
//        as.saveAccount();
//        UserController userController = (UserController) applicationContext
//                .getBean("userController");
//        userController.testFunc();
    }

    @Autowired
    private UserController userController;

    @Test
    public void testMission02() {
//        // 通过Java配置来实例化Spring容器
//        AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext(SpringConfig.class);
//        // 在Spring容器中获取Bean对象
//        UserController userController = context.getBean(UserController.class);
//        UserDao userDao = context.getBean(UserDao.class);
//        UserService userService = context.getBean(UserService.class);
//        // 调用对象中的方法
        userController.testFunc();
//        userDao.save();
//        userService.add();
//        // 销毁该容器
//        context.destroy();
    }
}
