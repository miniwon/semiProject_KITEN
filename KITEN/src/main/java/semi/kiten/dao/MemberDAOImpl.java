package semi.kiten.dao;

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
}