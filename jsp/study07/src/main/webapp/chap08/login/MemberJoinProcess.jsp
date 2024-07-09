<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 24. 6. 27.
  Time: 오후 12:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%@ page import="bitc.fullstack405.study07.database.MemberDAO" %>
<%@ page import="bitc.fullstack405.study07.database.MemberDTO" %>
<%@ page import="bitc.fullstack405.study07.util.JSFunction" %>

<%
    request.setCharacterEncoding("UTF-8");
    String id = request.getParameter("id");
    String pwd = request.getParameter("pwd");
    String name = request.getParameter("name");

    MemberDTO member = new MemberDTO();
    member.setId(id);
    member.setPass(pwd);
    member.setName(name);

    MemberDAO dao = new MemberDAO();
    dao.dbOpen();
    int result = dao.insertMember(member);

    if (result > 0) {
        JSFunction.alertLocation("회원 가입에 성공했습니다", "LoginFrom.jsp", out);
    } else {
        JSFunction.alertBack("회원 가입에 실패했습니다.", out);
    }

    dao.dbClose();
%>