public class Car4Ex {
    public static void main(String[] args) {

        Car4 car = new Car4("빨강", 2000);
        System.out.println("색상: " + car.carColor + ", 배기량: " + car.carCC);

        Car4 car2 = new Car4("검정", 3000);
        System.out.println("색상: " + car2.carColor + ", 배기량: " + car2.carCC);
    }
}
