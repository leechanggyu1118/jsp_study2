package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import domain.MemberVO;
import orm.DatabaseBuilder;

public class MemberDAOImpl implements MemberDAO {

	private static final Logger log = LoggerFactory.getLogger(MemberDAOImpl.class);
	
	//sqlSession 객체
	private SqlSession sql;
	
	public MemberDAOImpl() {
		new DatabaseBuilder();
		sql = DatabaseBuilder.getFactory().openSession();
	}
	// namespace ="MemberMapper" 뒤에 .id를하여 만들어준다.
	//insert, update, delete는 DB가 변경되는 구문 반드시 commit 필요
	@Override
	public int register(MemberVO mvo) {
		log.info("register DAOImpl 들어왔습니다.");
		int isOk = sql.insert("MemberMapper.register", mvo);
		if(isOk>0) {
			sql.commit();
		}
		return isOk;
	}
	@Override
	public MemberVO login(MemberVO mvo) {
		log.info("login DAOImpl 들어왔습니다.");
		return sql.selectOne("MemberMapper.login", mvo);
	}
	@Override
	public int lastLogin(String id) {
		log.info("lastLogin DAOImpl 들어왔습니다.");
		int isOk = sql.update("MemberMapper.lastLogin",id);
		if(isOk>0) {
			sql.commit();
		}
		return isOk;
	}
	@Override
	public List<MemberVO> list() {
		log.info("list DAOImpl 들어왔습니다.");
		return sql.selectList("MemberMapper.list");
	}
	@Override
	public int update(MemberVO mvo) {
		log.info("update DAOImpl 들어왔습니다.");
		int isOk = sql.update("MemberMapper.update", mvo);
		if(isOk>0) {
			sql.commit();
		}
		return isOk;
	}
	@Override
	public int delete(String id) {
		log.info("delete DAOImpl 들어왔습니다.");
		int isOk = sql.delete("MemberMapper.delete",id);
		if(isOk>0) {
			sql.commit();
		}
		return isOk;
	}

}
