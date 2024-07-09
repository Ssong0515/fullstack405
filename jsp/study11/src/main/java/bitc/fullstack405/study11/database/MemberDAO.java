package bitc.fullstack405.study11.database;

import jakarta.servlet.ServletContext;

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

    public MemberDTO getMemberInfo(String userId, String userPw) {
        MemberDTO member = null;

        try {
            String sql = "SELECT id, pass, name, regidate FROM member ";
            sql += "WHERE id = ? AND pass = ?";

            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, userId);
            pstmt.setString(2, userPw);

            rs = pstmt.executeQuery();

            while (rs.next()) {
                member = new MemberDTO();
                member.setId(rs.getString("id"));
                member.setPass(rs.getString("pass"));
                member.setName(rs.getString("name"));
                member.setRegidate(rs.getString("regidate"));
            }

        } catch (SQLException e) {
            System.out.println("데이터 조회 중 오류 발생");
            e.printStackTrace();
        }

        return member;
    }

}
