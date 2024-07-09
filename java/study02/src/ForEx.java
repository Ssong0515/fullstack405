public class ForEx {
    public static void main(String[] args) {
        System.out.println("기본 for 문");

        for (int i = 0; i <= 10; i++) {
            System.out.println(i);
        }

        System.out.println("\n ----- 1 ~ 100까지의 합");

        int sum = 0;

        for (int i = 0; i <= 100; i++) {
            sum += i;
        }

        System.out.println(sum);

        System.out.println("\n ----- float 타입으로 사용 시 ----- \n");
        for (float x = 0.1f; x <= 1.0f; x += 0.1f) {
            System.out.println(x);
        }
    }
}
