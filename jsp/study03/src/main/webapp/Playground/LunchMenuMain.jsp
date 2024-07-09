<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 24. 6. 20.
  Time: 오후 5:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>점심 메뉴 추천 사이트</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>

</head>
<body>

<div>
    <nav class="navbar navbar-expand-lg bg-body-secondary">
        <h1 class="display-5">점심 메뉴 추천</h1>
    </nav>

    <div class="container">

        <form action="#">

            <div class="row">
                <div class="card col" style="width: 18rem;">
                    <img src="./이미지/화창한.jpg" class="card-img-top" alt="...">
                    <div class="form-check text-center">
                        <label class="form-check-label d-block text-center" for="sunnyId">
                            화창한 날씨
                        </label>
                        <input class="form-check-input d-block" type="radio" name="weather" value="1" id="sunnyId">
                    </div>
                </div>

                <div class="card col" style="width: 18rem;">
                    <img src="./이미지/화창한.jpg" class="card-img-top" alt="...">
                    <div class="form-check text-center">
                        <label class="form-check-label d-block text-center" for="cloudId">
                            흐린 날씨
                        </label>
                        <input class="form-check-input d-block" type="radio" name="weather" value="2" id="cloudId">
                    </div>
                </div>

                <div class="card col" style="width: 18rem;">
                    <img src="./이미지/비오는.jpg" class="card-img-top" alt="...">
                    <div class="form-check text-center">
                        <label class="form-check-label d-block text-center" for="rainId">
                            비오는 날씨
                        </label>
                        <input class="form-check-input d-block" type="radio" name="weather" value="3" id="rainId">
                    </div>
                </div>
            </div>

            <div class="d-flex justify-content-center">
                <a href="file:///C:/fullstack405/%EC%A0%90%EC%8B%AC%EB%A9%94%EB%89%B4/index.html" type="submit" class="btn btn-primary">확인</a>
            </div>

        </form>


    </div>
</div>


</body>
</html>
