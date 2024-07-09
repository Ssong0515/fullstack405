public class SmartTVEx {
    public static void main(String[] args) {

        SmartTV smartTV = new SmartTV();
        smartTV.turnOn();
        smartTV.setVolume(10);
        smartTV.setMute(true);
        smartTV.search("네이버");
        smartTV.turnOff();

        System.out.println("\n ---- 인터페이스를 다중 상속 받은 구현 클래스의 객체를 다시 인터페이스 타입의 변수에 대입 했을 경우 ---- \n");
        
//        부모 타입의 변수에 자식 클래스 타입의 객체 대입
//        부모 타입으로 자식 객체의 멤버를 호출할 수 있음
        Searchable s = smartTV;
        s.search("구글");

        RemoteControl r = smartTV;
        r.turnOn();
        r.turnOff();

        System.out.println("\n ---- 정적 메소드와 디폴트 메소드 실행 ---- \n");

//        인터페이스의 디폴트 메소드 호출
        RemoteControl r2 = new SmartTV();
        r2.setMute(true);
        r2.setMute(false);

//        인터페이스의 정적 메소드 호출
        RemoteControl.changeBattery();

        SmartTV r3 = new SmartTV();
        r3.changeBattery2();
    }
}
