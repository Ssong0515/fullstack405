public class PersonEx {
    public static void main(String[] args) {

        Person p1 = new Person("1234567-121314", "홍길동");
        System.out.println(p1.nation);
        System.out.println(p1.ssn);
        System.out.println(p1.name);

        System.out.println();

//        p1.nation = "USA";
//        p1.ssn = "12344-123123142";
        p1.name = "임꺽정";
        System.out.println(p1.name);

    }
}
