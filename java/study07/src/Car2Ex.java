public class Car2Ex {
    public static void main(String[] args) {
        Car2 car = new Car2();

        for (int i = 1; i < 10; i++) {
            System.out.println("---------" + i + "회차" + "-------------");
            int problemLocation = car.run();
            switch (problemLocation) {
                case 1:
                    System.out.println("앞왼쪽 HankookTire로 교체");
                    car.frontLeftTire = new HankookTire("앞왼쪽", 15);
                    break;
                case 2:
                    System.out.println("앞오른쪽 KumhoTire로 교체");
                    car.frontRightTire = new KumhoTire("앞오른쪽", 13);
                    break;
                case 3:
                    System.out.println("뒤왼쪽 HankookTire로 교체");
                    car.backLeftTire = new HankookTire("뒤왼쪽", 14);
                    break;
                case 4:
                    System.out.println("뒤오른쪽 KumhoTire로 교체");
                    car.frontLeftTire = new KumhoTire("뒤오른쪽", 12);
                    break;
            }
        }
    }
}
