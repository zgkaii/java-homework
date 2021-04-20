package com.zgkaii.spring02;

/**
 * @Author: Mr.Z
 * @DateTime: 2021/04/20 10:23
 * @Description:
 */
public class MessageService {
    private School school;

    public MessageService(School school) {
        this.school = school;
    }
    public void ding(){
        school.ding();
    }
}
