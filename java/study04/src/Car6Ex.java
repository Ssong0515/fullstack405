public class Car6Ex {
    public static void main(String[] args) {

        Car6 car1 = new Car6();
        System.out.println("car1.company" + car1.company);
        System.out.println("car1.model" + car1.model);
        System.out.println("car1.color" + car1.color);
        System.out.println("car1.maxSpeed" + car1.maxSpeed);
        System.out.println();

        Car6 car2 = new Car6("세단");
        System.out.println("car1.company" + car2.company);
        System.out.println("car1.model" + car2.model);
        System.out.println("car1.color" + car2.color);
        System.out.println("car1.maxSpeed" + car2.maxSpeed);
        System.out.println();

        Car6 car3 = new Car6("세단", "검정색");
        System.out.println("car1.company" + car3.company);
        System.out.println("car1.model" + car3.model);
        System.out.println("car1.color" + car3.color);
        System.out.println("car1.maxSpeed" + car3.maxSpeed);
        System.out.println();

        Car6 car4 = new Car6("SUV", "흰색", 200);
        System.out.println("car1.company" + car4.company);
        System.out.println("car1.model" + car4.model);
        System.out.println("car1.color" + car4.color);
        System.out.println("car1.maxSpeed" + car4.maxSpeed);
        System.out.println();
    }
}
