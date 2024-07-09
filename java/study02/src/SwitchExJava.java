public class SwitchExJava {
    public static void main(String[] args) {
        int num = (int)(Math.random() * 6) + 1;

        switch (num) {
            case 1:
                System.out.println("1이 나왔습니다.");
                break;
            case 2:
                System.out.println("2가 나왔습니다.");
                break;
            case 3:
                System.out.println("3이 나왔습니다.");
                break;
            case 4:
                System.out.println("4가 나왔습니다.");
                break;
            default:
                System.out.println("기타 숫자가 나왔습니다.");
                break;
        }

        int time = (int)(Math.random() * 4) + 8;
        System.out.println("[현재 시간 : " + time + "시]");
        switch (time) {
            case 8:
                System.out.println("출근합니다.");
            case 9:
                System.out.println("회의를 합니다.");
            case 10:
                System.out.println("업무를 봅니다.");
            default:
                System.out.println("외근을 나갑니다.");
        }

        String position = "과장";

        switch (position) {
            case "부장":
                System.out.println("700만원");
                break;

            case  "과장":
                System.out.println("500만원");
                break;

            default:
                System.out.println("300만원");
        }
    }
}
