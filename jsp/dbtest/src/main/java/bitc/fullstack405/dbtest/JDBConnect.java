package bitc.fullstack405.dbtest;

import jakarta.servlet.ServletContext;

import java.sql.*;

public class JDBConnect {
    public Connection conn;
    public Statement stmt;
    public PreparedStatement pstmt;
    public ResultSet rs;

    public JDBConnect() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            String dbUrl = "jdbc:mysql://localhost:3306/testdb1?characterEncoding=utf-8&serverTimezone=UTC";
            String dbUser = "test1";
            String dbPass = "full405";

            conn = DriverManager.getConnection( dbUrl, dbUser, dbPass );
            System.out.println("DB 연결 성공 (기본 생성자 사용)");
        } catch (Exception e) {
            System.out.println("DB 연결 중 오류 발생");
            e.printStackTrace();
        }
    }

    public JDBConnect(String driver, String dbUrl, String dbUser, String dbPass) {
        try {
//            데이터베이스 드라이버 로드
            Class.forName(driver);
//            데이터베이스 접속
            conn = DriverManager.getConnection(dbUrl, dbUser, dbPass);

            System.out.println("DB 연결 성공 (매개변수가 있는 생성자)");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public JDBConnect(ServletContext application) {
        try {
            String driver = application.getInitParameter("MySqlDriver");
            String dbUrl = application.getInitParameter("MySqlServerUrl");
            String dbUser = application.getInitParameter("MySqlUserId");
            String dbPass = application.getInitParameter("MySqlUserPw");
            String dbOpt1 = application.getInitParameter("MySqlOpt1");
            String dbOpt2 = application.getInitParameter("MySqlOpt2");

            dbUrl += "?" + dbOpt1 + "&" + dbOpt2;
            Class.forName(driver);
            conn = DriverManager.getConnection(dbUrl, dbUser, dbPass);
            System.out.println("DB 연결 성공");
        } catch (Exception e) {

        }
    }

    public void close() {
        try {
            if (rs != null) { rs.close();};
            if (stmt != null) { stmt.close(); }
            if (pstmt != null) { pstmt.close(); }
            if (conn != null) { conn.close(); }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
