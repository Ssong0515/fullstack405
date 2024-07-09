<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 24. 6. 25.
  Time: 오후 2:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%@ page import="bitc.fullstack405.study06.database.MemberDAO" %>
<%@ page import="bitc.fullstack405.study06.database.MemberDTO" %>

<%
    // 클라이언트에서 전달받은 사용자 id/pw를 가져옴
    request.setCharacterEncoding("UTF-8");
    String userId = request.getParameter("userId");
    String userPw = request.getParameter("userPw");

    MemberDAO dao = new MemberDAO();
    dao.dbOpen();

    boolean result = dao.isMember(userId, userPw);

    if (result == true) {
        MemberDTO member = dao.getMemberInfo(userId);

        session.setAttribute("userId", member.getId());
        session.setAttribute("userName", member.getName());
        session.setAttribute("regidate", member.getRegiDate());

        response.sendRedirect("LoginOk.jsp");
    }
    else {
        response.sendRedirect("LoginFail.jsp");
    }


    dao.dbClose();
%>