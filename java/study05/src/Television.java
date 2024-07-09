public class Television {
    static String company = "Samsung";
    static String model = "OLED";
    static String info;

//    클래스가 메소드 영역으로 로딩 될 때, 자동으로 실행 되는 블록
    static {
        info = company + " - " + model;
    }
}
