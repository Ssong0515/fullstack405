<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 24. 6. 20.
  Time: 오후 12:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%
    String popupMode = "on";

    Cookie[] cookies = request.getCookies();
    if (cookies != null) {
        for (Cookie c: cookies) {
            String cookieName = c.getName();
            String cookieValue = c.getValue();
            if (cookieName.equals("PopupClose")) {
                popupMode = cookieValue;
            }
        }
    }
%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>PopupMain</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>

    <style>
        div#popup {
            position: absolute; top: 100px; left: 100px; color: yellow;
            width: 300px; height: 100px; background-color: gray;
        }
        div#popup>div {
            position: relative; background-color: #ffffff; top: 0px;
            border: 1px solid gray; padding: 10px; color: black;
        }
    </style>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

    <script>
        // html 태그의 로드가 종료 된 후 아래의 자바스크립트가 동작하도록 이벤트 설정
        $(document).ready(function () {
            // html 태그의 id 값이 'cloaseBtn'인 태그를 선택
            $("#closeBtn").on("click", function () {
                // 지정한 태그 숨김
                $('#popup').hide();
                var chkVal = $("input:checkbox[id=inactiveToday]:checked").val();
                if (chkVal == 1) {
                    // ajax 통신 실행, 자바스크립트로 서버와 비동기 통신을 진행함
                    $.ajax({
                        url: './PopupCookie.jsp',
                        type: 'get',
                        data: {inactiveToday: chkVal},
                        dataType: "text",
                        success: function (resData) {
                            // location.reload() 현재 페이지 새로 고침
                            if (resData != '') location.reload();
                        }
                    })
                }
            })
        })

        // $('#closeBtn').click(function () {
        //    $('#popup').hide();
        //    var chkVal = $("input:checkbox[id=inactiveToday]:checked").val();
        //    if (chkVal == 1) {
        //        $.ajax({
        //            url: './PopupCookie.jsp',
        //            type: 'get',
        //            data: {inactiveToday: chkVal},
        //            dataType: "text",
        //            success: function (resData) {
        //                if (resData != '') location.reload();
        //            }
        //        })
        //    }
        //
        // })

    </script>

</head>
<body>
<h2>팝업 메인 페이지</h2>
<%
    for (int i = 1; i <= 10; i++) {
        out.print("현재 팝업창은 " + popupMode + " 상태 입니다.<br/>");
    }

    if (popupMode.equals("on")) {
%>
<div id="popup">
    <h2 align="center">공지사항 팝업입니다.</h2>
    <div align="right">
        <form name="popFrm">
            <input type="checkbox" id="inactiveToday" value="1">
            하루 동안 열지 않음
            <input type="button" value="닫기" id="closeBtn">
        </form>
    </div>
</div>
<%
    }
%>
</body>
</html>
