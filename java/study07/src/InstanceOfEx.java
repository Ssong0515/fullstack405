public class InstanceOfEx {
    public static void main(String[] args) {
        Parent3 parentA = new Child3();
        method1(parentA);
        method2(parentA);

        System.out.println();

        Parent3 parentB = new Parent3();
        method1(parentB);
        method2(parentB);

    }

    public static void method1(Parent3 parent) {
        if (parent instanceof Child3) {
            Child3 child = (Child3) parent;
            System.out.println("method1 - child3 타입으로 변환 성공");
        } else {
            System.out.println("method1 - child3 타입으로 변환 실패");
        }
    }

    public static void method2(Parent3 parent) {
        Child3 child = (Child3) parent;
        System.out.println("method2 - child3 타입으로 변환 성공");
    }

}
