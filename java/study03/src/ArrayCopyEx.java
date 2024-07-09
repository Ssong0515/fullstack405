public class ArrayCopyEx {
    public static void main(String[] args) {
        System.out.println("----- 배열 복사하기 ----- \n");

        int[] arr1 = {10, 20, 30};
        int[] arr2 = arr1;

        for (int i = 0; i < arr1.length; i++) {
            System.out.println("arr1[" + i + "] : " + arr1[i]);
        }

        System.out.println();

        for (int i = 0; i < arr2.length; i++) {
            System.out.println("arr2[" + i + "] : " + arr2[i]);
        }

        System.out.println("\n ---- arr1 값 변경 ---- \n");
        arr1[0] = 100;
        arr1[1] = 200;
        arr1[2] = 300;


        for (int i = 0; i < arr1.length; i++) {
            System.out.println("arr1[" + i + "] : " + arr1[i]);
        }

        System.out.println();

        for (int i = 0; i < arr2.length; i++) {
            System.out.println("arr2[" + i + "] : " + arr2[i]);
        }

        System.out.println("\n ---- arr2 값 변경 ---- \n");
        arr2[0] = 1000;
        arr2[1] = 2000;
        arr2[2] = 3000;

        for (int i = 0; i < arr1.length; i++) {
            System.out.println("arr1[" + i + "] : " + arr1[i]);
        }

        System.out.println();

        for (int i = 0; i < arr2.length; i++) {
            System.out.println("arr2[" + i + "] : " + arr2[i]);
        }

        System.out.println("\n---- 배열 복사 ----\n");

        int[] arr3 = {10, 20, 30}; // 원본 배열 데이터
        int[] arr4 = new int[3]; // 복사 받을 배열

        for (int i = 0; i < arr3.length; i++) {
            System.out.println("arr3[" + i + "] : " + arr3[i]);
        }

        System.out.println();

        for (int i = 0; i < arr4.length; i++) {
            System.out.println("arr4[" + i + "] : " + arr4[i]);
        }


        System.out.println("\n---- for문으로 값 직접 복사 ----\n");

        for (int i = 0; i < arr3.length; i++) {
            arr4[i] = arr3[i];
        }

        for (int i = 0; i < arr3.length; i++) {
            System.out.println("arr3[" + i + "] : " + arr3[i]);
        }

        System.out.println();

        for (int i = 0; i < arr4.length; i++) {
            System.out.println("arr4[" + i + "] : " + arr4[i]);
        }

        System.out.println("\n ---- arr3 값 변경 ---- \n");
        arr3[0] = 100;
        arr3[1] = 200;
        arr3[2] = 300;

        for (int i = 0; i < arr3.length; i++) {
            System.out.println("arr3[" + i + "] : " + arr3[i]);
        }

        System.out.println();

        for (int i = 0; i < arr4.length; i++) {
            System.out.println("arr4[" + i + "] : " + arr4[i]);
        }

        System.out.println("\n ---- arr4 값 변경 ---- \n");
        arr4[0] = 1000;
        arr4[1] = 2000;
        arr4[2] = 3000;

        for (int i = 0; i < arr3.length; i++) {
            System.out.println("arr3[" + i + "] : " + arr3[i]);
        }

        System.out.println();

        for (int i = 0; i < arr4.length; i++) {
            System.out.println("arr4[" + i + "] : " + arr4[i]);
        }

        System.out.println("\n ----- arraycopy()를 사용하여 복사하기 ----- \n");

        int[] arr5 = {10, 20, 30};
        int[] arr6 = new int[3];

        for (int i = 0; i < arr5.length; i++) {
            System.out.println("arr5[" + i + "] : " + arr5[i]);
        }

        System.out.println();

        for (int i = 0; i < arr6.length; i++) {
            System.out.println("arr6[" + i + "] : " + arr6[i]);
        }

        System.out.println("\n ----- 복사 시작 ----- \n");

//        System.arraycopy(): 자바의 System 클래스에서 사용하는 배열 복사 메소드
//        5개의 매개변수를 사용
//        1. 원본 배열, 2. 원본 배열의 시작 index, 3. 사본 배열을 지정, 4. 사본 배열의 시작 index, 5. 복사할 크기)
        System.arraycopy(arr5, 0, arr6, 0, arr5.length);

        for (int i = 0; i < arr5.length; i++) {
            System.out.println("arr5[" + i + "] : " + arr5[i]);
        }

        System.out.println();

        for (int i = 0; i < arr6.length; i++) {
            System.out.println("arr6[" + i + "] : " + arr6[i]);
        }

        System.out.println("\n ---- arr5 값 변경 ---- \n");
        arr5[0] = 100;
        arr5[1] = 200;
        arr5[2] = 300;

        for (int i = 0; i < arr5.length; i++) {
            System.out.println("arr5[" + i + "] : " + arr5[i]);
        }

        System.out.println();

        for (int i = 0; i < arr6.length; i++) {
            System.out.println("arr6[" + i + "] : " + arr6[i]);
        }

        System.out.println("\n ---- arr6 값 변경 ---- \n");
        arr6[0] = 1000;
        arr6[1] = 2000;
        arr6[2] = 3000;

        for (int i = 0; i < arr5.length; i++) {
            System.out.println("arr5[" + i + "] : " + arr5[i]);
        }

        System.out.println();

        for (int i = 0; i < arr6.length; i++) {
            System.out.println("arr6[" + i + "] : " + arr6[i]);
        }


        System.out.println("\n ----- copyOf()를 사용하여 복사하기 ----- \n");
//        copyOf(): 원본의 내용을 지정한 갯수만큼만 복사, 시작 index는 0으로 고정
//        사용법: int[] 배열명 = Arrays.copyOf(원본배열, 복사할 크기);

        int[] arr7 = {10, 20, 30};
        int[] arr8 = new int[3];

        for (int i = 0; i < arr7.length; i++) {
            System.out.println("arr7[" + i + "] : " + arr7[i]);
        }

        System.out.println();

        for (int i = 0; i < arr8.length; i++) {
            System.out.println("arr8[" + i + "] : " + arr8[i]);
        }

        System.out.println("\n ----- arraycopy() ----- \n");

//        System.arraycopy(): 자바의 System 클래스에서 사용하는 배열 복사 메소드
//        5개의 매개변수를 사용
//        1. 원본 배열, 2. 원본 배열의 시작 index, 3. 사본 배열을 지정, 4. 사본 배열의 시작 index, 5. 복사할 크기)
        System.arraycopy(arr5, 0, arr6, 0, arr5.length);

        for (int i = 0; i < arr5.length; i++) {
            System.out.println("arr5[" + i + "] : " + arr5[i]);
        }

        System.out.println();

        for (int i = 0; i < arr6.length; i++) {
            System.out.println("arr6[" + i + "] : " + arr6[i]);
        }

        System.out.println("\n ---- arr5 값 변경 ---- \n");
        arr5[0] = 100;
        arr5[1] = 200;
        arr5[2] = 300;

        for (int i = 0; i < arr5.length; i++) {
            System.out.println("arr5[" + i + "] : " + arr5[i]);
        }

        System.out.println();

        for (int i = 0; i < arr6.length; i++) {
            System.out.println("arr6[" + i + "] : " + arr6[i]);
        }

        System.out.println("\n ---- arr6 값 변경 ---- \n");
        arr6[0] = 1000;
        arr6[1] = 2000;
        arr6[2] = 3000;

        for (int i = 0; i < arr5.length; i++) {
            System.out.println("arr5[" + i + "] : " + arr5[i]);
        }

        System.out.println();

        for (int i = 0; i < arr6.length; i++) {
            System.out.println("arr6[" + i + "] : " + arr6[i]);
        }

//        copyOfRange(): 원본의 내용을 범위로 복사, 시작 index와 끝 index 지정
//        사용법: int[] 배열명 = Arrays.copyOfRange(원본배열, 시작 index, 끝 index);


    }
}
