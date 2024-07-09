package bitc.fullstack405.study07.database;

import jakarta.servlet.ServletContext;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MemberDAO extends JDBConnect {
    public MemberDAO() {
        super();
    }

    public MemberDAO(ServletContext application) {
        super(application);
    }

    public MemberDAO(String dbDriver, String dbUrl, String dbUser, String dbPass) {
        super(dbDriver, dbUrl, dbUser, dbPass);
    }


    // 사용자 id/pw 확인 메서드
    public boolean isLogin(String id, String pwd) {
        boolean result = false;

        String sql = "select count(*) as cnt from member ";
                sql += "where id = ? and pass = ?; ";

        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, id);
            pstmt.setString(2, pwd);

            rs = pstmt.executeQuery();

            if (rs.next()) {
                if (rs.getInt("cnt") == 1) {
                    result = true;
                }
            }

        } catch (SQLException e) {
            System.out.println("login sql exception");
        } finally {
//            dbClose();
        }

        return result;
    }

    // 사용자 정보 조회 메서드
    public MemberDTO getMemberInfo(String id) {
        MemberDTO result = null;

        String sql = "SELECT * FROM member ";
        sql += "WHERE id = ?";

        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, id);
            ResultSet rs = pstmt.executeQuery();

            if (rs.next()) {
                result = new MemberDTO();
                result.setId(rs.getString("id"));
                result.setPass(rs.getString("pass"));
                result.setName(rs.getString("name"));
                result.setRegiDate(rs.getString("regidate"));
            }

        } catch (SQLException e) {
            System.out.println("get info failed");
            e.printStackTrace();
        } finally {
            dbClose();
        }

        return result;
    }

    // 사용자 정보 입력 메서드(회원가입)
    public int insertMember(MemberDTO member) {
        int result = 0;

        String sql = "INSERT INTO member (id, pass, name, regidate) ";
        sql += "VALUES(?, ?, ?, now())";

        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, member.getId());
            pstmt.setString(2, member.getPass());
            pstmt.setString(3, member.getPass());

            result = pstmt.executeUpdate();

        } catch (SQLException e) {
            System.out.println("DB insert failed");
            e.printStackTrace();
        } finally {
            dbClose();
        }

        return result;
    }

    // 사용자 정보 수정 메서드

    // 사용자 정보 삭제 메서드
}
