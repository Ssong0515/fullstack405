package bitc.fullstack405.study07.database;

import jakarta.servlet.ServletContext;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BoardDAO extends JDBConnect {
    public BoardDAO() {
        super();
    }

    public BoardDAO(ServletContext application) {
        super(application);
    }

    public BoardDAO(String dbDriver, String dbUrl, String dbUser, String dbPass) {
        super(dbDriver, dbUrl, dbUser, dbPass);
    }

    // 게시판 글 목록 조회 메서드
    public List<BoardDTO> selectBoardList() {
        List<BoardDTO> boardList = new ArrayList<BoardDTO>();
        try {
            String sql = "select num, title, id, postdate, visitcount from board";

            stmt = conn.createStatement();
            rs = stmt.executeQuery(sql);

            while (rs.next()) {
                int num = rs.getInt("num");
                String title = rs.getString("title");
                String id = rs.getString("id");
                String postdate = rs.getString("postdate");
                int visitcount = rs.getInt("visitcount");

                BoardDTO board = new BoardDTO();
                board.setNum(num);
                board.setTitle(title);
                board.setId(id);
                board.setPostDate(postdate);
                board.setVisitCount(visitcount);

                boardList.add(board);
            }

        } catch (SQLException e) {
            System.out.println("DB select failed");
            e.printStackTrace();
        } finally {
            dbClose();
        }
        return boardList;
    }

    // 게시판 글 등록 메서드
    public int insertBoard(BoardDTO board) {
        int result = 0;

        try {
            String sql = "INSERT INTO board (title, content, id, postdate) ";
                    sql += "VALUES (?, ?, ?, now())";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, board.getTitle());
            pstmt.setString(2, board.getContent());
            pstmt.setString(3, board.getId());

            result = pstmt.executeUpdate();

        } catch (SQLException e) {
            System.out.println("DB insert failed");
            e.printStackTrace();
        } finally {
            dbClose();
        }

        return result;
    }

    // 게시판 글 조회 메서드
    public BoardDTO selectBoardDetail(int num) {
        BoardDTO board = new BoardDTO();

        try {
            String sql = "select num, title, content, id, postdate, visitcount from board where num = ?";

            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, num);

            rs = pstmt.executeQuery();

            if (rs.next()) {
                board.setNum(rs.getInt("num"));
                board.setTitle(rs.getString("title"));
                board.setId(rs.getString("id"));
                board.setContent(rs.getString("content"));
                board.setPostDate(rs.getString("postdate"));
                board.setVisitCount(rs.getInt("visitcount"));
            }

        } catch (SQLException e) {
            System.out.println("DB detail select failed");
            e.printStackTrace();
        } finally {
            dbClose();
        }
        return board;
    }

    // 게시판 글 수정 메서드
    public int updateBoard(BoardDTO board) {
        int result = 0;

        String sql = "UPDATE board ";
               sql += "SET title = ?, content = ?, postdate = now() ";
               sql += "WHERE num = ?";

        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, board.getTitle());
            pstmt.setString(2, board.getContent());
            pstmt.setInt(3, board.getNum());

            result = pstmt.executeUpdate();

        } catch (SQLException e) {
            System.out.println("DB update failed");
            e.printStackTrace();
        } finally {
            dbClose();
        }

        return result;
    }

    // 게시판 글 삭제 메서드
    public int deleteBoard(int num) {
        int result = 0;

        String sql = "DELETE FROM board WHERE num = " + num;

        try {
            stmt = conn.createStatement();
            result = stmt.executeUpdate(sql);
        } catch (SQLException e) {
            System.out.println("DB delete failed");
            e.printStackTrace();
        } finally {
            dbClose();
        }
        return result;
    }
}
