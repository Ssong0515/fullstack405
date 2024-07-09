public class OperationEx {
    public static void main(String[] args) {
        byte byteValue1 = 10;
        byte byteValue2 = 20;
//        byte byteValue3 = byteValue1 + byteValue2;
//        (오류), 자바는 더 큰 숫자타입이 아니라면 기본적으로 int로 연산 하기 때문에 위의 연산값은 int 결과 값을 내기 때문
        int intValue = byteValue1 + byteValue2;
        System.out.println(intValue);

        char charValue1 = 'A';
        char charValue2 = 1;
//        char charValue3 = charValue1 + charValue2;
        int intValue2 = charValue1 + charValue2;
        System.out.println("유니코드: " + intValue2);
        System.out.println("출력문자: " + (char)intValue2);

        int intValue3 = 10;
        int intValue4 = intValue3 / 3;
        System.out.println(intValue4);

        int intValue5 = 10;
//        int intValue6 = intValue5 / 4.0;
//        더 큰 double이라는 타입이 있기에 int가 아닌 int값을 double로 변환 후 연산 -> 반환값 double
        double doubleValue = intValue5 / 3.0;
        float floatValue = intValue5 / 3.0f;
        System.out.println(doubleValue);
        System.out.println(floatValue);
    }
}
