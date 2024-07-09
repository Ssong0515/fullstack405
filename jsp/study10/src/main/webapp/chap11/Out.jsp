<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 24. 7. 1.
  Time: 오후 2:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Out</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>

</head>
<body>
<div class="container mt-5">
<c:set var="iTag">
    i 태그는 <i>기울임</i>을 표현합니다.
</c:set>
<%--<c:set var="iTag" value="i 태그는 <i>기울임</i>을 표현합니다." />--%>

    <h4>기본 사용</h4>
    <c:out value="${ iTag }"/>

    <h4>escapeXml 속성</h4>
    <c:out value="${ iTag }" escapeXml="false"/>

    <h4>default 속성</h4>
    <c:out value="${ param.name}" default="이름 없음"/>

    <c:catch var="eMessage">
    <c:out value= "${ ㄴㅇㄹ }" default="빈 문자열도 값입니다."/>
    </c:catch>
    예외 : ${ eMessage }
    </div>
    </body>
    </html>
