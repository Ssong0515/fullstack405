import java.util.Scanner;

public class ThreeSixNine {
    public static void main(String[] args) {
        String eng[] = {"student", "love", "java", "happy", "future"};
        String kor[] = {"학생", "사랑", "자바", "행복한", "미래"};

        Scanner sc = new Scanner(System.in);

        String userInput;
        String output = "";

        while (true) {
            try {
                System.out.print("영어 단어를 입력하세요 >> ");
                userInput = sc.nextLine();
            } catch (Exception e) {
                System.out.println("잘못 입력 하셨습니다.");
                continue;
            }

            if (!userInput.equals("exit")) {
                for (int i = 0; i < eng.length; i++) {
                    if (eng[i].equals(userInput)) {
                        output = kor[i];
                        break;
                    }
                }
            } else {
                System.out.println("종료 합니다.");
                break;
            }

            if (output.equals("")) {
                System.out.println("그런 영어 단어가 없습니다.");
            } else {
                System.out.println(output);
            }

            output = "";

        }

    }
}
