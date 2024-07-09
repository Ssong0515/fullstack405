package bitc.fullstack405.study13.controller;

import bitc.fullstack405.study13.model.MVCBoardDAO;
import bitc.fullstack405.study13.model.MVCBoardDTO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.File;
import java.io.IOException;

@WebServlet("/mvcboard/view.do")
public class ViewController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idx = Integer.parseInt(request.getParameter("idx"));

        MVCBoardDAO dao = new MVCBoardDAO(request.getServletContext());
        dao.dbOpen();

        dao.updateVisitCount(idx);

        MVCBoardDTO board = dao.selectBoardDetail(idx);

        if (dao.isDbIsOpen()) {
            dao.dbClose();
        }

        request.setAttribute("board", board);
        request.setAttribute("imgPath", pathOfImg(board.getsFile()));

        request.getRequestDispatcher("/mvcBoard/View.jsp").forward(request, response);

    }

    public String pathOfImg(String fileName) {
        String result = "";
        String saveDir = getServletContext().getInitParameter("FileUploadDirectory");
        result = saveDir + File.separator + fileName;
        return result;
    }
}
