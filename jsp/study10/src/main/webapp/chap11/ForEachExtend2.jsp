<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 24. 7. 1.
  Time: 오전 11:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page import="bitc.fullstack405.study10.Person" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.LinkedList" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>ForEachExtend2</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>

</head>
<body>
<div class="container mt-5">
    <h4 class="my-3">List 컬렉션 사용하기</h4>
    <%
        LinkedList<Person> lists = new LinkedList<>();
        lists.add(new Person("맹사성", 34));
        lists.add(new Person("장영실", 44));
        lists.add(new Person("신숙주", 54));
    %>
    <c:set var="lists" value="<%= lists %>"/>
    <c:forEach items="${ lists }" var="list">
        <li>
            이름 : ${ list.name }, 나이 ${ list.age }
        </li>
    </c:forEach>

    <h4 class="my-3">Map 컬렉션 사용하기</h4>
    <%
        Map<String, Person> maps = new HashMap<>();
        maps.put("1st", new Person("맹사성", 34));
        maps.put("2st", new Person("장영실", 44));
        maps.put("1st", new Person("신숙주", 54));
    %>
    <c:set var="maps" value="<%= maps %>" />
    <c:forEach items="${ maps }" var="map">
        <li>Key => ${ map.key } <br />
            Value => 이름 : ${ map.value.name }, 나이 : ${ map.value.age }
        </li>
    </c:forEach>
</div>

</body>
</html>
