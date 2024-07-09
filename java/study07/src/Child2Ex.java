public class Child2Ex {
    public static void main(String[] args) {

        Parent2 parent2 = new Child2();
        parent2.field = "데이터 1";
        parent2.method1();
        parent2.method2();

        Child2 child2 = (Child2)parent2;
        child2.field2 = "데이터 2";
        child2.method3();
    }
}
