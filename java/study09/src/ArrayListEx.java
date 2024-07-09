import java.security.Principal;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class ArrayListEx {
    public static void main(String[] args) {
        List<String> list1 = new ArrayList<String>();
        ArrayList<String> list2 = new ArrayList<String>();
        List<String> list3 = new ArrayList<>();
        List<String> list4 = new ArrayList();

        list1.add("Java");
        list1.add("ADBC");
        list1.add("Servlet/JSP");
        list1.add(2, "Database");
        list1.add("iBatis");

        int size = list1.size();
        System.out.println("총 객체 수: " + size);
        System.out.println();

        String skill = list1.get(2);
        System.out.println("2 index: " + skill);
        System.out.println();

        for (int i = 0; i < list1.size(); i++) {
            String str = list1.get(i);
            System.out.println(i + " : " + str);
        }
        System.out.println();

        list1.remove(2);
        list1.remove(2);
        list1.remove("iBatis");

        for (int i = 0; i < list1.size(); i++) {
            String str = list1.get(i);
            System.out.println(i + " : " + str);
        }

        System.out.println("\n ---- asList() ---- \n");
//        asList(): 배열을 가지고 ArrayList를 생성하는 명령어

        List<String> list6 = Arrays.asList("카리나", "김유정", "백지헌");

        for (String name: list6) {
            System.out.println(name);
        }

        List<Integer> list7 = Arrays.asList(10, 20, 30);
        for (int item: list7) {
            System.out.println(item);
        }

        Integer[] arr = {10, 20, 30};
        List<Integer> list8 = Arrays.asList(arr);
        for (int item: list8) {
            System.out.println(item);
        }
    }
}
