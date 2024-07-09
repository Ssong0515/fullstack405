package bitc.fullstack405.study13.model;

import com.mysql.cj.protocol.Resultset;
import jakarta.servlet.ServletContext;

import java.sql.*;

public class JDBConnect {
    protected Connection conn;
    protected PreparedStatement pstmt;
    protected ResultSet rs;

    private String dbDriver;
    private String dbUrl;
    private String dbUserId;
    private String dbUserPw;

    protected boolean dbIsOpen = false;

    public JDBConnect() {
        this(
                "com.mysql.cj.jdbc.Driver",
                "jdbc:mysql://localhost:3306/testdb1?characterEncoding=UTF-8&serverTimezone=UTC",
                "test1",
                "full405"
        );
    }

    public JDBConnect(String dbDriver, String dbUrl, String dbUserId, String dbUserPw) {
        this.dbDriver = dbDriver;
        this.dbUrl = dbUrl;
        this.dbUserId = dbUserId;
        this.dbUserPw = dbUserPw;
    }

    public JDBConnect(ServletContext application) {
        this(
                application.getInitParameter("MySqlDriver"),
                application.getInitParameter("MySqlUrl"),
                application.getInitParameter("MySqlUserId"),
                application.getInitParameter("MySqlUserPw")
        );
    }

    public boolean isDbIsOpen () {
        return dbIsOpen;
    }

    public void dbOpen() {
        try {
            Class.forName(dbDriver);
            conn = DriverManager.getConnection(dbUrl, dbUserId, dbUserPw);
            this.dbIsOpen = true;
            System.out.println("DB connect success");
        } catch (Exception e) {
            this.dbIsOpen = false;
            System.out.println("DB connect failed");
            e.printStackTrace();
        }
    }

    public void dbClose(){
        try {
            if (rs != null) { rs.close(); }
            if (pstmt != null) { pstmt.close(); }
            if (conn != null) { conn.close(); }
        } catch (Exception e) {
            System.out.println("DB close failed");
            e.printStackTrace();
        }
    }

}
