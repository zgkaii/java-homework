package com.zgkaii.concurreny.mission;

import java.util.Random;
import java.util.concurrent.*;

/**
 * @Author: Mr.Z
 * @DateTime: 2021/04/09 10:42
 * @Description:
 */
public class CallableTest {
    public static void main(String[] args) {
        ExecutorService executorService = Executors.newSingleThreadExecutor();
        System.out.println("提交Callable到线程池");
        Future<Integer> future = executorService.submit(new CallableTask());
        try {
            long startTime = System.currentTimeMillis();
            System.out.println("主线程等待获取Future结果");
            while (!future.isDone()) {
                System.out.println("子线程还未执行完");
                Thread.sleep(1000);
            }
            if (!future.isCancelled()) {
                System.out.println("子线程任务已完成");
                System.out.println("主线程获取到 Future 结果: " + future.get());
            } else {
                System.out.println("子线程任务被取消");
            }
        } catch (InterruptedException | ExecutionException e) {
            e.printStackTrace();
        }
    }


    static class CallableTask implements Callable<Integer> {
        @Override
        public Integer call() throws Exception {
            System.out.println("子线程开始");
            Mark.mark();
            Thread.sleep(2000);
            return new Random().nextInt();
        }
    }
}
