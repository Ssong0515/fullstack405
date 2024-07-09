<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 24. 7. 1.
  Time: 오전 9:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>If</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>

</head>
<body>
<c:set var="number" value="100" />
<c:set var="string" value="JSP" />

<div class="container">
    <h4 class="my-3">JSTL의 if 태그로 짝수/홀수 판단하기</h4>
    <c:if test="${ number mod 2 eq 0}" var="result">
        ${ number }는 짝수 입니다. <br/>
    </c:if>
    result : ${ result } <br/>

    <h4 class="my-3">문자열 비교와 else 구문 흉내내기</h4>
    <c:if test="${ string eq 'Java' }" var="result2" >
        문자열은 Java 입니다. <br/>
    </c:if>
    <c:if test="${ not result2 }">
        'Java'가 아닙니다. <br/>
    </c:if>

    <h4 class="my-3">조건식 주의사항</h4>
    <c:if test="100" var="result3">
        EL이 아닌 정수를 지정하면 false
    </c:if>
    result3 : ${ result3 } <br/>

    <c:if test="tRuE" var="result4">
        대소문자 구분 없이 "tRuE"인 경우 true <br/>
    </c:if>
    result4 : ${ result4 } <br/>

    <c:if test=" ${ true } " var="result5">
        EL 양쪽에 빈 공백이 있는 경우 false <br/>
    </c:if>
    result5 : ${ result5 } <br/>
</div>
</body>
</html>
