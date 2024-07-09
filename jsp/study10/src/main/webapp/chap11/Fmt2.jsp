<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 24. 7. 1.
  Time: 오후 3:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Fmt2</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>

</head>
<body>
<c:set var="today" value="<%= new java.util.Date() %>" />

<div class="container mt-5">
    <h4 class="my-3">날짜 포멧</h4>
    <p>full : <fmt:formatDate value="${ today }" type="date" dateStyle="full" /> </p>
    <p>short : <fmt:formatDate value="${ today }" type="date" dateStyle="short" /> </p>
    <p>long : <fmt:formatDate value="${ today }" type="date" dateStyle="long" /> </p>
    <p>default : <fmt:formatDate value="${ today }" type="date" dateStyle="default" /> </p>

    <h4 class="my-3">시간 포멧</h4>
    <p>full : <fmt:formatDate value="${ today }" type="time" timeStyle="full" /> </p>
    <p>short : <fmt:formatDate value="${ today }" type="time" timeStyle="short" /> </p>
    <p>long : <fmt:formatDate value="${ today }" type="time" timeStyle="long" /> </p>
    <p>default : <fmt:formatDate value="${ today }" type="time" timeStyle="default" /> </p>

    <h4 class="my-3">날짜/시간 표시</h4>
    <fmt:formatDate value="${ today }" type="both" dateStyle="full" timeStyle="full" /> <br />
    <fmt:formatDate value="${ today }" type="both" pattern="yyyy-MM-dd hh:mm:ss" />

    <h4 class="my-3">타임존 설정</h4>
    <fmt:timeZone value="GMT">
        <fmt:formatDate value="${ today }" type="both" dateStyle="full" timeStyle="full" />
    </fmt:timeZone>


</div>

</body>
</html>
