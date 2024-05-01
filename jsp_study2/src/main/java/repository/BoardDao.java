package repository;

import java.util.List;

import domain.BoardVO;
import domain.PagingVO;

public interface BoardDao {

	int insert(BoardVO bvo);

	List<BoardVO> selectList(PagingVO pgvo);

	BoardVO selectOne(int bno);


	int update(BoardVO bvo);

	int delete(int bno);

	int total(PagingVO pgvo);

	String getFileName(int bno);

	int readCount(int bno);


	List<BoardVO> searchMy(String id);

	int getMyTotal(String id);

}
