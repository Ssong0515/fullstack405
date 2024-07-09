package bitc.fullstack405.study11.servlet;

import bitc.fullstack405.study11.database.MemberDAO;
import bitc.fullstack405.study11.database.MemberDTO;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/MemberAuth.mvc")
public class MemberAuth extends HttpServlet {

    ServletContext app;
    MemberDAO dao;

    @Override
    public void init() throws ServletException {
        app = this.getServletContext();

        dao = new MemberDAO(app);
        dao.dbOpen();
    }

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String adminId = this.getServletContext().getInitParameter("admin_id");
        String userId = req.getParameter("id");
        String userPw = req.getParameter("pass");

        MemberDTO member = dao.getMemberInfo(userId, userPw);

        if (member != null) {
            String memberName = member.getName();
            if (adminId.equals(userId)) {
                req.setAttribute("authMessage", adminId + "는 관리자 입니다.");
            } else {
                req.setAttribute("authMessage", memberName + "회원님 반갑습니다.");
            }
        } else {
            req.setAttribute("authMessage", "귀하는 회원이 아닙니다.");
        }

        req.getRequestDispatcher("/chap12/MemberAuth.jsp").forward(req, res);
    }

    @Override
    public void destroy() {
        dao.dbClose();
    }

}
