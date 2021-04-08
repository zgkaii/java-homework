package com.zgkaii.concurreny.mission;

/**
 * @Author: Mr.Z
 * @DateTime: 2021/04/08 10:05
 * @Description:
 */
public class Ticket implements Runnable {
    volatile static int ticket = 100;

    @Override
    public void run() {
        while (true) {
            if (ticket > 0) {
                try {
                    Thread.sleep(50);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                String name = Thread.currentThread().getName();
                System.out.println(name + "正在卖:" + ticket--);
            }
        }
    }
}