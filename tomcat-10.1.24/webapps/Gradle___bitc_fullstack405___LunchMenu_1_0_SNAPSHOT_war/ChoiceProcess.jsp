<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 24. 6. 20.
  Time: 오후 5:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>메뉴 추천 프로세스</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>

    <script>
        const foods = ['중국집', '햄버거', '라멘', '한식당', '돈까스', '콩불', '은하수카레', '밀면', '깻잎떡볶이', '마제소바', '볶음밥', 'add menu'];

        const randomFoodIndex = Math.floor(Math.random() * foods.length);
        const randomFood = foods[randomFoodIndex];

        document.getElementById("rollButton").onclick = function() {
            const randomFoodIndex = Math.floor(Math.random() * foods.length);
            const randomFood = foods[randomFoodIndex];

            document.getElementById("foods").innerHTML = randomFood;
        }
    </script>

</head>
<body>

</body>
</html>
