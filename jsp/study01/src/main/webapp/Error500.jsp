<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 24. 6. 18.
  Time: 오후 1:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage="PlaygroundErrorPage.jsp" %>
<html>
<head>
    <title>Error500.jsp</title>
</head>
<body>
<%
    out.print(10/0);

//    int myAge = Integer.parseInt(request.getParameter("age")) + 10;
//    out.println("10년 후 당신의 나이는 " + myAge + "입니다.");
%>
</body>
</html>
