package com.zgkaii.jvm.misson;

import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.reflect.Method;

/**
 * @Author: Mr.Z
 * @DateTime: 2021/03/30 14:11
 * @Description:
 */
public class XClassLoader extends ClassLoader {
    private String path;

    /**
     * 设置自定义加载器 加载路径
     */
    public XClassLoader(String path) {
        this.path = path;
    }

    /**
     * 加载自定义类加载器,重写findClass方法
     * 如果要打破双亲委派模型，需要重写loadClass方法。
     */
    @Override
    protected Class<?> findClass(String name) {
        byte[] bytes = this.decodeBytes(name);
        // 根据字节码返回这个类
        return defineClass(name, bytes, 0, bytes.length);
    }

    /**
     * 解码xclass文件
     */
    private byte[] decodeBytes(String name) {
        FileInputStream fis = null;
        try {
            fis = new FileInputStream(path + '/' + name + ".xlass");
        } catch (FileNotFoundException e) {
            System.out.println("Can't find " + name + ".xclass file!!!");
        }
        ByteArrayOutputStream bos = new ByteArrayOutputStream();
        int ch = 0;
        try {
            while ((ch = fis.read()) != -1)
                bos.write(255 - ch);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return bos.toByteArray();
    }

    public static void main(String[] args) throws Exception {
        XClassLoader xClassLoader = new XClassLoader(
                "C:\\WorkSpace\\IdeaProjects\\java-homework\\week01-jvm\\src\\main\\resources\\");
        // 反射调用
        Class<?> clazz = xClassLoader.findClass("Hello");
        Method method = clazz.getMethod("hello", null);
        Object instance = clazz.newInstance();
        method.invoke(instance, null);
    }
}
