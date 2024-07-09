package bitc.fullstack405.study12.servlet;

import bitc.fullstack405.study12.database.MyFileDAO;
import bitc.fullstack405.study12.database.MyFileDTO;
import bitc.fullstack405.study12.util.FileUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

// @MultipartConfig : 클라이언트에서 form태그를 통해 enctype을 multipart/form-data로 설정 해서 데이터 전송 시,
// 전달 받을 데이터의 크기 설정하는 어노테이션
// 서버로 전달되는 데이터 타입: byte 타입
// 컴퓨터는 2진수로 숫자를 표현하므로 정수 1000을 2의 10승으로 표시하여 1024로 표현함
// 1024 * 1024 * 1 => 1000 * 1000 * 1 => 1,000,000 => 1mb
// maxFileSize : 1개 파일의 최대 크기
// maxRequestSize : 한번 요청시, 총 파일들의 크기
@MultipartConfig(maxFileSize = 1 * 1 * 1, maxRequestSize = 1024 * 1024 * 10)
@WebServlet("/UploadProcess.do")
public class UploadProcess extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            String saveDir = "C:/upload/";
            String origianlFileName = FileUtil.uploadFile(request, saveDir);
            String saveFileName = FileUtil.renameFile(saveDir, origianlFileName);

            insertMyFile(request, origianlFileName, saveFileName);
            response.sendRedirect("/chap13/FileList.jsp");

        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "파일 업로드 오류");
            request.getRequestDispatcher("/chap13/FileUploadMain.jsp").forward(request, response);
        }
    }

    private void insertMyFile(HttpServletRequest request, String origianlFileName, String saveFileName) {
        String title = request.getParameter("title");
        String[] cateArr = request.getParameterValues("cafe");
        StringBuffer cateBuff = new StringBuffer();

        if (cateArr == null) {
            cateBuff.append("선택한 항목 없음");
        } else {
            for (String cate : cateArr) {
                cateBuff.append(cate + ", ");
            }
        }

        System.out.println("파일 외 폼값 : " + title + "\n" + cateBuff);

        MyFileDTO myFile = new MyFileDTO();
        myFile.setTitle(title);
        myFile.setCate(cateBuff.toString());
        myFile.setOfile(origianlFileName);
        myFile.setSfile(saveFileName);

        MyFileDAO dao = new MyFileDAO();
        dao.dbOpen();
        dao.insertFile(myFile);
        dao.dbClose();
    }

}
