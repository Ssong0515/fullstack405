import java.util.*;

public class Playground {
    public static void main(String[] args) {

        Map<String, Integer> signIn = new HashMap<>();
        signIn.put("spring", 12);
        signIn.put("summer", 123);
        signIn.put("fall", 1234);
        signIn.put("winter", 12345);

        Scanner sc = new Scanner(System.in);

        while (true) {
            System.out.print("Enter your ID: ");
            String id = sc.nextLine();

            if (signIn.containsKey(id)) {
                System.out.print("Enter your passward: ");

                int pw = 0;

                try {
                    pw = sc.nextInt();
                } catch (NumberFormatException | InputMismatchException e) {
                    System.out.println("숫자가 아닙니다.");
                }

                if (signIn.get(id) == pw) {
                    System.out.println("You success logged in!");
                    break;
                } else {
                    System.out.println("비밀번호를 잘못 입력하셨습니다.");
                }

            } else {
                System.out.println("아이디가 존재하지 않습니다.");
            }
            sc.nextLine();
        }

    }
}
