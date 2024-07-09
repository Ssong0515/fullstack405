public class ChildEx {
    public static void main(String[] args) {

        Parent parent = new Parent();
        parent.method1();
        parent.method2();

        System.out.println();

        Child child = new Child();
        child.method1();
        child.method2();
        child.method3();

        System.out.println();

//        다형성의 효과
//        사용 방법한 한개로 통일(부모 클래스 것만 사용)
//        결과는 바꿔 끼울 수 있음(자식 클래스들)

//        부모 클래스 타입의 변수에 자식 클래스 타입의 객체를 대입
//        부모 클래스 타입의 변수명으로 자식 클래스 타입의 멤버를 호출 할 수 있음
//        부모 클래스 타입의 멤버만 사용 할 수 있음
//        자식 클래스 타입 전용 멤버는 사용 할 수 없음
//        부모 클래스 타입의 변수로 다양한 자식 클래스 타입의 객체를 실행 할 수 있음

        parent = child;
        parent.method1(); // 부모 클래스에서 그대로 상속 받아 온 method1 사용
        parent.method2(); // 자식 클래스에서 override 한 method2 사용
//        parent.method3();

    }
}
