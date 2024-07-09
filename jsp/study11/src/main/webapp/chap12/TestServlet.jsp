<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 24. 7. 2.
  Time: 오전 9:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>TestServlet</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>

</head>
<body>
<div class="container mt-5">
    <h2>web.xml에서 맵핑 후 JSP에서 출력하기</h2>
    <p>
        <strong><%= request.getAttribute("message")%>
        </strong>
        <br/>
        <a href="/TestServlet.do" target="_blank" class="btn btn-link">web.xml로 설정한 서블릿 바로가기</a>
        <br/>
    </p>
    <br />
    <div>
        <a href="/TestServlet2.do" target="_blank" class="btn btn-link">@WebServlet(annotation 어노테이션)으로 설정한 서블릿 바로가기</a>
        <div>
            <p class="fs-3">TestServlet2에서 전달한 내용 : <%=request.getAttribute("msg")%></p>
        </div>
    </div>
</div>
</body>
</html>
