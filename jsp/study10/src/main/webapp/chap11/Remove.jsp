<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 24. 7. 1.
  Time: 오전 9:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<c:set var="scopeVar" value="Page Value"/>
<c:set var="scopeVar" value="Request Value" scope="request"/>
<c:set var="scopeVar" value="Session Value" scope="session"/>
<c:set var="scopeVar" value="Application Value" scope="application"/>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Remove</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>

</head>
<body>
<div class="container text-center mt-5">
    <h4>출력하기</h4>
    <ul class="list-group">
        <li class="list-group-item">scopeVar: ${ scopeVar }</li>
        <li class="list-group-item">requestScope.scopeVar : ${ requestScope.scopeVar }</li>
        <li class="list-group-item">sessionScope.scopeVar : ${ sessionScope.scopeVar }</li>
        <li class="list-group-item">applicationScope.scopeVar : ${ applicationScope.scopeVar }</li>
    </ul>

    <h4 class="my-3">session 영역에서 삭제하기</h4>
    <c:remove var="scopeVar" scope="session" />
    <ul class="list-group">
        <li class="list-group-item">sessionScope.scopeVar : ${ sessionScope.scopeVar }</li>
    </ul>

    <h4 class="my-3">scope 지정 없이 삭제하기</h4>
    <c:remove var="scopeVar" />
    <ul class="list-group">
        <li class="list-group-item">scopeVar : ${ scopeVar }</li>
        <li class="list-group-item">requestScope.scopeVar : ${ requestScope.scopeVar }</li>
        <li class="list-group-item">applicationScope.scopeVar : ${ applicationScope.scopeVar }</li>
    </ul>
</div>
</body>
</html>
