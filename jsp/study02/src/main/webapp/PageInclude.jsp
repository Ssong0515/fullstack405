<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 24. 6. 19.
  Time: 오후 4:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@page import="bitc.fullstack405.study02.dto.Person" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>PageInclude</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>

</head>
<body>

<h4>Include 페이지</h4>

<%
    int pInteger2 = (Integer)(pageContext.getAttribute("pageInteger"));
    String pString2 = pageContext.getAttribute("pageString").toString();
    Person pPerson2 = (Person) (pageContext.getAttribute("pagePerson"));
%>

<ul>
    <li>Integer 객체: <%= pInteger %></li>
    <li>String 객체: <%= pString %></li>
    <li>Person 객체: <%= pPerson.getName() %>, <%= pPerson.getAge() %></li>
</ul>

</body>
</html>