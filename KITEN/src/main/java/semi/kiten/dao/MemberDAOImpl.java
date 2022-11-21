package semi.kiten.dao;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import semi.kiten.vo.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public int memberInsert(MemberVO vo) {
		System.out.println("===>  MemberMapper userInsert() 호출");
		// Mapper.xml로 가서 확인
		// ("namespace.id", parameter)
		return mybatis.insert("user.userInsert", vo);
	}
	
	@Override
	public MemberVO idCheck(MemberVO vo) {
		System.out.println("===> MemberMapper idCheck 호출");
		return mybatis.selectOne("user.idCheck", vo);
	}
	

	@Override
	public int memberupdate(MemberVO vo) {
		System.out.println("===> MemberMapper update() 호출");
		return mybatis.update("user.userUpdate",vo);
		
		
	}

	@Override
	public MemberVO idSelect(String userId) {
		System.out.println("===> MemberMapper select()호출");
		return  mybatis.selectOne("user.idSelect", userId);
	}

	@Override
	public int memberupdate2(MemberVO vo) {
		System.out.println("===> MemberMapper update() 호출");
		return mybatis.update("user.userUpdate2",vo);
	}


	
}
