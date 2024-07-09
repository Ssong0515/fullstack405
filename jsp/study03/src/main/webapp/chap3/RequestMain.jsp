<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 24. 6. 20.
  Time: 오전 9:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="bitc.fullstack405.study03.dto.Person" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>RequestMain</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>

<h2>RequestMain</h2>

</head>
<body>

<%
    request.setAttribute("requestString", "request 영역의 문자열");
    request.setAttribute("requestPerson", new Person("안중근", 31));
    request.setAttribute("requestBoolean", true);
%>
<h2>request 영역의 속성값 삭제하기</h2>
<%
    request.removeAttribute("requestString");
    request.removeAttribute("requstInteger");
%>

<h2>request 영역의 속성값 읽기</h2>
<%
    Person rPerson = (Person) (request.getAttribute("requestPerson"));
%>
<ul>
    <li>String 객체: <%= request.getAttribute("requestString") %></li>
    <li>Person 객체: <%= rPerson.getName() %>, <%= rPerson.getAge() %></li>
    <li>Boolean 객체: <%= request.getAttribute("requestBoolean")%></li>
</ul>

<h2>포워드된 페이지에서 request 영역 속성값 읽기</h2>
<%--<%--%>
<%--    request.getRequestDispatcher(--%>
<%--            "RequestForward.jsp?paramHan=한글&paramEng=English").forward(request, response);--%>
<%--%>--%>

<%--<%--%>
<%--    response.sendRedirect("RequestForward.jsp");--%>
<%--%>--%>

<h2>a 태그로 페이지 했을 경우 request 영역 속성값 읽기</h2>
<a href="RequestForward.jsp?paramHan=한글&paramEng=English" target="_blank" class="btn btn-link">a 링크를 이용해 이동</a>

</body>

</html>
