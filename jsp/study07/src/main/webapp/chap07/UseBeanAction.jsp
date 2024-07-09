<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 24. 6. 26.
  Time: 오전 10:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>UseBeanAction</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>

</head>
<body>
<div class="container mt-5">
    <h3 class="text-center">액션 태그로 폼값 한번에 받기</h3>
    <jsp:useBean id="person" class="bitc.fullstack405.study07.Person"/>
<%--    setProperty의 property 속성에 * 사용 시, name속성으로 지정한 자바 빈즈 객체에 모든 데이터를 입력함--%>
<%--    전달된 모든 파라미터의 이름과 지정한 자바빈즈의 필드명이 동일한 경우에 사용 가능--%>
    <jsp:setProperty name="person" property="*" />

    <br>
    <ul class="list-group">
        <li class="list-group-item">이름: <jsp:getProperty name="person" property="name"/></li>
        <li class="list-group-item">나이: <jsp:getProperty name="person" property="age"/></li>
    </ul>
</div>
</body>
</html>
