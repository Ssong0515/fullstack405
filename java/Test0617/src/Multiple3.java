import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Multiple3 {
    public static void main(String[] args) {
        List<Integer> inputArr = new ArrayList<>();
        Scanner sc = new Scanner(System.in);

        while (inputArr.size() < 10) {

            System.out.print("정수 10개 입력 >> ");

            int inputInt;

            for (int i = 0; i < 10; i++) {

                try {
                    inputInt = sc.nextInt();
                } catch (Exception e) {
                    inputArr.clear();
                    System.out.println("잘못 된 입력입니다.");
                    break;
                }

                inputArr.add(inputInt);

            }
            sc.nextLine();
        }

        List<Integer> outputArr = new ArrayList<>();

        for (int input: inputArr) {
            if (input % 3 == 0 && input != 0) {
                outputArr.add(input);
            }
        }

        if (outputArr.isEmpty()) {
            System.out.println("3의 정수 값이 없습니다.");
        } else {
            System.out.print("3의 정수 >> ");
            for (int output: outputArr) {
                System.out.print(output);
                System.out.print(" ");
            }

        }


    }
}
