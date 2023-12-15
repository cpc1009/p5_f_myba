package com.example.board;

import com.example.board.BoardVO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@Repository
public class BoardDAO {
    @Autowired
    SqlSession sqlSession;

    public List<BoardVO>   getBoardList()
    {
        List<BoardVO> list =sqlSession.selectList("Board.getBoardList");
        return list;
    }

   public BoardVO getBoard(int seq)
   {
       BoardVO one = sqlSession.selectOne("Board.getBoard",seq);
       return one;
   }

   public int insertBoard(BoardVO vo)
   {
       int count = sqlSession.insert("Board.insertBoard",vo);
       return 0;
   }

    public int deleteBoard(int seq) {
        int count = sqlSession.delete("Board.deleteBoard", seq);
        return count;
    }

    public int updateBoard(BoardVO vo) {
        int count = sqlSession.update("Board.updateBoard", vo);
        return count;
    }


//	@Autowired
//	JdbcTemplate jdbcTemplate;
//
//	Connection conn = null;
//	PreparedStatement stmt = null;
//	ResultSet rs = null;
//
//	public int insertBoard(BoardVO vo) {
//		System.out.println("===> JDBC로 insertBoard() 기능 처리");
//
//		String sql = "insert into BOARD (title, writer, content, category) values("
//				+ "'" + vo.getTitle() + "',"
//				+ "'" + vo.getWriter() + "',"
//				+ "'" + vo.getContent() + "',"
//				+ "'" + vo.getCategory() + "')";
//		return jdbcTemplate.update(sql);
//	}
//
//	// 글 삭제
//	public int deleteBoard(int seq) {
//		System.out.println("===> JDBC로 deleteBoard() 기능 처리");
//		String sql = "delete from BOARD where seq = " + seq;
//		return jdbcTemplate.update(sql);
//	}
//	public int updateBoard(BoardVO vo) {
//		System.out.println("===> JDBC로 updateBoard() 기능 처리");
//		String sql = "update BOARD set "
//				+ "title = '" + vo.getTitle() + "',"
//				+ "writer = '" + vo.getWriter() + "',"
//				+ "content = '" + vo.getContent() + "',"
//				+ "category = '" + vo.getCategory() + "' where seq = " + vo.getSeq();
//
//		return jdbcTemplate.update(sql);
//	}
//
//
//	public BoardVO getBoard(int seq) {
//		String sql = "select * from BOARD where seq =" + seq;
//		return jdbcTemplate.queryForObject(sql, new BoardRowMapper());
//	}
//
//	public List<BoardVO> getBoardList(){
//		String sql = "select * from BOARD order by regdate desc";
//		return jdbcTemplate.query(sql, new BoardRowMapper());
//	}
//
//	class BoardRowMapper implements RowMapper<BoardVO> {
//		@Override
//		public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
//			BoardVO vo = new BoardVO();
//			vo.setSeq(rs.getInt("Seq"));
//			vo.setTitle(rs.getString("title"));
//			vo.setContent(rs.getString("content"));
//			vo.setWriter(rs.getString("writer"));
//			vo.setCategory(rs.getString("category"));
//			vo.setRegdate(rs.getDate("regdate"));
//			return vo;
//		}
//	}
}
