public class Child extends Parent{

    @Override
    public void method2() {
        System.out.println("Child - method2() 호출");
    }

//    Child 클래스가 자체적으로 보유하고 있는 메소드
    public void method3() {
        System.out.println("Child - method2() 호출");
    }
}
