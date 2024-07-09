package bitc.fullstack405.dbtest;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class DBConnPool {

    public Connection conn;
    public Statement stmt;
    public PreparedStatement pstmt;
    public ResultSet rs;

    public DBConnPool() {
        try {
            Context initCtx = new InitialContext();
//            java:comp/env: jsp 프로그램의 리소스 폴더를 의미
//            lookup(): tomcat 서버에서 지정한 리소스 가져오기
            Context ctx = (Context) initCtx.lookup("java:comp/env");
//            context.xml에 입력된 커넥션 풀의 이름으로 정보 가져오기
//            DataSource ds = (DataSource) ctx.lookup("dbcp_mysql");
//            context.xml에 입력된 커넥션 풀 중계 이름으로 정보 가져오기
            DataSource ds = (DataSource) ctx.lookup("context_dhcp_mysql");

            conn = ds.getConnection();
            System.out.println("\n ---- DB Coonnection pool connect ---- \n");
        } catch (Exception e) {
            System.out.println("\n ---- DB Coonnection pool connect fail ---- \n");
            e.printStackTrace();
        }
    }

    public void close() {
        try {
            if (rs != null) {
                rs.close();
            }
            if (stmt != null) {
                stmt.close();
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


}
