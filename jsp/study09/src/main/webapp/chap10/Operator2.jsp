<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: it
  Date: 24. 6. 28.
  Time: 오후 12:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%
    pageContext.setAttribute("num1", 9);
    pageContext.setAttribute("num2", 10);

    pageContext.setAttribute("nullStr", null);
    pageContext.setAttribute("emptyStr", "");
    pageContext.setAttribute("lengthZero", new Integer[0]);
    pageContext.setAttribute("sizeZero", new ArrayList<Object>());
%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Operator2</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>

</head>
<body>
<div class="container">
    <h3 class="mt-5 text-center"></h3>
    empty nullStr : ${ empty nullStr} <br>
    empty emptyStr : ${ empty emptyStr} <br>
    empty lengthZero : ${ empty lengthZero } <br>
    empty sizeZero : ${ empty sizeZero }

    <h3 class="mt-5 text-center">삼항 연산자</h3>
    num1 gt num2 ? "참" : "거짓" => ${ num1 gt num2 ? "num1이 크다" : "num2가 크다" }

    <h3 class="mt-5 text-center">null 연산</h3>
    null + 10 : ${ null + 10} <br>
    nullStr + 10 : ${ nullStr + 10 } <br>
    param.noVar > 10 : ${ param.noVar < 10 }
</div>
</body>
</html>
