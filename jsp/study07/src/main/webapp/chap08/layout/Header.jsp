<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 24. 6. 27.
  Time: 오전 10:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%
    String pageName = "";

    String result = request.getRequestURI();
    int index = result.lastIndexOf("/") + 1;
    result = result.substring(index);

    switch (result) {
        case "List.jsp":
            pageName = "목록";
            break;
        case "View.jsp":
            pageName = "상세";
            break;
        case "Write.jsp":
            pageName = "글쓰기";
            break;
        case "Edit.jsp":
            pageName = "수정";
            break;
        case "LoginForm.jsp":
            pageName = "로그인";
            break;

        case "MemberJoin.jsp":
            pageName = "회원가입";
            break;
    }
%>

<header class="px-sm-5 text-center" style="margin-top: 100px">
    <div class="container">
        <div class="rounded-3 bg-secondary bg-opacity-25 px-4 py-5">
            <h1 class="display-4">회원제 게시판 <%=pageName%> 페이지</h1>
        </div>
    </div>
</header>