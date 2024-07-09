<%@ page import="bitc.fullstack405.study12.database.MyFileDAO" %>
<%@ page import="java.util.List" %>
<%@ page import="bitc.fullstack405.study12.database.MyFileDTO" %>
<%@ page import="java.net.URLEncoder" %><%--
  Created by IntelliJ IDEA.
  User: it
  Date: 24. 7. 3.
  Time: 오후 2:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<%
    MyFileDAO dao = new MyFileDAO();
    dao.dbOpen();
    List<MyFileDTO> fileList = dao.selectFileList();
    dao.dbClose();
%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>FileList</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>

</head>
<body>
<div class="container mt-5">

    <h3 class="text-center">DB에 등록 된 파일 목록 보기</h3>

    <ul class="list-group my-3">
        <li class="list-group-item">
            <a href="FileUploadMain.jsp" class="btn btn-link">파일 등록</a>
        </li>
        <li class="list-group-item">
            <a href="MultiFileUploadMain.jsp" class="btn btn-link">파일 등록(다중 업로드)</a>
        </li>
    </ul>

    <table class="table table-hover table-striped">
        <thead>
        <tr>
            <th>번호</th>
            <th>제목</th>
            <th>카테고리</th>
            <th>원본 파일명</th>
            <th>저장된 파일명</th>
            <th>등록시간</th>
            <th>다운로드</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="file" items="<%=fileList%>">
            <tr>
                <td>${ file.idx }</td>
                <td>${ file.title }</td>
                <td>${ file.cate }</td>
                <td>${ file.ofile }</td>
                <td>${ file.sfile }</td>
                <td>${ file.postDate }</td>
<%--                업로드 된 파일을 다운로드 하기 위해 Download.jsp를 통해 서버로 요청 --%>
<%--                파라미터로 oName 오리지널 이름(원본 파일명) sName 수정된 파일명 --%>
<%--                URLEncoder : URL로 전송시 영어는 문제 없지만 한글은 깨질 수 있어서 인코딩 해줘서 변환 해줘야 안전함 --%>
                <td><a href="./Download.jsp?oName=${URLEncoder.encode(file.ofile, "UTF-8")}&sName=${URLEncoder.encode(file.sfile, "UTF-8")}" class="btn btn-link text-decoration-none">[다운로드]</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

</div>
</body>
</html>
