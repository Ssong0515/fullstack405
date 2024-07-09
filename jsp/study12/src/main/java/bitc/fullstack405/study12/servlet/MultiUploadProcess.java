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
import java.util.List;

@MultipartConfig(maxFileSize = 1024 * 1024 * 1, maxRequestSize = 1024 * 1024 * 10)
@WebServlet("/MultiUploadProcess.do")
public class MultiUploadProcess extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            String saveDir = "C:/upload/";
            List<String> oriFileNameList = FileUtil.multiUploadFiles(request, saveDir);

            for (String origianlFileName : oriFileNameList) {
                String saveFileName = FileUtil.renameFile(saveDir, origianlFileName);
                insertMyFile(request, origianlFileName, saveFileName);
            }

            response.sendRedirect("/chap13/FileList.jsp");

        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "파일 업로드 오류");
            request.getRequestDispatcher("/chap13/MultiFileUploadMain.jsp").forward(request, response);
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
