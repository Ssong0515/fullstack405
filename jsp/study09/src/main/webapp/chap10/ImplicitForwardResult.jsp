<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 24. 6. 28.
  Time: 오전 9:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Forward</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>

</head>
<body>
<h2>ForwardImplicitResult</h2>
<h3>각 영역에 저장된 속성 읽기</h3>
<ul class="list-group">
    <li class="list-group-item">페이지 영역: ${pageScope.scopeValue}</li>
    <li class="list-group-item">리퀘스트 영역: ${requestScope.scopeValue}</li>
    <li class="list-group-item">세션 영역: ${sessionScope["scopeValue"]}</li>
    <li class="list-group-item">어플리케이션 영역: ${applicationScope['scopeValue']}</li>
</ul>

<h3>영역 지정 없이 속성 읽기</h3>
<ul>
    <li>${scopeValue}</li>
</ul>
</body>
</html>
