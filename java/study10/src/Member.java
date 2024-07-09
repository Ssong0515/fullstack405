public class Member {

    String name;
    int age;

    @Override
    public boolean equals(Object obj) {
        if (obj instanceof Member) {
            Member member = (Member) obj;
            return member.name.equals(this.name) && (member.age == this.age);
        } else {
            return false;
        }

//        if (obj.hashCode() == this.hashCode()) {
//            return true;
//        } else {
//            return false;
//        }
    }

    @Override
    public int hashCode() {
        return name.hashCode() + age;
    }

    public Member(String name, int age) {
        this.name = name;
        this.age = age;
    }


}
