public class KoreanEx {
    public static void main(String[] args) {
        Korean k1 = new Korean();
        System.out.println("k1.nation: " + k1.nation);
        System.out.println("k1.name: " + k1.name);
        System.out.println("k1.ssn: " + k1.ssn);

        Korean k3 = new Korean("홍길동", "123-213123");
    }
}
