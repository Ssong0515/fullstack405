<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 24. 6. 26.
  Time: 오후 12:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="bitc.fullstack405.study07.database.BoardDAO" %>
<%@ page import="bitc.fullstack405.study07.database.BoardDTO" %>
<jsp:include page="login/LoginCheck.jsp"></jsp:include>

<%
    request.setCharacterEncoding("UTF-8");
    int num = Integer.parseInt(request.getParameter("num"));

    BoardDAO dao = new BoardDAO();
    dao.dbOpen();
    BoardDTO board = dao.selectBoardDetail(num);
    dao.dbClose();
%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Edit</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>

    <script>
        document.addEventListener("DOMContentLoaded", function () {
            var btnList = document.getElementById("btn-list");
            btnList.addEventListener("click", function () {
                location.href = "List.jsp";
            });

            var btnCancel = document.querySelector("#btn-cancel");
            btnCancel.addEventListener("click", function () {
                history.back();
            });
        });
    </script>
</head>
<body>

<%@ include file="layout/Header.jsp"%>
<%@ include file="layout/Menu.jsp"%>

<main class="container mt-5">
    <section>
        <form action="EditProcess.jsp" method="post">
            <div class="row my-3">
                <div class="col-sm">
                    <div class="input-group">
                        <span class="input-group-text caption1">번호</span>
<%--                        input 태그의 수정을 막기 위해서 readonly, disabled 두가지 속성 있음 --%>
<%--                        차이점: 해당 input 태그의 value 속성값을 서버로 전달 시, disabled는 name 속성이 있어도 서버로 데이터를 전달하지 않음 --%>
                        <input type="text" class="form-control" id="num" name="num" readonly value="<%=board.getNum()%>">
                    </div>
                </div>
                <div class="col-sm">
                    <div class="input-group">
                        <span class="input-group-text captionn1">작성자</span>
                        <input type="text" class="form-control" id="id" name="id" readonly value="<%=board.getId()%>">
                    </div>
                </div>
            </div>
            <div class="row my-3">
                <div class="col-sm">
                    <div class="input-group">
                        <span class="input-group-text caption1">작성일</span>
                        <input type="text" class="form-control" readonly value="<%=board.getPostDate()%>">
                    </div>
                </div>
                <div class="col-sm">
                    <div class="input-group">
                        <span class="input-group-text captionn1">조회수</span>
                        <input type="text" class="form-control" readonly value="<%=board.getVisitCount()%>">
                    </div>
                </div>
            </div>
            <div class="row my-3">
                <div class="col-sm">
                    <div class="input-group">
                        <span class="input-group-text caption2">제목</span>
                        <input type="text" class="form-control" id="title" name="title" value="<%=board.getTitle()%>">
                    </div>
                </div>
            </div>
            <div class="row my-3">
                <div class="col-sm">
                    <div class="input-group">
                        <span class="input-group-text caption2">내용</span>
                        <textarea class="form-control" name="content" id="content" rows="5"><%=board.getContent()%></textarea>
                    </div>
                </div>
            </div>
            <div class="row my-3">
                <div class="col-sm">
                    <button type="button" class="btn btn-outline-secondary" id="btn-list">목록</button>
                </div>
                <div class="col-sm d-flex justify-content-end">
                    <button type="submit" class="btn btn-warning me-3">수정 완료</button>
                    <button type="reset" class="btn btn-secondary" id="btn-cancel">취 소</button>
                </div>
            </div>
        </form>
    </section>
</main>

<jsp:include page="layout/Footer.jsp"/>

</body>
</html>
