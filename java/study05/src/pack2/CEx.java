package pack2;

//import pack1.A;
import pack1.B;

public class CEx {

    public static void main(String[] args) {
//        클래스 A는 default 접근제한자를 사용하고 있기에, 다른 패키지에서 사용 불가능
//        A a = new A();
//        System.out.println(a.field);
//        a.method1();

        B b = new B();
        System.out.println(b.field2);
        b.method2();

        D d = new D();
//        System.out.println(d.field4); //private 접근 제한자
//        d.method4(); //private 접근 제한자
        d.print(); // defualt 접근 제한자
    }
}
