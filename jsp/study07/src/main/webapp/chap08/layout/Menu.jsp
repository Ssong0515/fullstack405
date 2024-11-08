<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 24. 6. 27.
  Time: 오전 10:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%-- 절대 경로 --%>
<%-- 리소스의 위치를 최상위 root를 기준으로 찾는 방식 --%>
<%-- root: 윈도우에서는 각 드라이브의 최상위 폴더 (C:\, D:\) --%>
<%-- 리눅스에서는 최상위 디렉토리(root)를 /로 표현함 --%>
<%-- 웹 환경은 tomcat에서 지정한 디렉토리를 root 디렉토리로 설정 --%>
<%-- / : 최상위 디렉토리를 의미, 각각의 디렉토리를 구분하는 기호--%>
<%-- ~ : 웹에서는 미사용, 운영체제에서 사용, 현재 계정의 홈 디렉토리를 의미 --%>

<%-- 상대 경로 --%>
<%-- 현재 파일의 위치를 기준으로 다른 리소스를 찾아가는 방식 --%>
<%-- 동일한 디렉토리일 경우 . 생략 가능 --%>
<%-- . : 현재 디렉토리를 의미 --%>
<%-- .. : 현재 디렉토리보다 한단계 상위 디렉토리를 의미 --%>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
    <div class="container-fluid">
        <a href="/chap08/List.jsp" class="navbar-brand">게시판</a>
        <ul class="navbar-nav">
            <li class="nav-item">
                <a href="#" class="nav-link">메뉴 1</a>
            </li>
            <li class="nav-item">
                <a href="#" class="nav-link">메뉴 2</a>
            </li>
            <li class="nav-item">
                <a href="#" class="nav-link">메뉴 3</a>
            </li>
        </ul>
        <div class="ms-auto">
            <%
                if (session.getAttribute("userId") == null) {
                    out.println("<a href='./login/LoginForm.jsp' class='btn btn-outline-success'>로그인</a>");
                } else {
            %>
            <span class="navbar-text me-3"><%=session.getAttribute("userName")%>님 반갑습니다.</span>
            <a href="/chap08/login/Logout.jsp" class="btn btn-outline-secondary">로그아웃</a>
            <%
                }
            %>
        </div>
    </div>
</nav>