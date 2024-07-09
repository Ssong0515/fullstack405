<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 24. 6. 19.
  Time: 오후 12:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>내장 객체 - response</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>

</head>
<body>
<h2>1. 로그인 폼</h2>
<%
    String loginErr = request.getParameter("loginErr");
    if (loginErr != null) {
        out.print("로그인 실패");
    }

%>
<form action="./ResponseLogin2.jsp" method="post">
    아이디: <input type="text" name="user_id"/> <br/>
    패스워드: <input type="text" name="user_pwd"/> <br/>
    <input type="submit" value="로그인">
</form>

<h2>2. HTTP 응답 헤더 설정하기</h2>
<form action="./ResponseHeader.jsp" method="get">
    날짜 형식: <input type="text" name="add_date" value="2024-06-19 12:00"> <br>
    숫자 형식: <input type="text" name="add_int" value="8282"> <br>
    문자 형식: <input type="text" name="add_str" value="홍길동"> <br>
    <input type="submit" value="응답 헤더 설정 & 출력">
</form>
</body>
</html>
