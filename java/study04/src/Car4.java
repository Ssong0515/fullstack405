public class Car4 {

    String carColor;
    int carCC;

//    기본 생성자: 매개변수가 없는 생성자
    public Car4() {
        carCC = 1000;
        carColor = "파랑색";
    }

//    매개변수가 2개 있는 생성자 선언
    public Car4(String color, int cc) {
        this.carColor = color;
        this.carCC = cc;
    }
}
