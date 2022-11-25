package semi.kiten.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import semi.kiten.dao.MemberDAOImpl;
import semi.kiten.vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDAOImpl memberDAO;
	
	// 회원가입 메서드
	public int userInsert(MemberVO vo) {
		return memberDAO.memberInsert(vo);
	}
	
	// 아이디 중복 체크 + 로그인 기능
	public MemberVO idCheck_Login(MemberVO vo) {
		return memberDAO.idCheck(vo);
	}
	
	
	// 회원 정보 수정 메서드
	public int userUpdate(MemberVO vo) {
		
		return memberDAO.memberupdate(vo);
	}

	
	@Override
	public MemberVO idSelect(String userId) {
		
		return memberDAO.idSelect(userId);
	}

	@Override
	public int userUpdate2(MemberVO vo) {
		
		return memberDAO.memberupdate2(vo);
		
	}

	

	

	@Override
	public int remove(String m_id) {
		return memberDAO.remove(m_id);
	}

	@Override
	public boolean passChk(String m_id, String m_password) {
		return memberDAO.passChk(m_id, m_password);
	}

	




}
