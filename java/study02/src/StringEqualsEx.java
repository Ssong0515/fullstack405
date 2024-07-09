public class StringEqualsEx {
    public static void main(String[] args) {
        String strVal1 = "아이유";
        String strVal2 = "아이유";
        String strVal3 = new String("아이유");
        String strVal4 = new String("아이유");

        System.out.println("변수 strVal1: " + strVal1 );
        System.out.println("변수 strVal2: " + strVal2 );
        System.out.println("변수 strVal3: " + strVal3 );
        System.out.println("변수 strVal4: " + strVal4 );

        if (strVal1 == strVal2) {
            System.out.println("strVal1과 strVal2는 참조가 같음");
        } else {
            System.out.println("strVal1과 strVal2는 참조가 다름");
        }

//        equals(): 문자열을 비교하는 명령어
        if (strVal1.equals(strVal2)) {
            System.out.println("strVal1과 strVal2는 문자열이 같음");
        }

        if (strVal3 == strVal4) {
            System.out.println("strVal3과 strVal4는 참조가 같음");
        } else {
            System.out.println("strVal3과 strVal4는 참조가 다름");
        }

        if (strVal3.equals(strVal4)) {
            System.out.println("strVal3과 strVal4는 문자열이 같음");
        }

        if (strVal1 == strVal3) {
            System.out.println("strVal1과 strVal3은 참조가 같다");
        } else {
            System.out.println("strVal1과 strVal3은 참조가 다르다");
        }

        if (strVal1.equals(strVal3)) {
            System.out.println("strVal1과 strVal3는 문자열이 같음");
        }

//        String 타입 변수 strVal5에 strVal3이 저장하고 있는 주소를 대입
        String strVal5 = strVal3;
        System.out.println("변수 strVal5: " + strVal5);

        if (strVal3 == strVal5) {
            System.out.println("strVal3과 strVal5는 참조가 같다");
        } else {
            System.out.println("strVal3과 strVal5는 참조가 다르다");
        }

        if (strVal3.equals(strVal5)) {
            System.out.println("strVal1과 strVal3는 문자열이 같음");
        }
    }
}
