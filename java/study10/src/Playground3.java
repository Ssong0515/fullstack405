import java.io.File;
import java.io.IOException;

public class Playground3 {
    public static void main(String[] args) throws IOException {
        File dir = new File("C:\\fullstack405\\java");
        File file1 = new File("C:\\fullstack405\\java\\text10");

        if (!dir.exists()) {
            dir.mkdir();

        }

        if (!file1.exists()) {
            file1.createNewFile();

            File[] files = dir.listFiles();
            for (File file: files) {
                System.out.println(file.getName());
            }

            System.out.println("--exit--");
        }


    }
}
