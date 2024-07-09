import java.util.Scanner;

public class PhoneEx {
    public static void main(String[] args) {

        Phone phone1 = null;
        Phone phone2 = null;

        Scanner sc = new Scanner(System.in);

        while (phone1 == null || phone2 == null) {
            for (int i = 0; i < 2; i++) {
                System.out.print("이름과 전화번호 입력 >> ");

                String name;
                String tel;

                try {
                    name = sc.next();
                    tel = sc.nextLine();
                } catch (Exception e) {
                    System.out.println("잘못 입력하셨습니다. 다시 입력 해 주세요");
                    sc.nextLine();
                    continue;
                }

                if (i == 0) {
                    phone1 = new Phone(name, tel);
                } else {
                    phone2 = new Phone(name, tel);
                }
            }
            System.out.println(phone1.getName() + "의 번호" + phone1.getTel());
            System.out.println(phone2.getName() + "의 번호" + phone2.getTel());
            break;
        }


    }
}
