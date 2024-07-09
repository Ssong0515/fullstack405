public class SingletonEx {
    public static void main(String[] args) {

//        생성자에 private 접근 제한자를 사용하여 생성자 호출 불가
//        Singleton s1 = new Singleton();
//        Singleton s2 = new Singleton();

        Singleton obj1 = Singleton.getInstance();
        Singleton obj2 = Singleton.getInstance();
        
        if (obj1 == obj2) {
            System.out.println("obj1과 obj2는 같은 객체 입니다.");
        } else {
            System.out.println("obj1과 obj2는 다른 객체 입니다.");
        }
        
    }
}
