public interface MyInterface {

    public abstract void method1();

    public default void method2() {
        System.out.println("MyInterface - method2 호출");
    }
//    public abstract void method2();
}
