<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 24. 6. 24.
  Time: 오전 10:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>insert02Process</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>

</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String userId = request.getParameter("userId");
    String userPw = request.getParameter("userPw");
    String userName = request.getParameter("userName");
%>

<%@ include file="dbConn.jsp" %>

<div class="container mt-5">
    <h2 class="text-center">PreparedStatement로 insert 하기</h2>

    <%
        // PrepatedStatement: 하나의 객체로 여러 번의 쿼리를 실행하거나 동일한 쿼리문으로 특정 값만 변경하면서
        // 여러번의 실행이 필요할 경우, 매개변수의 수가 많을 경우 사용하는 클래스
        // setXXX() 메서드를 사용하여 sql 쿼리문의 ? 기호에 데이터를 입력하여 사용
        // setXXX()는 모든 기본 데이터 타입에 대해서 메서드를 제공함
        // setInt(index, 데이터)
        // setString(index, 데이터)
        // setDouble(index, 데이터)
        // setObject(index, 데이터)
        // setDate(index, 데이터): 날짜&시간 데이터
        // setTimestamp(index, 데이터): 시간 데이터만
        PreparedStatement pstmt = null;
        String sql = "INSERT INTO member (id, pass, name, regidate) ";
        sql += "VALUES(?, ?, ?, now())";

        try {
            // Connection 클래스 타입의 객체를 통해서 객체 생성 시,
            // Statement와 달리 PreparedStatement는 매개변수 sql문을 사용함
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, userId);
            pstmt.setString(2, userPw);
            pstmt.setString(3, userName);
            int result = pstmt.executeUpdate();

            if (result > 0) {
                out.println(result + "개의 항목 입력");
            } else {
                out.println("입력 된 항목이 없습니다.");
            }

        } catch (SQLException e) {
            out.println("데이터베이스 입력 중 오류가 발생");
            out.println("SQLException: " + e.getSQLState());
        } finally {
            try {
                if (pstmt != null) {
                    pstmt.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (Exception e) {
            }
        }
    %>
</div>

</body>
</html>
