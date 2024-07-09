public class DriverEx2 {
    public static void main(String[] args) {
        Driver2 d = new Driver2();

        Bus2 bus2 = new Bus2();
        Taxi2 taxi2 = new Taxi2();

        d.drive(bus2);
        d.drive(taxi2);
    }
}
