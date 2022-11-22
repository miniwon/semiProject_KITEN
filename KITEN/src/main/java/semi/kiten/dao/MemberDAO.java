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

	MemberVO idSelect(String userId);
	
	public int memberupdate2(MemberVO vo) ;
		
}
