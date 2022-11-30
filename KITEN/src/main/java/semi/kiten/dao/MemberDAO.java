package semi.kiten.dao;

import semi.kiten.vo.MemberVO;

public interface MemberDAO {
	
	/**
	 * 회원가입기능 구현
	 */
	int memberInsert(MemberVO vo);
	
	/**
	 * id 중복 체크 기능 구현
	 */
	MemberVO idCheck( MemberVO vo );	
	
	/*
	 *  수정하기  
	 */
	public int memberupdate(MemberVO vo) ;

	MemberVO idSelect(Integer userNo);
	
	public int memberupdate2(MemberVO vo) ;
	
	public int remove(MemberVO vo);
	
	public boolean passChk(String m_id, String m_password);
	
	
		
}
