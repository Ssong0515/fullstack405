<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 24. 6. 27.
  Time: 오후 3:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="bitc.fullstack405.study07.util.JSFunction" %>

<%
    if (session.getAttribute("userId") == null) {
        JSFunction.alertLocation("로그인 후 이용해 주세요", "/chap08/login/LoginForm.jsp", out);
        return;
    }
%>