package bitc.fullstack405.study13.controller;

import bitc.fullstack405.study13.commons.FileUtil;
import bitc.fullstack405.study13.commons.JSFunction;
import bitc.fullstack405.study13.model.MVCBoardDAO;
import bitc.fullstack405.study13.model.MVCBoardDTO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.File;
import java.io.IOException;

@MultipartConfig(maxFileSize = 1024 * 1024 * 1, maxRequestSize = 1024 * 1024 * 10)
@WebServlet("/mvcboard/write.do")
public class WriteController extends HttpServlet {

    // 단순 view 페이지 출력
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("/mvcBoard/Write.jsp");
    }

    // 클라이언트에서 전달 받은 데이터를 DB에 등록
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        MVCBoardDTO board = new MVCBoardDTO();
        board.setTitle(request.getParameter("title"));
        board.setContent(request.getParameter("content"));
        board.setName(request.getParameter("name"));
        board.setPass(request.getParameter("pass"));

        String saveDir = this.getServletContext().getInitParameter("FileUploadDirectory");
        String oriFileName = "";
        String saveFileName = "";

        try {
            oriFileName = FileUtil.uploadFile(request, saveDir);
        } catch (Exception e) {
            JSFunction.alertLocation("파일 업로드 오류 발생", "/mvcboard/write/do", response);
            return;
        }

        if (!oriFileName.equals("")) {
            saveFileName = FileUtil.renameFile(oriFileName, saveDir);
            board.setoFile(oriFileName);
            board.setsFile(saveFileName);
        }

        MVCBoardDAO dao = new MVCBoardDAO(this.getServletContext());
        dao.dbOpen();

        int result = dao.insertBoard(board);

        if (dao.isDbIsOpen()) {
            dao.dbClose();
        }

        String imagePath = request.getContextPath() + "/" + saveFileName; // 이미지 경로 설정

        String redirectURL = request.getContextPath() + "/mvcBoard/TestView.jsp?imagePath=" + imagePath;
        response.sendRedirect(redirectURL); // 다음 페이지로

//        if (result == 1) {
//            response.sendRedirect("/mvcboard/list.do");
//        } else {
//            JSFunction.alertBack("게시글 등록에 실패했습니다.", response);
//        }
    }

}


