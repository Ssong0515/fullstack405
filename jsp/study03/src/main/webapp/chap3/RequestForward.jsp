<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 24. 6. 20.
  Time: 오전 9:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="bitc.fullstack405.study03.dto.Person" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>RequestForward</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>

</head>
<body>
<h2>포워드로 전달된 페이지</h2>
<h4>RequestMain 파일의 리퀘스트 영역 속성 읽기</h4>
<%
    Person pPerson = (Person) (request.getAttribute("requestPerson"));
%>
<ul>
    <li>String 객체: <%= request.getAttribute("requestString") %></li>
<%--    <li>--%>
<%--    <%--%>
<%--        if (pPerson == null) {--%>
<%--            out.print("person 값 없음");--%>
<%--        } else { --%>
<%--            Person 객체: <%= pPerson.getName() %>, <%= pPerson.getAge() %>     --%>
<%--        }--%>
<%--    %>--%>
<%--    </li>--%>
    <li>Boolean 객체: <%= request.getAttribute("requestBoolean")%></li>
</ul>
<h4>매개변수로 전달된 값 출력하기</h4>
<%
    request.setCharacterEncoding("UTF-8");
    out.println(request.getParameter("paramHan"));
    out.println(request.getParameter("paramEng"));
%>

</body>
</html>
