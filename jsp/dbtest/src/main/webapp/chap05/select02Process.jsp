<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 24. 6. 24.
  Time: 오전 11:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.security.cert.Extension" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>select02Process</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>

</head>
<body>

<%
    request.setCharacterEncoding("utf-8");
    String userId = request.getParameter("searchText");
%>

<%@ include file="dbConn.jsp"%>

<%
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    String sql = "SELECT id, pass, name, regidate ";
    sql += "FROM member ";
    sql += "WHERE id = ? ";

    try {
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, userId);

        // executeQuery: 데이터베이스로 sql문 전달 및 조회된 결과를 받아옴
        rs = pstmt.executeQuery();
        
        while (rs.next()) {
            String id = rs.getString("id");
            String pass = rs.getString("pass");
            String name = rs.getString("name");
            String regidate = rs.getString("regidate");

            out.println("사용자 ID: " + id + "<br>");
            out.println("사용자 비밀번호: " + pass + "<br>");
            out.println("사용자 이름: " + name + "<br>");
            out.println("사용자 정보 등록 날짜: " + regidate);
        }
    } catch (SQLException e) {
        out.println("데이터베이스 조회 중 오류 발생");
        out.println("SQLException: " + e.getMessage());
    } finally {
        try {
            if (rs != null) { rs.close();}
            if (pstmt != null) { pstmt.close();}
            if (conn != null) { conn.close(); }
        } catch (Exception e) {}
    }
%>


</body>
</html>
