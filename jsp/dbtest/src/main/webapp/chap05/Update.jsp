<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 24. 6. 24.
  Time: 오전 9:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Update</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>


    <script>

    </script>
</head>
<body>

<div class="container mt-5">
    <div class="row">
        <div class="col-sm-4 mx-auto">
            <form action="UpdateProcess02.jsp" method="post">
                <div class="my-3">
                    <label for="user_id" class="form-label">아이디: </label>
                    <input type="text" class="form-control" id="user_id" name="userId" placeholder="내용을 수정할 사용자의 아이디를 입력하세요">
                </div>
                <div class="my-3">
                    <label for="user-pw" class="form-label">비밀번호: </label>
                    <input type="password" class="form-control" id="user-pw" name="userPw" placeholder="수정할 비밀번호를 입력 하세요">
                </div>
                <div class="my-3">
                    <label for="user-name" class="form-label">이름: </label>
                    <input type="text" class="form-control" id="user-name" name="userName" placeholder="수정할 이름을 입력하세요">
                </div>
                <div class="my-3 d-grid gap-2">
                    <button type="submit" class="btn btn-warning">수정</button>
                    <button type="reset" class="btn btn-secondary" id="btn-cancel">취소</button>
                </div>
            </form>
        </div>
    </div>
</div>

</body>
</html>
