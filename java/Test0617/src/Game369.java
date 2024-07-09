import java.util.InputMismatchException;
import java.util.Scanner;

public class Game369 {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);
        int input;
        String result = "";

        while (true) {

            System.out.print("1 ~ 99 사이의 정수를 입력하세요 >> ");

            try {
                input = sc.nextInt();
            } catch (NumberFormatException | InputMismatchException e) {
                System.out.println("숫자를 입력 해 주세요.");
                sc.nextLine();
                continue;
            }

            if (input > 0 && input < 100) {

                int [] fixedInts = {3, 6, 9};

                while (input > 0) {
                    int lastInt = input % 10;

                    for (int fixedInt: fixedInts) {
                        if (lastInt == fixedInt) {
                            result += "짝";
                        }
                    }
                    input /= 10;
                };
            } else if (input == 0) {
                System.out.println("종료합니다");
                break;
            } else {
                System.out.println("범위를 벗어났습니다.");
                continue;
            }

            if (result == "") {
                System.out.println("박수없음");
            } else {
                System.out.println("박수" + result);
            }

            result = "";

        }

    }
}
