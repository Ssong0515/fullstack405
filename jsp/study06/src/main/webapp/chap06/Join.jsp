<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 24. 6. 25.
  Time: 오후 2:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Join</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>

    <script>
        document.addEventListener("DOMContentLoaded", function () {
           var btnCancel = document.querySelector("#btn-cancel");
           btnCancel.addEventListener("click", function () {
               history.back();
           })
        });
    </script>

</head>
<body>
<div class="container mt-5">
    <h2 class="text-center">회원 가입</h2>
    <div class="row">
        <div class="col-sm-4 mx-auto">
            <form action="JoinProcess.jsp" method="post">
                <div class="my-3">
                    <label for="user-id" class="form-label">사용자 ID: </label>
                    <input type="text" class="form-control" id="user-id" name="userId" placeholder="사용할 ID를 입력하세요">
                </div>
                <div class="my-3">
                    <label for="user-pw" class="form-label">비밀번호: </label>
                    <input type="text" class="form-control" id="user-pw" name="userPw" placeholder="사용할 비밀번호를 입력하세요">
                </div>
                <div class="my-3">
                    <label for="user-name" class="form-label">사용자 이름: </label>
                    <input type="text" class="form-control" id="user-name" name="userName" placeholder="사용할 이름을 입력하세요">
                </div>
                <div class="my-3 d-grid gap-2">
                    <button type="submit" class="btn btn-primary">회원 가입</button>
                    <button type="reset" class="btn btn-secondary" id="btn-cancel">취 소</button>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
