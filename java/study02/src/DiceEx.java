public class DiceEx {
    public static void main(String[] args) {
        int num = (int)(Math.random() * 6) + 1;
//      Math.random(): 0.0 ~ 0.9까지의 숫자를 랜덤으로 출력하는 명령어
        if (num == 1) {
            System.out.println("1번이 나왔습니다.");
        } else if (num == 2) {
            System.out.println("2번이 나왔습니다.");
        } else if (num == 3) {
            System.out.println("3번이 나왔습니다.");
        } else if (num == 4) {
            System.out.println("4번이 나왔습니다.");
        } else if (num == 5) {
            System.out.println("5번이 나왔습니다.");
        } else {
            System.out.println(num + "번이 나왔습니다.");
        }

    }
}
