<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 24. 6. 21.
  Time: 오후 3:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>insertProcess</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>

</head>
<body>
<div class="container mt-5">
    <%@ include file="dbConn.jsp"%>

    <%
        request.setCharacterEncoding("UTF-8");
        String userId = request.getParameter("userId");
        String userPw = request.getParameter("userPw");
        String useName = request.getParameter("userName");

//        Statement: 데이터베이스 서버로 sql 쿼리문을 전달하는 클래스
        Statement stmt = null;

        try {
//            sql 쿼리문 생성
            String sql = "insert into member (id, pass, name, regidate) ";
            sql += "values('" + userId + "', '" + userPw + "', '" + useName + "', now())";

//            Connection 클래스 타입의 객체 conn을 통해서 createStatement()를 호출하여 Statement 객체를 생성
            stmt = conn.createStatement();
//            쿼리문 전달하여 실행
//            몇건 완료 했는지 반환
            int result = stmt.executeUpdate(sql);
            out.println("회원 가입이 성공 했습니다.");

        } catch (SQLException e) {
            out.println("회원 가입이 실패 했습니다.");
            out.println("sqlexception:" + e.getMessage());

        } catch (Exception e) {
            out.println(e.getMessage());
        } finally {
//            데이터베이스가 외부 리소스이기 때문에 반드시 finally를 통해서 사용한 리소스를 닫아줘야 함
//            Statement(나중에 연 것)을 먼저 닫고
//            Connection(먼저 연 것)을 나중에 닫아줘야 함
            if (stmt != null) { stmt.close(); }
            if (conn != null) { conn.close(); }
        }
    %>
</div>
</body>
</html>
