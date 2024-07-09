import java.util.Scanner;

public class Park {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        int limitWeight = 0;
        int count = 0;
        int[] weightArr = new int[0];

        while (weightArr.length == 0) {

            System.out.print("키 입력 >> ");

            try {
                limitWeight = sc.nextInt();
                count = sc.nextInt();

                weightArr = new int[count];

                for (int i = 0; i < count; i++) {
                    weightArr[i] = sc.nextInt();
                }

            } catch (Exception e) {
                System.out.println("잘못 입력 하셨습니다.");
                System.out.println();
                sc.nextLine();
                weightArr = new int[0];
            }

        }

        int amountWeight = 0;
        int member = 0;

        for (int i = 0; i < count; i++) {

            amountWeight += weightArr[i];

            if (amountWeight > limitWeight) {
                break;
            } else if (i == (count - 1)) {
                member = count;
            }
            member++;
        }

        System.out.print("탑승 인원 >> " + member);
    }
}
