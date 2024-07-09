import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class HashSetEx1 {
    public static void main(String[] args) {

        Set<String> set = new HashSet<>();
        set.add("Java");
        set.add("JDBC");
        set.add("Servlet/JSP");
        set.add("Java"); // 중복 무시
        set.add("iBatis");
        
        int size = set.size();
        System.out.println(String.format("총 객체 수: %d", size));

//        HashSet에는 index를 기반으로 데이터를 출력하는 메서드가 없음
//        HashSet에 저장된 데이터를 출력하기 위해서 Iterator 타입으로 변환하는 메서드를 제공
//        Iterator: 반복자, 저장된 내용을 하나씩 모두 출력 할 수 있는 데이터 타입
        Iterator<String> iter = set.iterator();

//        hasNext(): Iterator에서 제공하는 메서드로 출력할 데이터가 있는지 확인
//        next(): Iterator에서 제공하는 메서드로 실제로 데이터를 출력
        while (iter.hasNext()) {
            String element = iter.next();
            System.out.println("\t" + element);
        }
        
        set.remove("JDBC");
        set.remove("iBatis");
        
        System.out.println(String.format("총 객체 수: %d", set.size()));
        
        for (String element: set) {
            System.out.println("\t" + element);
        }
        
        set.clear();;
        
        if (set.isEmpty()) {
            System.out.println("비어 있음");
        }
    }
}
