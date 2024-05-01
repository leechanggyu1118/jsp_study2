package service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import domain.BoardVO;
import domain.PagingVO;
import repository.BoardDAOImpl;
import repository.BoardDao;


public class BoardServiceImpl implements BoardService {

	private static final Logger log = LoggerFactory.getLogger(BoardServiceImpl.class);
	private BoardDao bdao;
	

	public BoardServiceImpl() {
		bdao = new BoardDAOImpl();
	}

	@Override
	public int register(BoardVO bvo) {
		log.info("register service in!!");
		return bdao.insert(bvo);
	}

	@Override
	public List<BoardVO> getList(PagingVO pgvo) {
		log.info("list service in!!!");
		return bdao.selectList(pgvo);
	}

	@Override
	public BoardVO getDetail(int bno) {
		log.info("detail service in!!!");
		return bdao.selectOne(bno);
	}

	@Override
	public int update(BoardVO bvo) {
		log.info("update srvice in!!");
		return bdao.update(bvo);
	}

	@Override
	public int delete(int bno) {
		//게시글을 지우기 전에 댓글을 삭제하고 글 지우기
		
		log.info("delete service in!!");
		CommentServiceImpl csv = new CommentServiceImpl();
		int isOk = csv.removeAll(bno);
		log.info("comment Remove ALL service in!!>>{}",isOk);
		return bdao.delete(bno);
	}

	@Override
	public int getTotal(PagingVO pgvo) {
		log.info("getTotal srvice in!!");
		return bdao.total(pgvo);
	}

	@Override
	public String getFileName(int bno) {
		log.info("getFileName srvice in!!");
		return bdao.getFileName(bno);
	}

	@Override
	public int readCount(int bno) {
		log.info("readCount srvice in!!");
		return bdao.readCount(bno);
	}


	@Override
	public List<BoardVO> searchMy(String id) {
		log.info("searchMy >> BoardService 들어왔습니다.");
		return bdao.searchMy(id);
	}

	@Override
	public int getMyTotal(String id) {
		log.info("getMyTotal srvice in!!");
		return bdao.getMyTotal(id);
	}
}
