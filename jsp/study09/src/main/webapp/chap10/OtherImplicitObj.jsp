<%@ page import="bitc.fullstack405.study09.CookieManager" %><%--
  Created by IntelliJ IDEA.
  User: it
  Date: 24. 6. 28.
  Time: 오전 11:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%
    CookieManager.makeCookie(response, "ELCookie", "EL좋아요", 10);
%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>OtherImplicitObj</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>

</head>
<body>
<h3 class="text-center">쿠키값 읽기</h3>
<li>EL Cookie 값: ${ cookie.ELCookie.value }</li>

<h3 class="text-center">HTTP 헤더 읽기</h3>
<ul class="list-group">
    <li class="list-group-item">host: ${ header.host }</li>
    <li class="list-group-item">user-agent: ${ header['user-agent'] }</li>
    <li class="list-group-item">host: ${ header.cookie }</li>
</ul>

<h3 class="text-center">컨텍스트 초기화 매개변수 읽기</h3>
<li>MySQL Driver: ${ initParam.MySqlDriver}</li>

<h3 class="text-center">컨텍스트 루트 경로 읽기</h3>
<li>${ pageContext.request.contextPath }</li>
</body>
</html>
