<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 24. 7. 2.
  Time: 오전 11:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%
    request.setCharacterEncoding("UTF-8");
    String userId = request.getParameter("userId");
    String userPw = request.getParameter("userPw");

    if (userId.equals("test1") && userPw.equals("1234")) {
        session.setAttribute("userId", userId);
        session.setAttribute("userPw", userPw);
        session.setAttribute("userName", "테스터 유저1");
        request.getRequestDispatcher("LoginOk.jsp").forward(request, response);
    } else {
        response.sendRedirect("LoginFail.jsp");
    }

%>