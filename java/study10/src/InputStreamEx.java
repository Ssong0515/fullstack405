import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

public class InputStreamEx {
    public static void main(String[] args) {

        InputStream is = null;
        try {
//            InputStream으로 파일 열기
            is = new FileInputStream("C:\\fullstack405\\java\\test1.txt");

//            InputStream이 byte 타입으로 데이터를 가져옴
            int readByte = 0; // 가져온 byte 타입의 데이터를 저장할 변수

            while (true) {
//                read(): 1byte씩 데이터 가져오기, 가져올 데이터가 더이상 없으면 -1을 출력
                readByte = is.read();
                if (readByte == -1) {
                    break;
                }
                System.out.println((char)readByte);
            }

        } catch (IOException e) {
            System.out.println(e.getMessage());
        } finally {
            try {
                if (is != null) {
                    is.close();
                }
            } catch (IOException e) {};
        }
    }
}
