package bitc.fullstack405.study13.controller;

import bitc.fullstack405.study13.commons.FileUtil;
import bitc.fullstack405.study13.commons.JSFunction;
import bitc.fullstack405.study13.model.MVCBoardDAO;
import bitc.fullstack405.study13.model.MVCBoardDTO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/mvcboard/pass.do")
public class PassController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String mode = request.getParameter("mode");
        int idx = Integer.parseInt(request.getParameter("idx"));

        request.setAttribute("mode", mode);
        request.setAttribute("idx", idx);

        request.getRequestDispatcher("/mvcBoard/Pass.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pass = request.getParameter("pass");
        String mode = request.getParameter("mode");
        int idx = Integer.parseInt(request.getParameter("idx"));

        MVCBoardDAO dao = new MVCBoardDAO(this.getServletContext());
        dao.dbOpen();

        boolean confirmed = dao.confirmPassword(idx, pass);

        if (confirmed) {
            if (mode.equals("update")) {
                response.sendRedirect("/mvcboard/edit.do?idx=" + idx);
            } else if (mode.equals("delete")){
                String saveDir = this.getServletContext().getInitParameter("FileUploadDirectory");
                MVCBoardDTO board = dao.selectBoardDetail(idx);

                int result = dao.deleteBoard(idx);
                if (dao.isDbIsOpen()) {
                    dao.dbClose();
                }

                if (result == 1) {
                    JSFunction.alertLocation( "삭제 되었습니다.", "/mvcboard/list.do", response);
                    FileUtil.deleteFile(board.getsFile(), saveDir);
                } else {
                    JSFunction.alertLocation("삭제 중 오류 발생", "/mvcboard/list.do", response);
                }

            }
        } else {
            if (dao.isDbIsOpen()) {
                dao.dbClose();
            }
            JSFunction.alertBack("비밀번호가 틀렸습니다.", response);
        }
    }
}
