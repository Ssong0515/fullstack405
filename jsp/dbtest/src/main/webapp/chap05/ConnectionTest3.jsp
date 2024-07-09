<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 24. 6. 24.
  Time: 오후 2:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="bitc.fullstack405.dbtest.JDBConnect" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>ConnectionTest3</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>

</head>
<body>
<div class="container mt-5">
    <h2 class="text-center">web.xml을 사용하여 DB 연결</h2>

    <div>
        <%
            String driver = application.getInitParameter("MySqlDriver");
            String dbUrl = application.getInitParameter("MySqlServerUrl");
            String dbUser = application.getInitParameter("MySqlUserId");
            String dbPass = application.getInitParameter("MySqlUserPw");
            String dbOpt1 = application.getInitParameter("MySqlOpt1");
            String dbOpt2 = application.getInitParameter("MySqlOpt2");

//            xml 파일에서 ?, & 특수 기호를 정상적으로 읽지 못하는 경우가 있음
//            해당 부분을 따로 분리하여 자바 코드에서 하나의 문자열로 만듦
//            특수기호 정상적으로 인식되지 않을 경우 html의 특수기호로 입력 시 정상적으로 인식됨
            dbUrl += "?" + dbOpt1 + "&" + dbOpt2;

            JDBConnect jdbCon = new JDBConnect(driver, dbUrl, dbUser, dbPass);

            try {
                String sql = "SELECT * FROM member ";
                jdbCon.stmt = jdbCon.conn.createStatement();
                jdbCon.rs = jdbCon.stmt.executeQuery(sql);

                while (jdbCon.rs.next()) {
                    out.println("<p>" + jdbCon.rs.getString("name") + "</p>");
                }
            } catch (SQLException e) {
                out.println("데이터 조회 중 오류 발생");
                out.println("SQLException: " + e.getMessage());
            } finally {
                jdbCon.close();
            }

        %>
    </div>
</div>
</body>
</html>
