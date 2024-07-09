package bitc.fullstack405.study03.dto;

// 자바 빈즈: jsp에서 일반 java 클래스를 자바빈즈라고 함
// 자바 빈즈 선언 규칙
// 1. jsp의 자바 빈즈는 기본 패키지가 아닌 다른 패키지명을 사용해야 함
// 2. java 클래스의 필드는 모두 private 접근 제한자를 사용
// 3. 기본 생성자는 무조건 있어야 함
// 4. 클래스의 필드에 접근하기 위한 Getter/Setter 가 필요함
// 5. Getter/Setter 의 접근제한자는 public 을 사용

public class Person {
    private String name;
    private int age;

    public Person(){};

    public Person(String name, int age) {
        this.name = name;
        this.age = age;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }
}
