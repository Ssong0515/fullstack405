package bitc.fullstack405.study12.database;

import jakarta.servlet.ServletContext;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MyFileDAO extends JDBConnect {

    public MyFileDAO(){
        super();
    }

    public MyFileDAO(ServletContext application) {
        super(application);
    }

    public MyFileDAO(String dbDriver, String dbUrl, String dbUser, String dbPass) {
        super(dbDriver, dbUrl, dbUser, dbPass);
    }

    // 파일 업로드
    public int insertFile(MyFileDTO file){
        int result = 0;

        try {

            String sql = "INSERT INTO myfile(title, cate, ofile, sfile, postdate) ";
                    sql += "VALUES(?, ?, ?, ?, now());";

                    pstmt = conn.prepareStatement(sql);
                    pstmt.setString(1, file.getTitle());
                    pstmt.setString(2, file.getCate());
                    pstmt.setString(3, file.getOfile());
                    pstmt.setString(4, file.getSfile());

                    result = pstmt.executeUpdate();

        } catch (SQLException e) {
            System.out.println("파일 등록 중 오류 발생");
            System.out.println("SQLException: " + e.getMessage());
            e.printStackTrace();
        }

        return result;
    }

    // 파일 목록 출력
    public List<MyFileDTO> selectFileList(){
        List<MyFileDTO> fileList = new ArrayList<>();

        String sql = "SELECT idx, title, cate, ofile, sfile, postdate ";
               sql += "FROM myfile ";
               sql += "ORDER BY idx DESC;";

        try {
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();

            while(rs.next()) {
                MyFileDTO file = new MyFileDTO();
                file.setIdx(rs.getInt("idx"));
                file.setTitle(rs.getString("title"));
                file.setCate(rs.getString("cate"));
                file.setOfile(rs.getString("ofile"));
                file.setSfile(rs.getString("sfile"));
                file.setPostDate(rs.getString("postdate"));

                fileList.add(file);
            }

        } catch (SQLException e) {
            System.out.println("데이터 조회 중 오류 발생");
            e.printStackTrace();
        }

        return fileList;
    }

    // 파일 다운로드
}
