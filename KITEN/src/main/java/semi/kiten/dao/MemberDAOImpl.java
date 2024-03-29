package semi.kiten.dao;

import java.util.HashMap;
import java.util.Map;

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
		vo.setM_number(mybatis.selectOne("user.userInsert", vo));
		System.out.println("===>  MemberMapper locationInsert() 호출");
		return mybatis.insert("user.locationInsert", vo);
		// Mapper.xml로 가서 확인
		// ("namespace.id", parameter)
	}
	
	@Override
	public MemberVO idCheck(MemberVO vo) {
		System.out.println("===> MemberMapper idCheck 호출");
		return mybatis.selectOne("user.idCheck", vo);
	}
	

	@Override
	public int memberupdate(MemberVO vo) {
		System.out.println("===> MemberMapper userUpdate() 호출");
		mybatis.update("user.userUpdate",vo);
		System.out.println("===> MemberMapper defaultLocationUpdate() 호출");
		return mybatis.update("location.defaultLocationUpdate", vo);
	}

	@Override
	public MemberVO idSelect(Integer userNo) {
		System.out.println("===> MemberMapper select()호출");
		
		return  mybatis.selectOne("user.idSelect", userNo);
	}

	@Override
	public int memberupdate2(MemberVO vo) {
		System.out.println("===> MemberMapper update() 호출");
		return mybatis.update("user.userUpdate2",vo);
	}

	@Override
	public int remove(MemberVO vo) {
		return mybatis.update("user.userRemove",vo);
		
	}



	@Override
	public boolean passChk(String m_id, String m_password) {
		boolean result =false;
		Map<String, String> map = new HashMap<String, String>();
		map.put("m_id", m_id);
		map.put("m_password", m_password);
		int count = mybatis.selectOne("user.passChk",map);
		if(count ==1) result=true;
		return result;
	}



	
}
