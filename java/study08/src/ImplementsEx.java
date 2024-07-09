public class ImplementsEx {
    public static void main(String[] args) {

        System.out.println("---- 구현 클래스로 실행 ----");
        ImplClass impl = new ImplClass();
        impl.methodA();
        impl.methodB();
        impl.methodC();

        System.out.println("---- InterA 타입으로 실행 ----");
        InterA ia = impl;
        ia.methodA();

        System.out.println("---- InterB 타입으로 실행 ----");
        InterB ib = impl;
        ib.methodB();

        System.out.println("---- InterC 타입으로 실행 ----");
        InterC ic = impl;
        ic.methodA();
        ic.methodB();
        ic.methodC();
    }
}
