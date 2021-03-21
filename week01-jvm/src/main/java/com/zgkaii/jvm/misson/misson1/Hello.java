package com.zgkaii.jvm.misson.misson1;

public class Hello {
    private static int[] numbers = {1, 6, 8};

    public static void main(String[] args) {
        MovingAverage ma = new MovingAverage();
        int num1 = 1;
        int num2 = 2;
        ma.submit(num1);
        ma.submit(num2);
        double avg1 = ma.getAvg();

        MovingAverage mb = new MovingAverage();
        for (int number : numbers) {
            mb.submit(number);
        }
        double avg2 = mb.getAvg();
    }
}

class MovingAverage {
    private int count = 0;
    private double sum = 0.0D;

    public void submit(double value) {
        this.count++;
        this.sum += value;
    }

    public double getAvg() {
        if (0 == this.count) {
            return sum;
        }
        return this.sum / this.count;
    }
}

