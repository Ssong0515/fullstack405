<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 24. 6. 21.
  Time: 오후 4:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>


<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Title</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>

</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String searchText = request.getParameter("searchText");
%>

<%@ include file="dbConn.jsp"%>

<div class="container mt-5">
    <h2 class="text-center">Statement로 데이터 조회하기</h2>

    <%
        /*
        데이터베이스에 sql 쿼리문을 전달하기 위한 클래스
        Statement: 간단한 sql 쿼리문을 사용할 경우 사용, 한번 사용 후 리소스를 해제
        PrepareStatement: 복잡한 형태의 sql 쿼리문을 사용할 경우 사용, 여러번 재활용 가능,
        sql 문 내에 ? 특수기호를 사용하고 나중에 해당 위치에 데이터를 추가하여 sql 쿼리문을 완성시킴
         */

        Statement stmt = null;
        // ResultSet: 데이터베이스에서 select 쿼리문을 사용하여 조회된 데이터를 저장할 수 있는 클래스
        ResultSet rs = null;

        try {
            String sql = "SELECT id, pass, name, regidate FROM member ";
            sql += "WHERE id = '" + searchText + "' ";

            stmt = conn.createStatement();
            // executeQuery(): select문 실행 시 사용하는 명령어, 실행 결과를 ResultSet 타입으로 반환
            // executeUpdate(): insert, update, delete 문 실행 시 사용하는 명령어, 실행 결과를 int 타입으로 반환
            rs = stmt.executeQuery(sql);

            // next(): ResultSet의 메서드, 출력할 데이터 존재 여부 확인
            // getString(): ResultSet의 메서드, 매개변수: 칼럼명 or index 번호 , 반환값: String
            // getInt(): ResultSet의 메서드, 반환값: Int
            // getXXX(): ResultSet의 메서드, 반환값: XXX 타입
            while (rs.next()) {
                String id = rs.getString("id");
                String pass = rs.getString("pass");
                String name = rs.getString("name");
                String regiDate = rs.getString("regidate");

                out.println("사용자 ID: " + id + "<br>");
                out.println("사용자 비밀번호: " + pass + "<br>");
                out.println("사용자 이름: " + name + "<br>");
                out.println("등록 일자: " + regiDate + "<br>");
            }

        } catch (SQLException e) {
            out.println("데이터 조회 중 오류 발생");
            out.println(e.getMessage());
        } finally {
            // 리소스 해제 시 ResultSet -> Statement -> Connection 순서로 리소스 해제
            if (rs != null) {
                rs.close();
            }
            if (stmt != null) {
                stmt.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
    %>
</div>

</body>
</html>
