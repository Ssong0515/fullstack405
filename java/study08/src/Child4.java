public interface Child4 extends ParentInter{
    @Override
    public default void method1() {
        System.out.println("parent의 추상 메서드를 default로 변경");
    }

}
