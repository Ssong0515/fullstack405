public interface ChildInter2 extends ParentInter{

//    부모 인터페이스에서 디폴트로 선언 한 메서드를 오버라이딩 하여 추상 메서드로 변경
    @Override
    public void method2();

    public void method3();
}
