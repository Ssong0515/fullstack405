public class ArrayRefObjEx {
    public static void main(String[] args) {
        String[] strArr = new String[3];

        for (int i = 0; i < strArr.length; i++) {
            System.out.println("strArr[" + i + "] = " + strArr[i]);
        }

        strArr[0] = "Java";
        strArr[1] = "Java";
        strArr[2] = new String("Java");

        System.out.println("\n데이터 입력 후 \n");
        for (int i = 0; i < strArr.length; i++) {
            System.out.println("strArr[" + i + "] = " + strArr[i]);
        }

        System.out.println(strArr[0] == strArr[1]);
        System.out.println(strArr[0] == strArr[2]);
        System.out.println(strArr[0].equals(strArr[2]));

    }
}
