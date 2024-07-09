<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 24. 6. 28.
  Time: 오전 10:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>FormResult</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>

</head>
<body>
<h2>EL로 form값 받기</h2>

<ul class="list-group">
    <li class="list-group-item">이름: ${param.userName}</li>
    <li class="list-group-item">성별: ${param["gender"]}</li>
    <li class="list-group-item">학력: ${param['grade']}</li>

<%--    기존의 표현식에서는 null 발생은 오류 발생 --%>
<%--    EL에서는 예외가 관대해서 무시하고 실행 됨 --%>
    <li class="list-group-item">관심사항: ${paramValues.inter[0]}
        ${paramValues.inter[1]}
        ${paramValues.inter[2]}
        ${paramValues.inter[3]}
    </li>
</ul>
</body>
</html>
