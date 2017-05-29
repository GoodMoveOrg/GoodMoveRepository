package org.kosta.goodmove.model.dao;

import java.util.List;

import org.kosta.goodmove.model.vo.BoardPagingBean;
import org.kosta.goodmove.model.vo.BoardVO;

public interface BoardDAO {

	int getNextBno();

	int getTotalBoardCount();

	List<BoardVO> getAllBoardList(BoardPagingBean pagingBean);

	void boardRegister(BoardVO bvo);

	int getNextPno();
	
	BoardVO getBoardDetailByBno(int bno);

}
