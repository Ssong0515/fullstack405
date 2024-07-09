public class Car6 {
    String company = "현대 자동차";
    String model;
    String color;
    int maxSpeed;

//    this() 주의점
//    생성자 안에서 가장 첫줄에 입력 해야 함
    
    public Car6() {
        this("세단");
    }

    public Car6(String model) {
        this(model, "검정색");
    }

    public Car6(String model, String color) {
        this(model, color, 200);
    }

    public  Car6(String model,  String color, int maxSpeed) {
        this.model = model;
        this.color = color;
        this.maxSpeed = maxSpeed;
    }
}
