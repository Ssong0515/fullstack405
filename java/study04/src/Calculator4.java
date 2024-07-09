public class Calculator4 {
    void sum(int x, int y) {
        int result = x + y;
        System.out.println("두 수의 덧셈은: " + result);
    }

    void sum(double x, double y) {
        double result = x + y;
        System.out.println("두 수의 덧셈은: " + result);
    }

    void sum(long x, long y) {
        long result = x + y;
        System.out.println("두 수의 덧셈은: " + result);
    }

    void sum(float x, float y) {
        float result = x + y;
        System.out.println("두 수의 덧셈은: " + result);
    }
    
//    메소드 오버로딩 조건
//    메소드의 이름은 동일하지만 매개변수의 타입, 개수, 순서 중 하나라도 달라야 오버로딩 됨
    
    void  multi() {
        int x = 10;
        int y = 20;
        System.out.println("두 수의 곱셈은: " + x * y);
    }
    
    void multi(int x) {
        int y = 20;
        System.out.println("두 수의 곱셈은: " + x * y);
    }
    
    void multi(int x, int y) {
        System.out.println("두 수의 곱셈은: " + x * y);
    }
    
//    매개변수의 타입이 다를 경우
    void multi(int x, long y) {
        System.out.println("두 수의 곱셈은: " + x * y);
    }
    
//    매개변수의 순서가 다를 경우
    void multi(long x, int y) {
        System.out.println("두 수의 곱셈은: " + x * y);
    }
}
