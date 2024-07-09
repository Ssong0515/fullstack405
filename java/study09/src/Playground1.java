import java.awt.print.Printable;
import java.util.InputMismatchException;
import java.util.Scanner;

public class Playground1 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("first: ");
        String firstAnswer = sc.nextLine();
        System.out.print("second: ");
        String secondAnswer = sc.nextLine();

        Calculator calc = new Calculator();

        try {
            int result = calc.add(firstAnswer, secondAnswer);
            System.out.println("두 수의 합은: " + result);
            int result2 = calc.subtract(firstAnswer, secondAnswer);
            System.out.println("두 수의 차는: " + result2);
        } catch (InputMismatchException | NumberFormatException e) {
            System.out.print("exception 발생");
        }

    }
}

class Calculator {
    public int add(String a, String b) throws NumberFormatException {
        int first = Integer.parseInt(a);
        int second = Integer.parseInt(b);
        return first + second;
    }

    public int subtract(String a, String b) throws NumberFormatException {
        int first = Integer.parseInt(a);
        int second = Integer.parseInt(b);
        return first - second;
    }

}
