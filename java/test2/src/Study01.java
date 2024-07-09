public class Study01 {
    public static void main(String[] args) {
        // 변수 명명법 - 자바에서 변수 생성 시, 효과적으로 사용하기 위한 것
        // 1. 변수명은 반드시 영어로 입력
        // 2. 변수명에 영문자 및 숫자, 특수문자($, _)를 사용 가능
        // 3. 변수명의 첫글자는 반드시 영문자여야 함
        // 4. 영어 대소문자를 판별함
        // 5. 2개 이상의 단어로 조합된 이름의 경우 첫번째 단어는 모두 영어 소문자로 입력
        //    두번째 이상의 단어는 첫 글자는 영어 대문자, 두번째 글자 이후로는 영어 소문자로 입력
        // 6. 자바 예약어는 변수명으로 사용할 수 없음

        int apple = 10;
        int 사과 = 1000;
        // 한글로 변수명 입력해도 오류 발생하지 않음
        // 관례적으로 프로그래밍 시, 데이터를 제외하고는 영어로 입력

        System.out.println(apple);
        System.out.println(사과);

        int iphone15 = 150; // 변수 이름에 숫자 사용 가능
        int iphone15max = 180;
        int iphone1$ = 150; // 변수 이름에 특수문자 사용 가능
//        int 15iphone = 150; // 숫자가 처음 오는것 안됨
        int appleIphone15ProMax = 180; // 카멜 명명법 (변수, 메소드)
        int apple_iphone_15_pro_max = 180; // 스네이크 명명법 (상수)
        int AppleIphone15ProMax = 180; // 파스칼 명명법 (클래스)

        // 데이터 초기화: 변수를 선언 후 최초로 데이터를 저장 하는 작업
        int value; // 변수를 선언만 하고 데이터의 초기화가 없음
        value = 10; // 초기화 해 줌
        System.out.println(value);


    }
}
