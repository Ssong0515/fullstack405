<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 24. 6. 26.
  Time: 오전 9:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>IncludeMain</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>

</head>
<body>
<%
    String outerPath1 = "./inc/OuterPage1.jsp";
    String outerPath2 = "./inc/OuterPage2.jsp";

    pageContext.setAttribute("pAttr", "동명왕");
    request.setAttribute("rAttr", "온조왕");
%>

<div class="container mt-5">
    <h2 class="text-center">지시어와 액션 태그 동작 방식 비교</h2>
    <h3 class="text-center">지시어로 페이지 포함하기</h3>

    <%@ include file="./inc/OuterPage1.jsp"%>

<%--    오류: 지시어는 표현식 <%=%>를 사용 할 수 없다 %>--%>
<%--    <%@ include file="<%=outerPath1%>"%>--%>

    <p>외부 파일에 선언한 변수 : <%=newVal1%></p>

    <hr>

    <h3 class="text-center">액션 태그로 페이지 포함하기</h3>
    <jsp:include page="./inc/OuterPage2.jsp" />
    <jsp:include page="<%=outerPath2%>"></jsp:include>
<%--    오류: 액션 태그의 include는 외부 파일로 이동하여 실행하고 결과만 가져오는 방식 --%>
<%--    실제로 페이지 변경이 발생 하는 부분이기 때문에 외부 파일에서 선언한 변수 사용 불가능 --%>
<%--    <p>외부 파일에 선언한 변수 : <%=newVar2%></p>--%>
</div>

</body>
</html>
