import java.util.Scanner;

public class RectArray {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        Rect [] rectArr = new Rect[4];

        for (int i = 0; i < 4; i++) {
            System.out.print("너비와 높이 >> ");
            int userWidth = sc.nextInt();
            int userHeight = sc.nextInt();
            rectArr[i] = new Rect(userWidth, userHeight);
        }

        int sumRects = 0;

        for (Rect rect : rectArr) {
            sumRects += rect.getArea();
        }

        System.out.println("저장하였습니다...");
        System.out.println("사각형 전체의 합은 " + sumRects);


    }
}
