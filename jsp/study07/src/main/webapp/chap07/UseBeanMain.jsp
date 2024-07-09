<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 24. 6. 26.
  Time: 오전 10:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>UseBeanMain</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>

</head>
<body>
<div class="container mt-5">
    <h2 class="text-center">액션 태그</h2>
    <h3 class="text-center">자바빈즈 생성하기</h3>
    <jsp:useBean id="person" class="bitc.fullstack405.study07.Person" scope="request" />

    <h3 class="text-center">setProperty 액션 태그로 자바빈즈 속성 지정하기</h3>
    <jsp:setProperty name="person" property="name" value="임꺽정" />
    <jsp:setProperty name="person" property="age" value="41" />

    <h3 class="text-center">getProperty 액션 태그로 자바빈즈 속성 읽기</h3>
    <ul class="list-group">
        <li class="list-group-item">이름: <jsp:getProperty name="person" property="name" /></li>
        <li class="list-group-item">나이: <jsp:getProperty name="person" property="age" /></li>
    </ul>

</div>
</body>
</html>
