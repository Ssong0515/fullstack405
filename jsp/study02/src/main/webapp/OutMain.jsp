<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 24. 6. 19.
  Time: 오후 2:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>OutMain.jsp</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>

</head>
<body>
<%
    out.print("출력되지 않는 텍스트");
    // clearBuffer: 임시 저장소인 버퍼 안의 데이터를 삭제
    out.clearBuffer();

    out.print("<h2>out 내장 객체</h2>");

    out.print("출력 버퍼의 크기: " + out.getBufferSize() + "<br>");
    out.print("남은 버퍼의 크기: " + out.getRemaining() + "<br>");

//    flush: 임시 저장소인 버퍼의 내용을 즉시 html 화면에 모두 출력 및 버퍼 내용 삭제
    out.flush();
    out.print("flush 후 버퍼의 크기: " + out.getRemaining() + "<br>");

    out.print(1);
    out.print(false);
    out.print('가');
%>
</body>
</html>
