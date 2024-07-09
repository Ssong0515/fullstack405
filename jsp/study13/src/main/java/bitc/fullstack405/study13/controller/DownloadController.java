package bitc.fullstack405.study13.controller;

import bitc.fullstack405.study13.commons.FileUtil;
import bitc.fullstack405.study13.model.MVCBoardDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/mvcboard/download.do")
public class DownloadController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        int idx = Integer.parseInt(request.getParameter("idx"));
        String oriFileName = request.getParameter("ofile");
        String saveFileName = request.getParameter("sfile");

        String saveDir = this.getServletContext().getInitParameter("FileUploadDirectory");

        FileUtil.downloadFile(oriFileName, saveFileName, saveDir, request, response);

        MVCBoardDAO dao = new MVCBoardDAO(this.getServletContext());
        dao.dbOpen();
        dao.updateDownloadCount(idx);

        if (dao.isDbIsOpen()) {
            dao.dbClose();
        }
    }
}
