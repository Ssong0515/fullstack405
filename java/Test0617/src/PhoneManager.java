import java.util.Scanner;

public class PhoneManager {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        System.out.print("인원수 >> ");
        int count = sc.nextInt();

        Phone[] phones = new Phone[count];

        for (int i = 0; i < count; i++) {
            System.out.print("이름과 전화번호(번호는 연속적으로 입력) >> ");
            phones[i] = new Phone(sc.next(), sc.next());
            sc.nextLine();
        }

        System.out.println("저장되었습니다...");

        while (true) {
            System.out.print("검색할 이름 >> ");
            String inputName = sc.nextLine();

            if (inputName.equals("exit")) {
                System.out.println("프로그램을 종료합니다...");
                break;
            } else {

                Phone result = null;

                for (Phone phone: phones) {
                    if (phone.getName().equals(inputName)) {
                        result = phone;
                        break;
                    }
                }

                if (result != null) {
                    System.out.println(result.getName() + "의 번호는" + result.getTel() + "입니다.");
                } else {
                    System.out.println(inputName + " 은(는) 없습니다.");
                }

            }
        }
    }
}
