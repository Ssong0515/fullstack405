<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 24. 7. 1.
  Time: 오후 3:27
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

    <title>Fmt1</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>

</head>
<body>
<div class="container mt-5">
    <h4 class="my-3">숫자 포멧 설정</h4>
    <c:set var="number1" value="12345" />
    콤마 O : <fmt:formatNumber value="${ number1 }" /> <br />
    콤마 X : <fmt:formatNumber value="${ number1 }" groupingUsed="false" /> <br />
    <fmt:formatNumber value="${number1}" type="currency" var="printNum1" />
    통화기호 : ${printNum1} <br />
    <fmt:formatNumber value="0.03" type="percent" var="printNum2" />
    퍼센트 : ${printNum2}

    <h4 class="my-3">문자열을 숫자로 변경</h4>
    <c:set var="number2" value="6,789.01" />
    <fmt:parseNumber value="${ number2 }" pattern="00,000.00" var="printNum3" />
    소수점까지 : ${ printNum3 } <br />
    <fmt:parseNumber value="${ number2 }" integerOnly="true" var="printNum4" />
    정수 부분만 : ${ printNum4 }
</div>
</body>
</html>
