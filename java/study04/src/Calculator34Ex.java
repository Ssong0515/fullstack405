public class Calculator34Ex {
    public static void main(String[] args) {

        Calculator3 cal3 = new Calculator3();
        cal3.intSum(10, 20);
        cal3.longSum(10l, 20l);
        cal3.floatSum(10.5f, 5.3f);
        cal3.doubleSum(1.5d, 5.2d);

        Calculator4 cal4 = new Calculator4();
        cal4.sum(10, 20);
        cal4.sum(10l, 20l);
        cal4.sum(10d, 20d);
        cal4.sum(10f, 20f);

    }
}
