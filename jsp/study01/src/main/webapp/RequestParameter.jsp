<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 24. 6. 18.
  Time: 오후 4:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>내장 객체 - request (RequestParameter.jsp)</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>
</head>
<body>
<%
//  setCharacterEncoding: 클라이언트에서 전달된 데이터를 지정한 문자셋으로 변환
//    이전 버전에서는 한글이 깨질수 있기 때문에 안전을 위해 실행
    request.setCharacterEncoding("UTF-8");
//    getParameter()으로 받은 데이터는 항상 String 타입
//    getParameter(변수명)에서 사용한 변수명은 클라이언트에서 전달한 데이터의 이름이며, input 태그의 name 속성 값
    String id = request.getParameter("id");
    String gender = request.getParameter("gender");
//    getParameterValues(변수명): 클라이언트에서 지정한 이름으로 전달한 데이터를 배열로 가져옴
    String[] favo = request.getParameterValues("favo");
    String favoStr = "";
    if (favo != null) {
        for (int i = 0; i < favo.length; i++) {
            favoStr += favo[i] + " ";
        }
    }
    String intro = request.getParameter("comment").replace("\r\n", "<br>");
%>
<div class="container mt-5">
    <ul class="list-group">
<%--        표현식으로 화면에 출력 --%>
        <li class="list-group-item">아이디 : <%= id %></li>
        <li class="list-group-item">성별 : <%= gender %></li>
        <li class="list-group-item">관심사항 : <%= favoStr %></li>
        <li class="list-group-item">자기소개 : <%= intro %></li>
    </ul>
</div>
</body>
</html>
