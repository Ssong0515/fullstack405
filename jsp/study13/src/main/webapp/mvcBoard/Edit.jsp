<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 24. 7. 4.
  Time: 오전 10:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>


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
        document.addEventListener("DOMContentLoaded", function (){
            const btnList = document.querySelector("#btn-list");
            btnList.addEventListener("click", function (){
                location.href = "/mvcboard/list.do";
            })
        })
    </script>

</head>
<body>

<c:import url="../layout/Header.jsp"/>

<main class="container mt-5">
    <section>
        <div class="row">
            <div class="col-sm">
                <form action="/mvcboard/edit.do" method="post" enctype="multipart/form-data">
                    <input type="hidden" name="idx" value="${board.idx}">
                    <input type="hidden" name="oldOriFile" value="${board.oFile}">
                    <input type="hidden" name="oldSaveFile" value="${board.sFile}">
                    <div class="row mt-3">
                        <div class="col-sm">
                            <div class="form-floating">
                                <input type="text" class="form-control" id="title" name="title" value="${board.title}" placeholder="제목을 입력하세요">
                                <label for="title">제목을 입력하세요</label>
                            </div>
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-sm">
                            <div class="form-floating">
                                <input type="text" class="form-control" id="name" name="name" value="${board.name}" placeholder="작성자" readonly>
                                <label for="name">작성자</label>
                            </div>
                        </div>
                        <div class="col-sm">
                            <div class="form-floating">
                                <input type="text" class="form-control" id="post-date" name="postDate" value="${board.postDate}" placeholder="등록일" readonly>
                                <label for="post-date">등록일자</label>
                            </div>
                        </div>
                        <div class="col-sm">
                            <div class="form-floating">
                                <input type="text" class="form-control" id="visit-count" name="visitCount" value="${board.visitCount}" placeholder="조회수" readonly>
                                <label for="visit-count">조회수</label>
                            </div>
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-sm">
                            <div class="form-floating">
                                <textarea class="form-control" name="content" id="content" rows="5" style="height: 200px" placeholder="내용을 입력하세요">${board.content}</textarea>
                                <label for="content">내용을 입력하세요.</label>
                            </div>
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-sm">
                            <input type="file" class="form-control" id="upload-file" name="uploadFile">
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-sm">
                            <button type="button" class="btn btn-primary" id="btn-list">목록</button>
                        </div>
                        <div class="col-sm d-flex justify-content-end">
                            <button type="submit" class="btn btn-warning me-2">수정</button>
                            <button type="reset" class="btn btn-info">다시쓰기</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </section>
</main>

<c:import url="../layout/Footer.jsp"/>


</body>
</html>
