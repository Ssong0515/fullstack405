public class CellPhone {
    String model;
    String color;

    public void powerOn() {
        System.out.println("전원을 켭니다.");
    }

    public void powerOff() {
        System.out.println("전원을 끕니다.");
    }

    public void bell() {
        System.out.println("전화벨이 울립니다.");
    }

    public void  sendVoice(String msg) {
        System.out.println("나: " + msg);
    }

    public void receiveVoice(String msg) {
        System.out.println("상대방: " + msg);
    }

    public void hangUp() {
        System.out.println("전화를 끊습니다.");
    }
}
