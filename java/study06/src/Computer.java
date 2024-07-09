public class Computer extends Calculator {
    @Override public double areaCircle(double r) {
        System.out.println("Computer 객체의 areaCircle() 호출");
        return Math.PI * r * r;
    }
}
