<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 24. 6. 28.
  Time: 오후 12:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Operator1</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>

</head>
<body>
<div class="container mt-5">
    <%
        int num1 = 3;
        pageContext.setAttribute("num2", 4);
        pageContext.setAttribute("num3", "5");
        pageContext.setAttribute("num4", "8");
    %>

    <h3 class="text-center">변수 선언 및 할당</h3>
    스크립틀릿에서 선언한 변수: ${ num1 } <br>
    page 영역에 저장된 변수: ${ num2 } <br>
    변수 할당 및 즉시 출력: ${ num1 = 7 } <br>
    변수 할당 및 별도 출력: ${ num2 = 8;''} => ${ num2 } <br>
    num1 = ${ num1 }, num2 = ${ num2 }, num3 = ${ num3 }, num4 = ${ num4 }

    <h3 class="mt-5 text-center">산술 연산자</h3>
    num1 + num2 = ${ num1 + num2 } <br>
    num1 - num2 = ${ num1 - num2 } <br>
    num1 * num2 = ${ num1 * num2 } <br>
    num3 / num4 = ${ num3 / num4 } <br>
    num3 div num4 = ${ num3 div num4 } <br>
    num3 % num4 = ${ num3 % num4 } <br>
    num3 mod num4 = ${ num3 mod num4 } <br>

    <h3 class="mt-5 text-center"> + 연산자는 덧셈만 가능</h3>
<%--    EL에서는 데이터 타입 변환이 비교적 자유로움 --%>
    num1 + "34" : ${ num1 + "34" } <br>
    num1 + "-34" : ${ num1 + "-34" } <br>
    num1 - "34" : ${ num1 - "34" } <br>
<%--    + 연산자가 문자열 연결 연산자가 아닌 진짜 덧셈만 됨!! --%>
    num2 + "이십" : \${ num2 + "이십" } <br>
    "삼십" + "사십" : \${ "삼십" + "사십" }

    <h3 class="mt-5 text-center">비교 연산자</h3>
    num4 > num3 : ${ num4 gt num3 } <br>
    num1 < num3 : ${ num1 lt num3 } <br>
    num2 >= num4 : ${ num2 ge num4 } <br>
    num1 == num4 : ${ num1 eq num4 }

    <h3 class="mt-5 text-center">논리 연산자</h3>
    num3 <= num4 && num3 == num4 : ${ num3 le num4 and num3 eq num4} <br>
    num3 >= num4 || num3 != num4 : ${ num3 ge num4 or num3 ne num4 }

</div>
</body>
</html>
