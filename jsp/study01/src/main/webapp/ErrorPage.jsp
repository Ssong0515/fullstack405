<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 24. 6. 18.
  Time: 오후 2:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" errorPage="IsErrorPage.jsp" %>
<%--errorPage: 현재 페이지에서 오류가 발생했을 경우 지정한 페이지로 이동 시키는 --%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    int myAge = Integer.parseInt(request.getParameter("age")) + 10;
    out.println("10년 후 당신의 나이는 " + myAge + "입니다.");
%>
</body>
</html>
