import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class Playground2 {
    public static void main(String[] args) {
        List<String> list = new ArrayList<>();
        list.add("dd");
        list.add(1, "ff");
        System.out.print(list);
        list.set(1, "cc");
        System.out.print(list);

        String temp = "asdfwefwe";
        temp.length();

    }

}
