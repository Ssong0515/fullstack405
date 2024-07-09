public class StaticBlock {
    int field1;

    static int field2;

    static {
//        field1 = 10;
//        method1();
        field2 = 20;
        method2();
    }

    void method1() {
        System.out.println("인스턴스 멤버인 메서드 method1 호출");
    }

    static void method2() {
        System.out.println("정적 멤버인 메서드 method2 호출");
    }

    static void method3() {
//        this.field1 = 10;
//        this.method1();
//        정적 멤버에 this 사용 해도 오류 남
        field2 = 200;
        method2();
    }
}
