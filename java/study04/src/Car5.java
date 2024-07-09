public class Car5 {

    String company = "현대 자동차";
    String model;
    String color;
    int maxSpeed;

    public Car5() {}

    public Car5(String model) {
        this.model = model;
    }

    public Car5(String model, String color) {
        this.model = model;
        this.color = color;
    }

    public  Car5(String model,  String color, int maxSpeed) {
        this.model = model;
        this.color = color;
        this.maxSpeed = maxSpeed;
    }
}
