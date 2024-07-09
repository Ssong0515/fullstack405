<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 24. 6. 20.
  Time: 오전 11:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>CookieMain</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>

</head>
<body>
<h2>1. 쿠키(Cookie) 설정</h2>
<%
    Cookie cookie = new Cookie("myCookie", "쿠키맛나요");
    cookie.setPath(request.getContextPath());
    cookie.setMaxAge(3600);
    response.addCookie(cookie);
%>

<h2>2. 쿠키 설정 직후 쿠키값 확인하기</h2>
<%
    Cookie[] cookies = request.getCookies();
    if (cookies != null) {
        for (Cookie c : cookies) {
            String cookieName = c.getName();
            String cookieValue = c.getValue();

            out.println(String.format("%s : %s<br/>", cookieName, cookieValue));
        }
    }
%>

<h2>3. 페이지 이동 후 쿠키값 확인하기</h2>
<a href="CookieResult.jsp">
    다음 페이지에서 쿠키값 확인하기
</a>

</body>
</html>
