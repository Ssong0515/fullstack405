<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 24. 7. 1.
  Time: 오전 10:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Choose</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>

</head>
<body>
<c:set var="number" value="100"/>

<div class="container mt-5">
    <h4 class="my-3">태그로 홀짝 판단하기</h4>
    <c:choose>
        <c:when test="${ number mod 2 eq 0 }">
            ${ number }는 짝수입니다.
        </c:when>
        <c:otherwise>
            ${ number }는 홀수 입ㄴ디ㅏ.
        </c:otherwise>
    </c:choose>

    <h4 class="my-3">국, 영, 수 점수를 입력하면 평균을 내어 학점 출력</h4>
    <form action="#" method="post" class="d-block justify-content-end">
        <div class="input-group mb-3">
            <label for="kor" class="input-group-text">국어: </label>
            <input type="text" id="kor" name="kor" class="form-control"/>
        </div>
        <div class="input-group mb-3">
            <label for="eng" class="input-group-text">영어: </label>
            <input type="text" id="eng" name="eng" class="form-control"/>
        </div>
        <div class="input-group mb-3">
            <label for="math" class="input-group-text">수학: </label>
            <input type="text" id="math" name="math" class="form-control"/>
        </div>
        <input type="submit" value="학점 구하기" class="btn btn-primary"/>
    </form>
</div>

<div class="text-center display-4 border rounded">
    <c:if test="${ not (empty param.kor or empty param.eng or empty param.math) }">
        <c:set var="avg" value="${ (param.kor + param.eng + param.math) / 3 }"/>
        <c:choose>
            <c:when test="${ avg >= 90 }">A 학점</c:when>
            <c:when test="${ avg >= 80 }">B 학점</c:when>
            <c:when test="${ avg >= 70 }">C 학점</c:when>
            <c:when test="${ avg >= 60 }">D 학점</c:when>
            <c:otherwise>F 학점</c:otherwise>
        </c:choose>
        입니다.
    </c:if>
</div>


</body>
</html>
