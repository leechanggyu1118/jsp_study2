package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import domain.CommentVO;
import orm.DatabaseBuilder;


public class CommentDAOImpl implements CommentDAO {
	private static final Logger log = LoggerFactory.getLogger(CommentDAOImpl.class); 
	private SqlSession sql;
	
	public CommentDAOImpl() {
		new DatabaseBuilder();
		sql = DatabaseBuilder.getFactory().openSession();
	}



	@Override
	public int insert(CommentVO cvo) {
		log.info("post dao check3!!");
		int isOk = sql.insert("CommentMapper.post",cvo);
		if(isOk>0) {
			sql.commit();
		}
		return isOk;
	}



	@Override
	public List<CommentVO> getList(int bno) {
		log.info("list dao check3!!");
		return sql.selectList("CommentMapper.list", bno);
	}



	@Override
	public int remove(int cno) {
		log.info("remove dao check3!!");
		int isOk = sql.delete("CommentMapper.remove", cno);
		if(isOk>0) {
			sql.commit();
		}
		return isOk;
	}



	@Override
	public int modify(CommentVO cvo) {
		log.info("modify dao check3!!");
		int isOk = sql.update("CommentMapper.modify", cvo);
		if(isOk>0) {
			sql.commit();
		}
		return isOk;
	}



	@Override
	public int removeAll(int bno) {
		int isOk = sql.delete("CommentMapper.all",bno);
		if(isOk>=0) {
			sql.commit();
		}
		return 0;
	}
}
