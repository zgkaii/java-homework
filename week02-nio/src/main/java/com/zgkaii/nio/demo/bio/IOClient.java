package com.zgkaii.nio.demo.bio;

import java.net.Socket;
import java.util.Date;

/**
 * @Author: Mr.Z
 * @DateTime: 2021/03/29 22:45
 * @Description:
 **/
public class IOClient {
    public static void main(String[] args) {
        new Thread(() -> {
            try {
                Socket socket = new Socket("127.0.0.1", 6666);
                while (true) {
                    try {
                        socket.getOutputStream().write((new Date() + ": hello world").getBytes());
                        Thread.sleep(2000);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }).start();
    }
}
