import java.util.Scanner;

public class CoffeeOrder {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        String kind;
        int count = 0;
        int price = 0;

        while (price == 0) {

            System.out.print("커피 주문하세요 >> ");
            kind = sc.next();
            count = sc.nextInt();

            switch (kind) {
                case "에스프레소":
                    price = 2000;
                    break;
                case "아메리카노":
                    price = 2500;
                    break;
                case "카푸치노":
                    price = 3000;
                    break;
                case "카페라떼":
                    price = 3500;
                    break;
                default:
                    System.out.println("메뉴를 찾을 수가 없습니다.");
                    price = 0;
            }
        }

        System.out.println(price * count + "원 입니다.");

    }
}
