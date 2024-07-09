public class Vehicle2Ex {
    public static void main(String[] args) {
        Vehicle2 vehicle2 = new Bus2();

        vehicle2.run();
//        vehicle2.checkFare(); error vehicle2에는 이 메서드가 없음

        Bus2 bus2 = (Bus2)vehicle2;
        bus2.run();
        bus2.checkfare();
    }
}
