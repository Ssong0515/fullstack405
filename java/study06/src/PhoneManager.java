import java.util.Scanner;

public class PhoneManager {
    public static void main(String[] args) {
        System.out.print("인원수>>");
        Scanner sc = new Scanner(System.in);
        int amount = sc.nextInt();

        Phone2 [] phone2s = new Phone2[amount];

        for (int i = 0; i < amount; i++) {
            System.out.print("이름과 전화번호(번호는 연속적으로 입력)>>");
            String name = sc.next();
            String tel = sc.next();
            phone2s[i] = new Phone2(name, tel);
        }
        System.out.println("저장되었습니다...");

        while (true) {
            System.out.print("검색할 이름>>");
            String findName = sc.next();

            if(findName.equals("exit")) {
                System.out.println("프로그램을 종료합니다.");
                break;
            } else {
                Phone2 having = null;

                for (Phone2 phone2 : phone2s) {
                    if (phone2.compareName(findName)) {
                        having = phone2;
                        break;
                    } else {
                        having = null;
                    }
                }

                if (having != null) {
                    System.out.println(having.getTel(findName));
                } else {
                    System.out.println(findName + "이 없습니다.");
                }

            }

        }

    }
}
