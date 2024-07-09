package bitc.fullstack405.study12.util;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;

public class FileUtil {

    public static String uploadFile(HttpServletRequest request, String saveDir) throws ServletException, IOException {

        // input type=file로 지정한 태그의 Multipart 타입의 binary 데이터를 가져 옴
        Part part = request.getPart("attachedFile");
        // 가져온 파일 정보의 header에서 content-disposition의 데이터를 가져옴
        String partHeader = part.getHeader("content-disposition");
        System.out.println("Part header: " + partHeader);

        // 가져온 header 정보를 'filename='을 기준으로 잘라서 배열에 저장
        String[] phArr = partHeader.split("filename=");
        // trim : 앞 뒤 공벡 제거
        // replace("\"", "") : '"'(큰따옴표) 제거 => \ <역슬래쉬 하고 " 하면 "를 문자로 인식함>
        String originalFileName = phArr[1].trim().replace("\"", "");

        if (!originalFileName.isEmpty()) {
            // 서버의 지정된 위치에 파일을 씀(저장)
            // File.separator == "\\" 같음. /나 \\를 적절하게 써줌
            part.write(saveDir + File.separator + originalFileName);
        }

        return originalFileName;
    }

    public static String renameFile(String saveDir, String fileName) {
        String ext = fileName.substring(fileName.lastIndexOf("."));
        String now = new SimpleDateFormat("yyyyMMdd_HmsS").format(new Date());
        String newFileName = now + ext;

        File oldFile = new File(saveDir + File.separator + fileName);
        File newFile = new File(saveDir + File.separator + newFileName);
//        renameTo() : 지정한 파일 정보로 현재 파일 정보를 변환, 원본 파일명을 이름 변경
        oldFile.renameTo(newFile);

        return newFileName;
    }

    public static List<String> multiUploadFiles(HttpServletRequest request, String saveDir) throws ServletException, IOException {

        List<String> fileNameList = new ArrayList<>();

        Collection<Part> parts = request.getParts();

        for (Part part : parts) {
            if (!part.getName().equals("attachedFile")) {
                continue;
            }

            String partHeader = part.getHeader("content-disposition");
            System.out.println("partHeader: " + partHeader);

            String[] phArr = partHeader.split("filename=");
            String originalFileName = phArr[1].trim().replace("\"", "");

            if (!originalFileName.isEmpty()) {
                part.write(saveDir + File.separator + originalFileName);
                fileNameList.add(originalFileName);
            }
        }

        return fileNameList;
    }
}
