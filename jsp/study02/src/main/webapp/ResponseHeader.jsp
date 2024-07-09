<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 24. 6. 19.
  Time: 오후 12:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="java.util.Collection" %>
<%@ page import="java.text.SimpleDateFormat" %>

<%
    // SimpleDateFormat: 자바에서 제공하는 시간 관련 클래스, 사용자가 원하는 형식대로 날짜 및 시간을 표현할 수 있음
    SimpleDateFormat s = new SimpleDateFormat("yyyy-MM-dd HH:mm");
    long add_date = s.parse(request.getParameter("add_date")).getTime();
    int add_int = Integer.parseInt(request.getParameter("add_int"));
    String add_str = request.getParameter("add_str");

    // response 객체를 사용하여 문서의 헤더에 데이터를 추가
    // addDateHeader(key, value): 지정한 키와 값을 헤더에 날짜 타입으로 저장
    // addHeader(key, value): 지정한 키와 값을 헤더에 저장
    // setHeader(key, value): 동일한 키가 있으면 값을 변경, 동일한 키가 없으면 add와 같음
    response.addDateHeader("myBirthday", add_date);
    response.addIntHeader("myNumber", add_int);
    response.addIntHeader("myNumber", 1004);
    response.addHeader("myName", add_str);
    response.setHeader("myName", "안중근");
%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ResponseHeader</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>

</head>
<body>
<h2>응답 헤더 정보 출력하기</h2>
<%
    Collection<String> headerNames = response.getHeaderNames();
    for (String hName : headerNames) {
        String hValue = response.getHeader(hName);

%>
<li><%= hName %> : <%= hValue %>
</li>

<%
    }
%>
<h2>myNumber만 출력하기</h2>
<%
    Collection<String> myNumber = response.getHeaders("myNumber");
    for (String myNum : myNumber) {
%>
<li>myNumber: <%= myNum %></li>
<%
    }
%>
</body>
</html>
