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

    <title>ParamMain</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>

</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String pValue = "방랑시인";
%>

<div class="container mt-5">
<h2 class="text-center">액션 태그 param 사용하기</h2>

<jsp:useBean id="person" class="bitc.fullstack405.study07.Person" scope="request"/>
<jsp:setProperty name="person" property="name" value="김삿갓"/>
<jsp:setProperty name="person" property="age" value="56"/>
<jsp:forward page="ParamFoward.jsp?param1=김병연">
    <jsp:param name="param2" value="경기도 양주"/>
    <jsp:param name="param3" value="<%=pValue%>"/>
</jsp:forward>
    </div>
    </body>
    </html>
