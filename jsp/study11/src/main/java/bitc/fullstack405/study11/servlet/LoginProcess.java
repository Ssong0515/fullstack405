package bitc.fullstack405.study11.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(value = "/LoginProcess.do")
public class LoginProcess extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String id = req.getParameter("userId");
        String pw = req.getParameter("userPw");
        String name = req.getParameter("userName");

        if (id.equals("test1") && pw.equals("1234")) {
            req.setAttribute("userId", id);
            req.setAttribute("userPw", pw);
            req.setAttribute("userName", name);

            req.getRequestDispatcher("/chap12/LoginOk.jsp").forward(req, res);
        } else {
            res.sendRedirect("/chap12/LoginFail.jsp");
        }
    }
}
