import java.util.Scanner;

public class Taja {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        while (true) {
            System.out.print("입력 >> ");
            String inputString = sc.nextLine();

            if (inputString.equals("exit")) {
                System.out.println("종료 합니다...");
                break;
            }

            char[] charArr = inputString.toCharArray();

            for (int i = 0; i < charArr.length; i++) {
                if (charArr[i] == 'q') {
                    charArr[i] = 'e';
                }
            }

            String outputString = new String(charArr);

            System.out.println("출력 >> " + outputString);
        }


    }
}
