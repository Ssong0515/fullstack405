public class DriverEx {
    public static void main(String[] args) {
        Vehicle v = new Vehicle();
        Taxi t = new Taxi();
        Bus b = new Bus();

        v.run();
        t.run();
        b.run();

        System.out.println();

        v = t;
        v.run();

        v = b;
        v.run();

        System.out.println("\n---- 매개변수의 다형성 ----\n");

        Driver d = new Driver();
        d.drive(t);
        d.drive(b);
    }
}
