import java.util.Scanner;

public class PhoneEx {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);
        System.out.print("이름과 전화번호 입력 >>");
        String userName = sc.next();
        String userTel = sc.nextLine();

        System.out.print("이름과 전화번호 입력 >>");
        String userName2 = sc.next();
        String userTel2 = sc.nextLine();



        Phone phone1 = new Phone(userName, userTel);
        Phone phone2 = new Phone(userName2, userTel2);
        System.out.println(phone1.getName() + "의 번호 " + phone1.getTel());
        System.out.println(phone2.getName() + "의 번호 " + phone2.getTel());
    }
}
