<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 24. 6. 20.
  Time: 오후 5:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>점심 추천 메인</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>

    <%
        String result = "정해지지 않음";
    %>

    <style>
        button {
            width: 80px;
            height: 80px;
            left: 5%;
            border-radius: 40px;
            position: absolute;
        }
    </style>

</head>
<body>

<label id="foods"></label>
<button type="button" id="rollButton">Click!</button>
<script src="random.js"></script>

<div id="counter">Clicks: 0</div>
<h3> <%= result %></h3>

<script>
    let count = 0;

    document.getElementById('rollButton').addEventListener('click', function() {
        count++;
        document.getElementById('counter').innerText = 'Clicks: ' + count;
    });
</script>

</body>
</html>
