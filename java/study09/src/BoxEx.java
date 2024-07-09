public class BoxEx {
    public static void main(String[] args) {

//        내부적으로 object 타입을 사용하여 모든 데이터 타입의 데이터를 저장 할 수 있음
        Box box = new Box();

        box.set("아이유");
        String name = (String) box.get();
        System.out.println("name : " + name);

        box.set(10000);
        int won = (int) box.get();
        System.out.println("오늘 용돈: " + won);

//        Apple 클래스 객체도 저장
        box.set(new Apple());
        Apple apple = (Apple) box.get();

    }
}
