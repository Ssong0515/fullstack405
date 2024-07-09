public interface ParentInter {
//    추상 메서드
    public void method1();

//    디폴트 메서드
    public default void method2() {
        System.out.println("ParentInter - method2 디폴트 메서드 호출");
    }
}
