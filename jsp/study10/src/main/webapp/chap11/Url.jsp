<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 24. 7. 1.
  Time: 오후 2:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Url</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>

</head>
<body>
<div class="container mt-5">
    <h3 class="my-3">url 태그로 링크 주소 만들기</h3>
    <%
        String url2 = "./inc/OtherPage.jsp";
    %>

    <c:url value="./inc/OtherPage.jsp" var="url">
        <c:param name="user_param1" value="첫번째 파라미터"></c:param>
        <c:param name="user_param2">두번째 파라미터</c:param>
    </c:url>

    <a href="${ url }" target="_blank" class="btn btn-link">OtherPage.jsp</a>
    <a href="<%=url2%>" target="_blank" class="btn btn-link">OtherPage2.jsp</a>
</div>
</body>
</html>
