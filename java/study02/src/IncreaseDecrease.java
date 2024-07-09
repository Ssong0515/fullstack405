public class IncreaseDecrease {
    public static void main(String[] args) {

        int x = 10;
//      증감 연산자는 하나의 라인에 단독으로 사용하면 앞에 있으나 뒤에 있으나 같음
        System.out.println("변수 x의 값: " + x);
        ++x;
        System.out.println("++x의 값: " + x);
        x--;
        System.out.println("x--의 값: " + x);

        System.out.println();

        x = 10;
        System.out.println("원본 x의 값: " + x);
        System.out.println("++x 의 값: " + ++x);
        System.out.println("x++ 의 값: " + x++);
        System.out.println("현재 x의 값: " + x);
        System.out.println("x-- 의 값" + x--);
        System.out.println("--x의 값: " + --x);
        System.out.println("현재 x의 값: " + x);
    }
}

// 자바에서 문자(char)타입은 ''만 씀
// 자바에서 문자열(String)타입은 " "만 씀
// 문자열과 다른 데이터 타입 연산 시, 모두 문자로 변환 후 연산