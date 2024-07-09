public class Person {

    final String nation = "korea";
    final String ssn;
    String name;

    public Person(String ssn, String name) {
//        final이 초기화가 된 상태에서는 생성자에서도 초기화 불가능
//        nation = "USA";
        this.ssn = ssn;
        this.name = name;
    }
}
