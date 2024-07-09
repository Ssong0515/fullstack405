package pack2;

//private 접근자
//클래스 외부에서 사용 불가능
//클래서 내부에서만 멤버끼리 사용 가능
public class D {
    private String field4 = "클래스 D의 field4";

    private void method4() {
        System.out.println("클래스 D의 method4() 호출");
    }

    void print() {
        System.out.println("----클래스 D의 멤버가 같은 멤버를 사용----");
        System.out.println(field4);
        method4();
    }
}
