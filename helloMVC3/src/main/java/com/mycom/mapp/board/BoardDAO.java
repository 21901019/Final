package com.mycom.mapp.board;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.mycom.mapp.board.BoardVO;

@Repository
public class BoardDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	public int insertBoard(BoardVO vo) {
		int result = sqlSession.insert("Board.insertBoard", vo);
		return result;
		}
	
	public int deleteBoard(int seq) {//?
		int result = sqlSession.delete("Board.deleteBoard",seq);
		return result;
	}
	
	public int updateBoard(BoardVO vo) {//?
		int result =sqlSession.update("Board.updateBoard",vo);
		return result;
	}
	
	public int Join(BoardVO vo) {//?
		vo.setNow(vo.getNow()+1);
		int result = sqlSession.update("Board.Join",vo);
		return result;
	}
	
	public BoardVO getBoard(int seq) {
		BoardVO one=sqlSession.selectOne("Board.getBoard",seq);
		return one;
	}
	
	public List<BoardVO> getBoardList() {
		List<BoardVO> list=sqlSession.selectList("Board.getBoardList");
		return list;
	}
}
