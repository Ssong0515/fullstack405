public class CalculatorEx {
    public static void main(String[] ars) {
        Calculator myCal = new Calculator();
        myCal.powerOn();

        int result = myCal.plus(10, 20);
        System.out.println("result: " + result);

        byte x = 10;
        byte y = 4;
        double result2 = myCal.divide(x, y);
        System.out.println("result2: " + result2);

        myCal.powerOff();
    }
}
