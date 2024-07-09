package bitc.fullstack405.study11.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(value = "*.one")
public class FrontController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uri = req.getRequestURI();
        int lastSlash = uri.lastIndexOf('/');
        String commandStr = uri.substring(lastSlash + 1);

        if (commandStr.equals("regist.one")) {
            registFnc(req);
        } else if (commandStr.equals("login.one")) {
            loginFnc(req);
        } else if (commandStr.equals("freeboard.one")) {
            freeboardFnc(req);
        }

        req.setAttribute("uri", uri);
        req.setAttribute("commandStr", commandStr);

        req.getRequestDispatcher("/chap12/FrontController.jsp").forward(req, resp);
    }

    private void registFnc(HttpServletRequest req) {
        req.setAttribute("resultValue", "<h4>회원가입</h4>");
    }
    private void loginFnc(HttpServletRequest req) {
        req.setAttribute("resultValue", "<h4>로그인</h4>");
    }
    private void freeboardFnc(HttpServletRequest req) {
        req.setAttribute("resultValue", "<h4>자유게시판</h4>");
    }
}
