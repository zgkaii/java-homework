package com.zgkaii.concurreny.mission;

/**
 * @Author: Mr.Z
 * @DateTime: 2021/04/08 10:50
 * @Description:
 */
public class JoinTest1 {
    public static void main(String[] args) {
        Thread thread = new Thread(new Runnable() {
            @Override
            public void run() {
                System.out.println("[" + Thread.currentThread().getName() + "] begins");
                try {
                    Thread.sleep(5000);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                System.out.println("[" + Thread.currentThread().getName() + "] ends");
            }
        }, "child");

        thread.start();// 启动child线程
        try {
            thread.join(1000);
            if (thread.isAlive()) {
                System.out.println("[" + Thread.currentThread().getName() + "] child thread has not finished");
            } else {
                System.out.println("[" + Thread.currentThread().getName() + "] child thread has finished");
            }
            System.out.println("Join Success");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
