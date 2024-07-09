<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 24. 6. 25.
  Time: 오전 10:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.rmi.server.ExportException" %>

<%
    request.setCharacterEncoding("UTF-8");
    String userId = request.getParameter("userId");
    String userPw = request.getParameter("userPw");

    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    String driver = "com.mysql.cj.jdbc.Driver";
    String dbUrl = "jdbc:mysql://localhost:3306/testdb1?characterEncoding=utf-8&serverTimezone=UTC";
    String dbUser = "test1";
    String dbPw = "full405";

    Class.forName(driver);
    conn = DriverManager.getConnection(dbUrl, dbUser, dbPw);
    try {
        String sql = "SELECT count(*) AS cnt ";
        sql += "FROM member ";
        sql += "WHERE id = ? ";
        sql += "AND pass = ?";

        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, userId);
        pstmt.setString(2, userPw);

        rs = pstmt.executeQuery();

        while (rs.next()) {
            int count = rs.getInt("cnt");

            if (count > 0) {
                sql = "SELECT id, pass, name, regidate FROM member WHERE id = ?";
                pstmt.clearParameters();
                pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, userId);

                ResultSet result = pstmt.executeQuery();

                if (result.next()) {
                    session.setAttribute("userId", result.getString("id"));
                    session.setAttribute("userName", result.getString("name"));
                    session.setAttribute("regiDate", result.getString("regidate"));
                    session.setMaxInactiveInterval(60 * 10);
                    response.sendRedirect("LoginOk.jsp");
                } else {
                    response.sendRedirect("LoginFail.jsp");
                }

            } else {
                response.sendRedirect("LoginFail.jsp");
            }
        }

    } catch (SQLException e) {
        System.out.println("데이터베이스 사용 중 오류 발생");
        e.printStackTrace();
    } finally {
        try {
            if (rs != null) {
                rs.close();
            }
            if (pstmt != null) {
                pstmt.close();
            }
            if (conn != null) {
                conn.close();
            }
        } catch (Exception e) {
        }
    }

//    if (userId.equals("test1") && userPw.equals("1234")) {
//        session.setAttribute("userId", userId);
//        session.setAttribute("userName", "테스터01");
//        session.setMaxInactiveInterval(60 * 1);
//
//        response.sendRedirect("LoginOk.jsp");
//    } else {
//        response.sendRedirect("LoginFail.jsp");
//    }

%>