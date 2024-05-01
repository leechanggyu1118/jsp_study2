package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import domain.BoardVO;
import domain.PagingVO;
import orm.DatabaseBuilder;

public class BoardDAOImpl implements BoardDao {
	
	private static final Logger log = LoggerFactory.getLogger(BoardDAOImpl.class);
	
	//DB 설정 mybatis lib 사용하여 DB를 구성
	private SqlSession sql;
	
	public BoardDAOImpl() {
		new DatabaseBuilder();
		sql = DatabaseBuilder.getFactory().openSession();
	}
	@Override
	public int insert(BoardVO bvo) {
		log.info("insert dao in!!");
		//실제 DB로 저장
		//sql.insert(mapperNameSpace.id, bvo);
		int isOk = sql.insert("BoardMapper.add", bvo);
		//insert, update, delete는 DB가 변경되는 구문 반드시 commit 필요
		if(isOk > 0) {
			sql.commit();
		}
		
		return isOk;
	}

	@Override
	public List<BoardVO> selectList(PagingVO pgvo) {
		log.info("selectList dao in!!!");
		
		return sql.selectList("BoardMapper.list", pgvo);
	}

	@Override
	public BoardVO selectOne(int bno) {
		log.info("selectOne dao in!!!");
		return sql.selectOne("BoardMapper.detail", bno);
	}


	@Override
	public int update(BoardVO bvo) {
		log.info("update dao in!!!"+bvo.toString());
		int isOk = sql.update("BoardMapper.update", bvo);
		if(isOk > 0) {
			sql.commit();
		}
		return isOk;
	}

	@Override
	public int delete(int bno) {
		log.info("delete dao in!!!");
		int isOk = sql.delete("BoardMapper.delete", bno);
		if(isOk > 0) {
			sql.commit();
		}
		return isOk;
	}

	@Override
	public int total(PagingVO pgvo) {
		log.info("total dao in!!!");
		return sql.selectOne("BoardMapper.total", pgvo);
	}

	@Override
	public String getFileName(int bno) {
		log.info("getFileName dao in!!!");
		return sql.selectOne("BoardMapper.getFileName",bno);
	}

	@Override
	public int readCount(int bno) {
		log.info("readCount dao in!!!");
		int isOk = sql.update("BoardMapper.read",bno);
		if(isOk>0) {
			sql.commit();
		}
		return isOk;
	}

	@Override
	public List<BoardVO> searchMy(String id) {
		log.info("searchMy >> DAO 들어왔습니다.");
		return sql.selectList("BoardMapper.searchMy", id);
	}
	@Override
	public int getMyTotal(String id) {
		log.info("getMyTotal dao in!!!");
		return sql.selectOne("BoardMapper.getMyTotal",id);
	}

}
