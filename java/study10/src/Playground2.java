import java.io.FileInputStream;
import java.io.FileReader;
import java.io.InputStream;
import java.net.URLDecoder;
import java.util.Base64;
import java.util.Properties;

public class Playground2 {
    public static void main(String[] args) throws Exception {

        InputStream is = new FileInputStream("C:\\fullstack405\\java\\test1.txt");


        while (true) {
        int readByte = is.read();
            if (readByte != -1) {
                System.out.print((char)readByte);
            } else {
                break;
            }
        }

        is.close();

    }
}
