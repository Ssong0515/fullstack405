import java.util.Scanner;

public class ChatEx {
    public static void main(String[] args) {
//        125/2,4,6,8

//        int numbers[] = {2, 44, 77, 6, 8, 9, 12, 88, 100, 2323};
//
//        for (int number: numbers) {
//            if (number % 3 == 0) {
//                System.out.println(number);
//            }
//        }
//
//        char weeks[] = {'일', '월', '화', '수', '목', '금', '토'};
//
        Scanner scanner = new Scanner(System.in);
//
//        while (true) {
//            System.out.print("정수를 입력하세요>>");
//            int userNum = 0;
//
//            try {
//                userNum = scanner.nextInt();
//            } catch (Exception e) {
//                System.out.println("경고! 숫자를 입력하세요");
//                scanner.next();
//                continue;
//            }
//
//            if (userNum < 0) {
//                System.out.println("프로그램을 종료합니다.");
//                break;
//            }
//
//            char week = weeks[userNum % 7];
//            System.out.println(week);
//        }
//
//        String eng[] = {"student", "love", "java", "happy", "future"};
//        String kor[] = {"학생", "사랑", "자바", "행복한", "미래"};
//
//        String userString = scanner.next();
//        while (true) {
//            System.out.print("영어 단어를 입력하세요>>");
//
//            if (userString.equals("exit")) {
//                break;
//            } else {
//                for (int i = 0; i < eng.length; i++) {
//                    if (eng[i].equals(userString)) {
//                        System.out.println(kor[i]);
//                        break;
//                    } else {
//                        userString = "";
//                    }
//                }
//            }
//        }

        String com[] = {"가위", "바위", "보"};
        System.out.println("컴퓨터와 가위 바위 보 게임을 합니다.");

        while(true) {
            System.out.print("가위 바위 보!>>");
            String input = scanner.nextLine();

            if (input.equals("그만")) {
                System.out.println("게임을 종료합니다...");
                break;
            }

            int index = (int)(Math.random() * 3);

            if (input.equals("가위")) {
                if (com[index].equals("가위")) {
                    System.out.println("사용자: " + input + "컴퓨터: " + com[index] + ", 비겼습니다.");
                } else if (com[index].equals("바위")) {
                    System.out.println("사용자: " + input + "컴퓨터: " + com[index] + ", 사용자가 이겼습니다.");
                } else if (com[index].equals("보")) {
                    System.out.println("사용자: " + input + "컴퓨터: " + com[index] + ", 컴퓨터가 이겼습니다.");
                }
            } else if (input.equals("바위")) {
                System.out.println("사용자: " + input + "컴퓨터: " + com[index] + ", 사용자가 이겼습니다." );
            } else if (input.equals("보")) {
                System.out.println("사용자: " + input + "컴퓨터: " + com[index] + ", 컴퓨터가 이겼습니다." );
            }

        }

//        String userTurn = "";
//
//        do {
//            System.out.print("가위 바위 보!>>");
//            userTurn = scanner.nextLine();
//
//            String computerTurn = game[(int)Math.random() * 3];
//
//            System.out.println("사용자: " + userTurn);
//            System.out.println("컴퓨터: " + computerTurn);
//
//            if (userTurn.equals(computerTurn)) {
//                System.out.println("비겼습니다.");
//            } else {
//                System.out.println("이기거나 졌습니다.");
//            }
//
//
//
//        } while (!userTurn.equals("그만")); {
//            System.out.println("게임을 종료합니다...");
//        }




    }
}
