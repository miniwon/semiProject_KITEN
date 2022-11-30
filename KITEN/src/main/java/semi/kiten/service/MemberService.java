package semi.kiten.service;

import semi.kiten.vo.MemberVO;

public interface MemberService {
	
	// 회원 가입
	public int userInsert(MemberVO vo);
	
	// 아이디 확인(중복 체크/로그인)
	public MemberVO idCheck_Login(MemberVO vo);
	
	public int userUpdate(MemberVO vo);

	public MemberVO idSelect(Integer userNo);

	public int userUpdate2(MemberVO vo);
	
	public int remove(MemberVO vo);

	public boolean passChk(String m_id, String m_password);
	


	
}
