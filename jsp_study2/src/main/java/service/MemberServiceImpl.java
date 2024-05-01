package service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import domain.MemberVO;
import repository.MemberDAO;
import repository.MemberDAOImpl;

public class MemberServiceImpl implements MemberService {
	//로그객체
	private static final Logger log = LoggerFactory.getLogger(MemberServiceImpl.class);
	
	//DAO객체 연결
	private MemberDAO mdao; // repository => interface
	
	public MemberServiceImpl() {
		mdao = new MemberDAOImpl(); //repository => class implement MemberDAO
	}

	@Override
	public int register(MemberVO mvo) {
		log.info("register MemberServiceImpl 들어왔습니다.");
		return mdao.register(mvo);
	}

	@Override
	public MemberVO login(MemberVO mvo) {
		log.info("login MemberServiceImpl 들어왔습니다.");
		return mdao.login(mvo);
	}

	@Override
	public int lastLogin(String id) {
		log.info("lastLogin MemberServiceImpl 들어왔습니다.");
		return mdao.lastLogin(id);
	}

	@Override
	public List<MemberVO> getlist() {
		log.info("list MemberServiceImpl 들어왔습니다.");
		return mdao.list();
	}

	@Override
	public int update(MemberVO mvo) {
		log.info("update MemberServiceImpl 들어왔습니다.");
		return mdao.update(mvo);
	}

	@Override
	public int delete(String id) {
		log.info("delete MemberServiceImpl 들어왔습니다.");
		return mdao.delete(id);
	}
	
}
