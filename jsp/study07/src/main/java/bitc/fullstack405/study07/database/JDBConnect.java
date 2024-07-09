package bitc.fullstack405.study07.database;

import com.mysql.cj.protocol.Resultset;
import jakarta.servlet.ServletContext;

import java.sql.*;

public class JDBConnect {
    private String dbDriver;
    private String dbUrl;
    private String dbUser;
    private String dbPass;

    public Connection conn;
    public Statement stmt;
    public PreparedStatement pstmt;
    public ResultSet rs;

    public JDBConnect() {
        this(
                "com.mysql.cj.jdbc.Driver",
                "jdbc:mysql://localhost:3306/testdb1?characterEncoding=utf-8&serverTimezone=UTC",
                "test1",
                "full405"
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

    public void dbOpen() {
        try {
            Class.forName(dbDriver);
            conn = DriverManager.getConnection(dbUrl, dbUser, dbPass);
            System.out.println("DB connection successed");
        } catch (Exception e) {
            System.out.println("DB connection failed");
            e.printStackTrace();
        }
    }

    public void dbClose() {
        try {
            if (rs != null) { rs.close(); }
            if (stmt != null) { stmt.close(); }
            if (pstmt != null) { pstmt.close(); }
            if (conn != null) { conn.close(); }
            System.out.println("all closed");
        } catch (Exception e){}
    }
}
