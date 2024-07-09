package bitc.fullstack405.study13.controller;

import bitc.fullstack405.study13.commons.FileUtil;
import bitc.fullstack405.study13.commons.JSFunction;
import bitc.fullstack405.study13.model.MVCBoardDAO;
import bitc.fullstack405.study13.model.MVCBoardDTO;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@MultipartConfig(maxFileSize = 1024 * 1024 * 1, maxRequestSize = 1024 * 1024 * 10)
@WebServlet("/mvcboard/edit.do")
public class EditController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idx = Integer.parseInt(request.getParameter("idx"));

        MVCBoardDAO dao = new MVCBoardDAO(this.getServletContext());
        dao.dbOpen();
        MVCBoardDTO board = dao.selectBoardDetail(idx);

        if (dao.isDbIsOpen()) {
            dao.dbClose();
        }

        request.setAttribute("board", board);
        request.getRequestDispatcher("/mvcBoard/Edit.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String title = request.getParameter("title");
        String content = request.getParameter("content");
        int idx = Integer.parseInt(request.getParameter("idx"));
        String oldOriFile = request.getParameter("oldOriFile");
        String oldSaveFile = request.getParameter("oldSaveFile");

        MVCBoardDTO board = new MVCBoardDTO();
        board.setTitle(title);
        board.setContent(content);
        board.setIdx(idx);

        String saveDir = this.getServletContext().getInitParameter("FileUploadDirectory");

        try {
            oldSaveFile = FileUtil.uploadFile(request, saveDir);
        } catch (Exception e) {
            JSFunction.alertBack("파일 업로드 중 오류 발생" + e.getMessage(), response);
            return;
        }

        if (!oldSaveFile.equals("")) {
            String saveFileName = FileUtil.renameFile(oldSaveFile, saveDir);

            board.setoFile(oldSaveFile);
            board.setsFile(saveFileName);

            FileUtil.deleteFile(oldSaveFile, saveDir);
        } else {
            board.setoFile(oldSaveFile);
            board.setsFile(oldOriFile);
        }

        MVCBoardDAO dao = new MVCBoardDAO(this.getServletContext());
        dao.dbOpen();

        int result = dao.updateBoard(board);

        if (dao.isDbIsOpen()) {
            dao.dbClose();
        }

        if (result == 1) {
            response.sendRedirect("/mvcboard/view.do?idx=" + idx);
        } else {
            JSFunction.alertLocation("게시글 수정이 실패 했습니다.\n다시 진행 해 주세요", "/mvcboard/view.do?idx=" + idx, response);
        }


    }
}
