package com.zgkaii.concurreny.mission;

/**
 * @Author: Mr.Z
 * @DateTime: 2021/04/08 10:06
 * @Description:
 */
public class TicketTest {
    public static void main(String[] args) {
        //创建线程任务对象
        Ticket ticket = new Ticket();
        //创建三个窗口对象
        Thread t1 = new Thread(ticket, "窗口1");
        Thread t2 = new Thread(ticket, "窗口2");
//        Thread t3 = new Thread(ticket, "窗口3");
        //同时卖票
        t1.start();
        t2.start();
//        t3.start();
    }
}
