public class BreakContinueEx {
    public static void main(String[] args) {
        System.out.println("\n----break----\n");

        while (true) {
            int num = (int)(Math.random() * 6) + 1;
            System.out.println("랜덤 숫자: " + num);

            if (num == 6) {
                System.out.println("반복문 종료!!");
                break;
            }
        }

        System.out.println("\n----continue----\n");

        int num = (int)(Math.random() * 10) + 1;
        System.out.println("선택 된 숫자: " + num);
        for (int i = 0; i < 10; i++) {
            if (i == num) {
                continue;
            }
            System.out.println("i의 값은: " + i);
        }
    }
}
