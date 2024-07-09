package bitc.fullstack405.study12.database;

import com.mysql.cj.protocol.Resultset;
import jakarta.servlet.ServletContext;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class JDBConnect {
    private String dbDriver;
    private String dbUrl;
    private String dbUser;
    private String dbPass;

    public Connection conn;
    public PreparedStatement pstmt;
    public ResultSet rs;

    public JDBConnect(){
        this(
                "com.mysql.cj.jdbc.Driver", "jdbc:mysql://localhost:3306/testdb1?characterEncoding=UTF-8&serverTimezone=UTC", "test1", "full405"
        );
    }

    public JDBConnect(ServletContext application) {
        this(
                application.getInitParameter("MySqlDriver"),
                application.getInitParameter("MySqlUrl"),
                application.getInitParameter("MySqlUser"),
                application.getInitParameter("MySqlPass")
        );
    }

    public JDBConnect(String dbDriver, String dbUrl, String dbUser, String dbPass) {
        this.dbDriver = dbDriver;
        this.dbUrl = dbUrl;
        this.dbUser = dbUser;
        this.dbPass = dbPass;
    }

    public void dbOpen(){
        try {
            Class.forName(dbDriver);
            conn = DriverManager.getConnection(dbUrl, dbUser, dbPass);
            System.out.println("데이터베이스가 연결되었습니다.");
        } catch(Exception e) {
            System.out.println("데이터 베이스");
            e.printStackTrace();
        }
    }

    public void dbClose(){
        try {
            if (rs != null) { rs.close(); }
            if (pstmt != null) { pstmt.close(); }
            if (conn != null) { conn.close(); }
        } catch (Exception e) {
            System.out.println("데이터 베이스 리소스 해제 중 오류 발생");
            e.printStackTrace();
        }
    }
}
