<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 24. 6. 28.
  Time: 오후 3:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page import="bitc.fullstack405.study09.Person" %>
<%@ page import="java.util.Date" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Set1</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>

</head>
<body>
<div class="container mt-5">

    <c:set var="directVar" value="100"/>
    <c:set var="elVar" value="${ directVar mod 5 }"/>
    <c:set var="expVar" value="<%= new Date() %>"/>
    <c:set var="betweenVar">변수값 요렇게 설정</c:set>

    <h4 class="text-center my-3">EL을 이용해 변수 출력</h4>
    <ul class="list-group">
        <li class="list-group-item">directVar: ${ pageScope.directVar }</li>
        <li class="list-group-item">elVar : ${ elVar }</li>
        <li class="list-group-item">expVar : ${ expVar }</li>
        <li class="list-group-item">betweenVar : ${ betweenVar }</li>
    </ul>

    <h4 class="text-center my-3">자바빈즈 생성 1</h4>
    <c:set var="personVar1" value='<%= new Person("박문수", 50) %>' scope="request" />
    <ul class="list-group">
        <li class="list-group-item">이름 : ${ requestScope.personVar1.name }</li>
        <li class="list-group-item">나이 : ${ personVar1.age }</li>
    </ul>

    <h4 class="text-center my-3">자바빈즈 생성 2</h4>
    <c:set var="personVar2" value="<%= new Person()%>" scope="request" />
    <c:set target="${personVar2 }" property="name" value="정약용" />
    <c:set target="${personVar2 }" property="age" value="60" />
    <ul class="list-group">
        <li class="list-group-item">이름 : ${ personVar2.name }</li>
        <li class="list-group-item">나이 : ${ requestScope.personVar2.age}</li>
    </ul>
</div>
</body>
</html>
