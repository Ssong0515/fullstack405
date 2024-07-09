<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 24. 6. 28.
  Time: 오전 11:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="bitc.fullstack405.study09.Person" %>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>CollectionUse</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>

</head>
<body>
<div class="container mt-5">
    <h2 class="text-center">List 컬렉션</h2>
    <%
        List<Object> aList = new ArrayList<Object>();
        aList.add("청해진");
        aList.add(new Person("장보고", 28));
        pageContext.setAttribute("Ocean", aList);
    %>
    <ul class="list-group">
        <li class="list-group-item">0번째 요소: ${ Ocean[0] }</li>
        <li class="list-group-item">1번째 요소: ${ Ocean[1].name }, ${ Ocean[1].age }</li>
        <li class="list-group-item">2번째 요소: ${ Ocean[2] }</li>
    </ul>

    <h2 class="text-center mt-5"> Map 컬렉션</h2>
    <%
        Map<String, String> map = new HashMap<String, String>();
        map.put("한글", "훈민정음");
        map.put("Eng", "English");
        pageContext.setAttribute("king", map);
    %>
    <ul class="list-group">
        <li class="list-group-item">영문 key: ${ king["Eng"] }, ${ king['Eng'] }, ${ king.Eng }</li>
        <li class="list-group-item">한글 key: ${ king["한글"] }, ${ king['한글'] }, ${ king['한글'] }</li>
    </ul>

</div>
</body>
</html>
