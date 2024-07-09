<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 24. 6. 24.
  Time: 오전 11:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>UpdateProcess02</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>

</head>
<body>
<%
    PreparedStatement pstmt = null;
    String userId = request.getParameter("userId");
    String userPw = request.getParameter("userPw");
    String userName = request.getParameter("userName");
    String sql = "UPDATE member SET pass = ?, name = ? WHERE id = ?";
%>

<%@ include file="dbConn.jsp" %>

<%
    try {
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, userPw);
        pstmt.setString(2, userName);
        pstmt.setString(3, userId);
        int result = pstmt.executeUpdate();
        out.println(result + " 개 업데이트 완료");
    } catch (SQLException e) {
        out.println("업데이트 중 오류 발생");
        out.println("SQLException: " + e.getMessage());
    } finally {
        try {
            if (pstmt != null) { pstmt.close(); }
            if (conn != null) { conn.close(); }
        } catch (Exception e) {}
    }

%>


</body>
</html>

<%-- clearParameters(): PreparedStatement 사용하여 여러번 데이터를 수정하여 입력 시,
setXXX() 메소드를 사용하여 ? 에 입력한 데이터를 삭제--%>
<%-- addBatch():  PreparedStatement 사용하여 여러번 데이터를 수정하여 입력 시,
여러번 데이터베이스로 sql문을 전달하는 것이 아닌 메모리 상에 저장해놓고 executeBatch() 호출 시 한번에 전달 --%>
<%-- executeBatch(): addBatch()를 통해 저장 해 놓은 뭉텅이를 한번에 데이터베이스에 전달 --%>
