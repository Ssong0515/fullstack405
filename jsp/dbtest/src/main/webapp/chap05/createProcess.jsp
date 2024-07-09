<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 24. 6. 24.
  Time: 오전 10:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>createProcess</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>

</head>
<body>

<%
    request.setCharacterEncoding("UTF-8");
    Statement stmt = null;
    String tableName = request.getParameter("tableName");
    String sql = "CREATE TABLE ";
    sql += tableName;
    sql += (" ('testColmn1' int, 'testColmn2' int)");
%>

<%@ include file="dbConn.jsp" %>

<%

    try {
        stmt = conn.createStatement();
        int count = stmt.executeUpdate(sql);
        out.println(count + "개 테이블 생성 완료");
    } catch (SQLException e) {
        out.println("생성 중 오류 발생");
        out.println("SQLException: " + e.getMessage());
    } finally {
        try {
            if (stmt != null) {
                stmt.close();
            }
            if (conn != null) {
                conn.close();
            }
        } catch (Exception e) {}
    }
%>

</body>
</html>
