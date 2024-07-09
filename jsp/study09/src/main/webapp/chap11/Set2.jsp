<%@ page import="java.util.ArrayList" %>
<%@ page import="bitc.fullstack405.study09.Person" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: it
  Date: 24. 6. 28.
  Time: 오후 4:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Set2</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>

</head>
<body>
<div class="container mt-5">
    <h4 class="text-center my-3">List 컬렉션 이용하기</h4>
    <%
        ArrayList<Person> pList = new ArrayList<Person>();
        pList.add(new Person("성삼문", 55));
        pList.add(new Person("박팽년", 60));
    %>
    <c:set var="personList" value="<%= pList %>" scope="request" />
    <ul class="list-group">
        <li class="list-group-item">이름 : ${ requestScope.personList[0].name }</li>
        <li class="list-group-item">나이 : ${ personList[0].age }</li>
    </ul>

    <h4 class="text-center my-3">컬렉션 이용하기</h4>
    <%
        Map<String, Person> pMap = new HashMap<String, Person>();
        pMap.put("personArgs1", new Person("하위지", 65));
        pMap.put("personArgs2", new Person("이개", 67));
    %>
    <c:set var="personMap" value="<%= pMap %>" scope="request" />
    <ul class="list-group">
        <li class="list-group-item">이름 : ${ requestScope.personMap.personArgs2.name }</li>
        <li class="list-group-item">나이 : ${ personMap.personArgs2.age }</li>
    </ul>
</div>
</body>
</html>
