package bitc.fullstack405.study06.database;

import java.sql.*;

// DAO: 데이터베이스를 컨트롤 하기 위한 자바 클래스
// 각각의 메서드에 해당 테이블의 데이터를 추가, 삭제, 수정, 조회하는 기능을 구현하면 됨
public class MemberDAO {
    private Connection conn;
    private Statement stmt;
    private PreparedStatement pstmt;
    private ResultSet rs;

    private String dbDriver;
    private String dbUrl;
    private String dbUser;
    private String dbPass;

    public MemberDAO() {
        this.dbDriver = "com.mysql.cj.jdbc.Driver";
        this.dbUrl = "jdbc:mysql://localhost:3306/testdb1?characterEncoding=utf8&serverTimezone=UTC";
        this.dbUser = "test1";
        this.dbPass = "full405";
    }

    public void dbOpen() {
        try {
            Class.forName(dbDriver);
            conn = DriverManager.getConnection(dbUrl, dbUser, dbPass);
        } catch (Exception e) {
            System.out.println("데이터 베이스 연결에 실패했습니다.");
            e.printStackTrace();
        }
    }

    public void dbClose() {
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

        System.out.println("데이터베이스 연결을 종료했습니다.");
    }

    // 지정한 id/pw를 가지고 있는 사용자가 있는지 여부 확인 메서드
    public boolean isMember(String userId, String userPw) {
        boolean result = false;

        String sql = "SELECT count(*) AS cnt ";
        sql += "FROM member ";
        sql += "WHERE id = ? ";
        sql += "AND pass = ?";


        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, userId);
            pstmt.setString(2, userPw);

            rs = pstmt.executeQuery();

            if (rs.next()) {
                if (rs.getInt("cnt") == 1) {
                    return true;
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
            } catch (Exception e) {
            }

        }

        return result;
    }

    // 지정한 사용자정보를 가져오는 메서드
    public MemberDTO getMemberInfo(String userId) {
        MemberDTO result = null;

        String sql = "SELECT id, pass, name, regidate FROM member WHERE id = ?";
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, userId);

            rs = pstmt.executeQuery();

            if (rs.next()) {
                String id = rs.getString("id");
                String pass = rs.getString("pass");
                String name = rs.getString("name");
                String regiDate = rs.getString("regidate");

                result = new MemberDTO();
                result.setId(id);
                result.setPass(pass);
                result.setName(name);
                result.setRegiDate(regiDate);

            } else {

            }

        } catch (Exception e) {
            System.out.println("데이터 조회 중 오류 발생");
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (pstmt != null) {
                    pstmt.close();
                }
            } catch (Exception e) {
            }
        }


        return result;
    }

    public boolean insertMember(String userId, String pass, String name) {
        boolean result = false;

        String sql = "INSERT INTO member (id, pass, name, regidate) ";
        sql += "VALUES(?, ?, ?, now());";

        try {
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, userId);
            pstmt.setString(2, pass);
            pstmt.setString(3, name);

            int count = pstmt.executeUpdate();

            if (count > 0) {
                result = true;
            }

        } catch (SQLException e) {
            System.out.println("데이터베이스 입력 중 오류 발생");
            e.printStackTrace();
        } finally {
            try {
                if (pstmt != null) { pstmt.close(); }
            } catch (Exception e) {}
        }

        return result;
    }

    public boolean insertMember(MemberDTO member) {
        boolean result = this.insertMember(member.getId(), member.getPass(), member.getName());
        return result;
    }
}
