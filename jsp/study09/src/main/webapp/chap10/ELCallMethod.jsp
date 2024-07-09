<%@ page import="bitc.fullstack405.study09.MyELClass" %><%--
  Created by IntelliJ IDEA.
  User: it
  Date: 24. 6. 28.
  Time: 오후 2:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="mytag" uri="/WEB-INF/MyTagLib.tld" %>
<%
    MyELClass myClass = new MyELClass();
    pageContext.setAttribute("myClass", myClass);
%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>ELCallMethod</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>

</head>
<body>
<div class="container mt-5">
    <h3 class="my-3">영역에 저장 후 메서드 호출하기</h3>
    001225-3000000 => ${ myClass.getGender("001225-3000000") } <br />
    001225-2000000 => ${ myClass.getGender("001225-2000000") }

    ${ MyELClass.showGugudan(7) }

    <ul class="list-group">
        <li class="list-group-item">mytag:isNumber("100") => ${ mytag:isNumber("100") }</li>
        <li class="list-group-item">mytag:isNumber("이백") => ${ mytag:isNumber("이백") }</li>
    </ul>
</div>
</body>
</html>
