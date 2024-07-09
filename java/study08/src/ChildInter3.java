public interface ChildInter3 extends ParentInter{

    @Override
    public default void method2() {
        System.out.println("ChildInter3.method2 호출, parent의 디폴트 메서드를 내용 변경");
    }

    public void method3();
}
