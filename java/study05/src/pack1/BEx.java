package pack1;

public class BEx {
    public static void main(String[] args) {
        A a = new A();
        System.out.println(a.field1);
        a.method1();

        B b = new B();
        System.out.println(b.field2);
        b.method2();
    }

}

class Test {
    private int sum(int x, int y) {
        return x + y;
    }
}
