<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 24. 6. 28.
  Time: 오전 10:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="bitc.fullstack405.study09.Person" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>ObjectResult</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>

</head>
<body>
<div class="container mt-5">
    <h2 class="text-center">영역을 통해 전달된 객체 읽기</h2>

    <ul class="list-group">
        <li class="list-group-item">Person 객체 => 이름 : ${ personObj.name }, 나이 : ${ personObj.age }</li>
        <li class="list-group-item">String 객체 => ${ requestScope.stringObj }</li>
        <li class="list-group-item">Integer 객체 => ${ integerObj }</li>

    </ul>
    <h2 class="text-center">매개변수로 전달 된 값 읽기</h2>
    <ul class="list-group">
        <li class="list-group-item">${ param.firstNum + param.secondNum }</li>
        <li class="list-group-item">${ param.firstNum} + ${param.secondNum }</li>
    </ul>
</div>
</body>
</html>
