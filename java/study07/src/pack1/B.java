package pack1;

public class B {
    public void method() {
        A a = new A();
        a.field = "같은 패키지에서 필드 사용";
        a.method();
    }
}
