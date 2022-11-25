package semi.kiten.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import semi.kiten.service.MemberService;
import semi.kiten.vo.MemberVO;

@Controller
@RequestMapping("user")
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	// 로그인 페이지 들어가기
	@RequestMapping("userLogin.do")
	public String loginPage() {
		return "/user/userLogin";
		// "/user/"를 안쓰면 [/WEB-INF/views/userLogin.jsp]로 받아서 404오류 발생
	}
	
	// 회원가입 페이지 들어가기
	@RequestMapping("userJoin.do")
	public String joinPage() {
		return "/user/userJoin";
		// "/user/"를 안쓰면 [/WEB-INF/views/userLogin.jsp]로 받아서 404오류 발생
	}
	
	// 로그인 실행
	@RequestMapping("login.do")
	//*************************
	// 세션 사용 -> 인자에 HttpSession 변수 선언
	public String login(MemberVO vo, HttpSession session) {
		MemberVO result = memberService.idCheck_Login(vo);
		if(result==null || result.getM_id() == null) {
	         System.out.println("로그인 실패");
			return "/user/userLogin";
		}else {
	         System.out.println("로그인 성공");
	         //세션에 저장
	         session.setAttribute("userId", result.getM_id());
	         session.setAttribute("userNo", result.getM_number());
	         
	         return "/user/userLogin_ok";

		}
	}
	
	@RequestMapping("userLogout.do")
	public String logout() {
  return  "/user/userLogout";
	}
	/* 가입하기 버튼 클릭 -> 
	 * 요청 : /user/userInsert.do
	 * 뷰페이지 : user/userJoin_ok.jsp
	 */
	@RequestMapping("userInsert.do")
	public ModelAndView userInsert(MemberVO memberVO) {
		
		int result = memberService.userInsert(memberVO);
		String message = "회원 가입에 실패하였습니다";
		
		if(result==1) message = memberVO.getM_id() + " 님의 회원 가입이 완료되었습니다!";
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/userJoin_ok");
		mv.addObject("message", message);
		return mv;
	}
	
	@RequestMapping(value="idCheck.do", produces="application/text;charset=utf-8")
	//**************************************************************
	// 일반 요청 함수에서 String 리턴: 뷰페이지 지정
	// Ajax의 목적은 새로고침 안 하려고이기 때문에
	// 이 요청에 Ajax 통신에 의해 값을 전송해야 한다
	@ResponseBody
	// 입력매개변수로 String 써서 하나만 받아도 되고 MemberVO 안에 있는 변수라면 MemberVO 써도 된다
	public String idCheck(MemberVO vo) {
		System.out.println("idCheck.do 요청: " + vo.getM_id());
		MemberVO result = memberService.idCheck_Login(vo);
		String message = "사용 가능한 아이디입니다";
		if(result != null) message = "중복된 아이디가 있습니다";
		
		System.out.println("message: " + message);
		
		return message;
	}
	
	@RequestMapping(value="userModify.do", produces="application/text;charset=utf-8")
	public MemberVO idSelect(HttpSession session, Model m) {
		Object sess_userId = session.getAttribute("userId");
		String userId = "";
		if(sess_userId != null) userId = (String)sess_userId; 
		System.out.println("userId: " +  userId);
		MemberVO result = memberService.idSelect(userId);
		m.addAttribute("member",result);

		return result;
	}
	
	
	@RequestMapping(value="userModify_ok.do", produces="application/text;charset=utf-8")
	public ModelAndView Update(MemberVO vo) {
		
		int result =0;
		String message = "수정 성공";
	
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/userModify_ok");
		mv.addObject("message", message);
		
		if(vo.getM_password().equals("")) {
			result = memberService.userUpdate(vo);
			return mv;
		}else{
			result = memberService.userUpdate2(vo);
			return mv;
	}
		
		
	
	

}
	// 회원 탈퇴 전 비밀번호 확인 
	
	@RequestMapping(value="userRemove_before.do")
	public void passChk() {
	
	}
	

	// 회원 탈퇴 하기 
	
	@RequestMapping(value="userRemove.do", produces="application/text;charset=utf-8")
	public String remove(@RequestParam String m_id , @RequestParam String m_password ) {

		boolean result = memberService.passChk(m_id,m_password);	// 패스워드 검사하는 메소드 
		System.out.println(result);									
		if(result==true) {
			memberService.remove(m_id);
			return "/user/userRemove_ok";
			
		}else {
			
			return "redirect:/user/userRemove_before.do";
				
		}
		
		
	}
	
	@RequestMapping(value="userRemove_ok.do")
	public String userRemove() {
		return "redirect:/user/userRemove_ok.do";
	
	}
	
	
	

	
	
}
