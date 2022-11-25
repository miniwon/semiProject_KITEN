package semi.kiten.dao;

import org.springframework.ui.Model;

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
	
	public int remove(String m_id);
	
	public boolean passChk(String m_id, String m_password);
	
	
		
}
