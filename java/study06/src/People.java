public class People {
    public String name;
    public String ssn;

    public People(String name, String ssn) {
        this.name = name;
        this.ssn = ssn;
    }
}

class Student extends People {
    public int studentNo;

    public Student(String name, String ssn, int studentNo) {
        super(name, ssn);
        this.studentNo = studentNo;
    }
}

class StudentEx {
    public static void main(String[] args) {
        Student student = new Student("홍길동", "12345-643535", 1);
        System.out.println("이름" + student.name);
        System.out.println("ssn" + student.ssn);
        System.out.println("studentNo" + student.studentNo);

    }
}
