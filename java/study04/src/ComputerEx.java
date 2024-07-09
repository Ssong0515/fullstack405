public class ComputerEx {
    public static void main(String[] args) {

        Computer myCom = new Computer();

        int[] arrNum1 = {10, 20, 30};
        int[] arrNum2 = new int[] {10, 20, 30};

        int result = myCom.sum1(arrNum1);
        System.out.println("result: " + result);

        int result2 = myCom.sum1(new int[] {10, 20, 30});
        System.out.println("result2: " + result2);

        int test = myCom.sum2(arrNum1);
        System.out.println("test: " + test);

        int result3 = myCom.sum2(10, 20, 30);
        System.out.println("result3: " + result3);

        int result4 = myCom.sum2(10, 20, 30, 40, 50);
        System.out.println("result4: " + result4);
    }
}
