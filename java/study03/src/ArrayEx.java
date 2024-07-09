public class ArrayEx {
    public static void main(String[] args) {
        System.out.println("args: " + args);
        System.out.println("-----1번 방식으로 배열 선언-----\n");

        int[] scores = {83, 90, 87};

        System.out.println("scores[0]: " + scores[0]);
        System.out.println("scores[1]: " + scores[1]);
        System.out.println("scores[2]: " + scores[2]);

        int sum = 0;

        for (int i = 0; i < scores.length; i++) {
            sum += scores[i];
        }
        System.out.println("총합: " + sum);
        double average = sum / scores.length;
        System.out.println("평균: " + average);

        System.out.println("\n ----- 2번 방식으로 배열 선언 ----- \n");

        int[] arr1 = new int[5];

        for (int i = 0; i < 5; i++) {
            System.out.println("arr1[" + i + "] : " + arr1[i]);
        }

        arr1[0] = 10;
        arr1[1] = 20;
        arr1[2] = 30;
        arr1[3] = 40;
        arr1[4] = 50;

        for (int i = 0; i < 5; i++) {
            System.out.println("arr1[" + i + "] : " + arr1[i]);
        }

        double[] arr2 = new double[3];
        for (int i = 0; i < 3; i++) {
            System.out.println("arr2[" + i + "] : " + arr2[i]);
        }

        arr2[0] = 0.1;
        arr2[1] = 0.2;
        arr2[2] = 0.3;
        for (int i = 0; i <3; i++) {
            System.out.println("arr2[" + i + "] : " + arr2[i]);
        }

        String arr3[] = new String[3];
        for (int i = 0; i < arr3.length; i++) {
            System.out.println("arr3[" + i + "] : " + arr3[i]);
        }

        arr3[0] = "1월";
        arr3[1] = "2월";
        arr3[2] = "3월";
        for (int i = 0; i < arr3.length; i++) {
            System.out.println("arr3[" + i + "] : " + arr3[i]);
        }

        System.out.println("\n ----- 3번 방식으로 배열 선언 ----- \n");

//        배열도 빈 배열로 선언이 가능, 배열은 참조 타입
        int arr4[]; // 배열만 먼저 선언, 빈 배열, 배열의 크기가 없음
        int arr5[] = null; // 배열 먼저 선언, null로 초기화, 배열의 크기가 없음

//        {데이터1, ...} 을 사용한 배열 선언 방식은 배열 선언과 동시에 입력할 때만 사용 할 수 있음
//        arr4 = {70, 80, 90}; 오류, 배열 선언 없이 값
//        배열만 먼저 선언 후 나중에 데이터 입력하여 배열을 선언 시, 반드시 new 키워드를 사용 해야 함

//        배열 선언 2번 형식으로 배열을 선언
//        기존 배열 선언 2번 형식과 동일함
        arr4 = new int[3]; // 배열 선언 2번 형식으로 배열을 선언

//        배열 선언 2번 형식과
        arr5 = new int[]{70, 80, 90}; // 배열 선언 2번 형식과 1번 형식이 모두 포함된 방식으로 배열 선언

        String[] arr = {"difij", "fjeiofj", "dsjfioj"};

        String[] arr = [3];
        arr[0] = "fjioej";
        arr[1] = "fewjiof";
        arr[2] = "fewjiof";

        String[] arr;

        String[] arr;
        arr = new String[3];

        String[] arr = [3];
    }
     = [1, 2, 3]

}

