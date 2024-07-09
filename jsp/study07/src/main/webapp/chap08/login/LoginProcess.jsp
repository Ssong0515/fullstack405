<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 24. 6. 27.
  Time: 오후 12:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%@ page import="bitc.fullstack405.study07.database.MemberDAO" %>
<%@ page import="bitc.fullstack405.study07.database.MemberDTO" %>
<%@ page import="bitc.fullstack405.study07.util.JSFunction" %>
<%@ page import="java.time.temporal.JulianFields" %>

<%
    request.setCharacterEncoding("UTF-8");
    String id = request.getParameter("id");
    String pwd = request.getParameter("pwd");

    MemberDAO dao = new MemberDAO();
    dao.dbOpen();

    boolean result = dao.isLogin(id, pwd);

    if (result) {
        MemberDTO member = dao.getMemberInfo(id);

        session.setAttribute("userId", member.getId());
        session.setAttribute("userName", member.getName());
        session.setMaxInactiveInterval(60 * 10);

        JSFunction.alertLocation("로그인 되었습니다.", "../List.jsp", out);
    } else {
        JSFunction.alertBack("ID 및 Passwoard가 맞지 않습니다.", out);
    }

    dao.dbClose();
%>