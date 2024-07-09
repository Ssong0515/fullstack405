<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 24. 6. 18.
  Time: 오후 2:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isErrorPage="true" %>
<%--isErrorPage: 현재 페이지가 에러 처리 페이지인지 확인하는 속성 (기본값: false)--%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <div class="container mt-5">
        <h1>서비스 중 일시적인 오류가 발생했습니다.</h1>
        <p>
            오류명: <%= exception.getClass().getName() %><br />
            오류 메시지: <%= exception.getMessage() %>
        </p>
    </div>

</body>
</html>
