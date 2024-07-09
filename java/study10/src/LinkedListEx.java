import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

public class LinkedListEx {
    public static void main(String[] args) {
        List<String> list1 = new ArrayList<>();
        List<String> list2 = new LinkedList<>();

        long startTime; // 시작 시간 저장 변수
        long endTime; // 종료 시간 저장 변수

//       System.nanoTime(): 자바에서 제공하는 시간 관련 메서드
        startTime = System.nanoTime();

//        ArrayList의 0번 index에 일부러 계속 넣어서 뒤에 것들이 계속 밀리도록 설정
        for (int i = 0; i < 100000; i++) {
            list1.add(0, String.valueOf(i));
        }

        endTime = System.nanoTime();
        System.out.println(String.format("ArrayList 걸린 시간: %dns", endTime - startTime));

        startTime = System.nanoTime();
        for (int i = 0; i < 100000; i++) {
            list2.add(0, String.valueOf(i));
        }

        endTime = System.nanoTime();
        System.out.println(String.format("LinkedList 걸린 시간: %dns", endTime - startTime));

    }
}
