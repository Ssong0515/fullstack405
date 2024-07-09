<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 24. 6. 19.
  Time: 오후 12:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ResponseLogin.jsp </title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>

</head>
<body>
<%
    String id = request.getParameter("user_id");
    String pwd = request.getParameter("user_pwd");

    if (id.equalsIgnoreCase("test1") && pwd.equalsIgnoreCase("1234")) {
//        sendRedirect(URL): response 객체에서 제공하는 멤버 메서드로 다른 페이지로 강제 이동
//        response 객체에 의해서 이동할 페이지를 클라이언트에게 요청하라고 전달함
//        클라이언트는 사용자 입력 없이 응답 받은 페이지를 열어달라고 서버에 재 요청함
//        서버는 재 요청받은 페이지를 클라이언트에게 전달함
        response.sendRedirect("ResponseWelcome.jsp");
    } else {
//        getRequestDispatcher(URL): sendRedirect()와 비슷한 기능, 지정한 다른 페이지로 강제 이동
//        forward(request, response): 실제로 페이지를 이동

//        sendRedirect() 비슷하지만 이동할 페이지를 서버에서 직접 설정하고 서버에서 이동 한 후 그 결과를 클라이언트에게 전달함
//
        request.getRequestDispatcher("ResponseMain.jsp?loginErr=1").forward(request, response);
//        response.sendRedirect("ResponseMain.jsp");
    }

%>
</body>
</html>
