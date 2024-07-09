<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 24. 6. 18.
  Time: 오후 2:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>Title</title>
</head>
<body>
<%
    try {
        int myAge = Integer.parseInt(request.getParameter("age")) + 10;
        out.println("10년 후 당신의 나이는 " + myAge + "입니다.");
    } catch (Exception e) {
        out.println("예외 발생: 매개변수 age가 null 입니다.");
    }
%>
</body>
</html>
