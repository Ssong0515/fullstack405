<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 24. 6. 18.
  Time: 오후 5:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="PlaygroundCal.jsp"%>

<%!
    int x = 10;
    int y = 20;
%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PlaygroundInclude</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>
</head>
<body>
<div>
    x: <%= x %> y: <%= y %><br>
    <span>sum: <%= sum(x, y) %></span><br>
    <span>sub: <%= sub(x, y) %></span><br>
    <span>mul: <%= mul(x, y) %></span><br>
    <span>div: <%= div(x, y) %></span>><br>
    -------------------------------------<br>
    <%
        out.println("sum: " + sum(x, y) + "<br>");
        out.println("sub: " + sub(x, y) + "<br>");
        out.println("mul: " + mul(x, y) + "<br>");
        out.println("div: " + div(x, y));
    %>

</div>

</body>
</html>
