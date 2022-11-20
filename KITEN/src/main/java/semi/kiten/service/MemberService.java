package semi.kiten.service;

import semi.kiten.vo.MemberVO;

public interface MemberService {
	
	// 회원 가입
	public int userInsert(MemberVO vo);
	
	// 아이디 확인(중복 체크/로그인)
	public MemberVO idCheck_Login(MemberVO vo);

}
