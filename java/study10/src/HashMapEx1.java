import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class HashMapEx1 {
    public static void main(String[] args) {

        Map<String, Integer> map = new HashMap<>();
        map.put("아이유", 85);
        map.put("유인나", 90);
        map.put("나영석", 80);
        map.put("유재석", 95);
        System.out.println("총 저장 수: " + map.size());

        System.out.println("\t 유인나: " + map.get("유인나"));
        System.out.println();

//        모든 키 및 중복 제거를 위해 Set 타입으로 변경
        Set<String> keySet = map.keySet();
//        Set에서 저장된 데이터를 get 하려면 Iterator 방식으로 변경 해줘야 함
        Iterator<String> keyIter = keySet.iterator();

        while (keyIter.hasNext()) {
            String key = keyIter.next();
            int value = map.get(key);
            System.out.println("\t" + key + " : " + value);
        }

        System.out.println();

        map.remove("나영석");
        System.out.println("총 저장 수: " + map.size());

        Set<Map.Entry<String, Integer>> entrySet = map.entrySet();
        Iterator<Map.Entry<String, Integer>> entryIter = entrySet.iterator();

        while (entryIter.hasNext()) {
            Map.Entry<String, Integer> entry = entryIter.next();
            String key = entry.getKey();
            int value = entry.getValue();
            System.out.println("\t" + key + " : " + value);
        }

        System.out.println();

        map.clear();
        System.out.println("총 저장 수: " + map.size());


    }
}
