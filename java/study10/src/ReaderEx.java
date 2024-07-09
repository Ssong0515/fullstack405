import java.io.FileReader;
import java.io.IOException;
import java.io.Reader;

public class ReaderEx {
    public static void main(String[] args) throws IOException {
        Reader reader = new FileReader("C:\\fullstack405\\java\\test3.txt");
        int readData = 0;

        while (true) {
            readData = reader.read();
            if (readData == -1) {
                break;
            }
            System.out.println((char) readData);
        }
        reader.close();

        System.out.println();

        reader = new FileReader("C:\\fullstack405\\java\\test3-1.txt");
        int readCharNo = 0;

        while (true) {
            readCharNo = reader.read();
            if (readCharNo == -1) {
                break;
            }
            System.out.println((char) readCharNo);
        }
        reader.close();




        System.out.println("\n ---- Reader로 파일 읽기 완료 ---- \n");
    }
}
