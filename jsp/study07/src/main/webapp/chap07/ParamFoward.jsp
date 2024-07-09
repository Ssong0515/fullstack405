<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 24. 6. 26.
  Time: 오전 11:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>ParamFoward</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>

</head>
<body>
<jsp:useBean id="person" class="bitc.fullstack405.study07.Person" scope="request"/>

<div class="container mt-5">
    <h2 class="text-center">forward된 페이지에서 매개변수 확인</h2>
    <ul class="list-group">
        <li class="list-group-item"><jsp:getProperty name="person" property="name"/></li>
        <li class="list-group-item">나이: <jsp:getProperty name="person" property="age"/></li>
        <li class="list-group-item">본명: <%=request.getParameter("param1")%></li>
        <li class="list-group-item">출생: <%=request.getParameter("param2")%></li>
        <li class="list-group-item">특징: <%=request.getParameter("param3")%></li>
    </ul>
</div>
</body>
</html>
