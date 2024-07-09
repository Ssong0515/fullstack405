<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 24. 6. 24.
  Time: 오전 10:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>create</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>

</head>
<body>

<div class="container mt-5">
    <div class="row">
        <div class="col-sm-4 mx-auto">
            <form action="createProcess.jsp" method="post">
                <div class="my-3">
                    <label for="table-name" class="form-label">테이블 이름</label>
                    <input type="text" class="form-control" id="table-name" name="tableName" placeholder="생성할 테이블 이름을 입력">
                </div>
                <div class="my-3 d-grid gap-2">
                    <button type="submit" class="btn btn-outline-danger">생성</button>
                    <button type="reset" class="btn btn-secondary" id="btn-cancel">취소</button>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
