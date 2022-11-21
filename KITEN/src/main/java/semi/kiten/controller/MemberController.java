package semi.kiten.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import semi.kiten.service.MemberService;
import semi.kiten.vo.MemberVO;

@Controller
@RequestMapping("user")
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	@RequestMapping("userLogin.do")
	public String loginPage() {
		return "/user/userLogin";
		// "/user/"를 안쓰면 [/WEB-INF/views/userLogin.jsp]로 받아서 404오류 발생
	}

	@RequestMapping("userJoin.do")
	public String joinPage() {
		return "/user/userJoin";
		// "/user/"를 안쓰면 [/WEB-INF/views/userLogin.jsp]로 받아서 404오류 발생
	}
	
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
	         session.setAttribute("userId", vo.getM_id());
	         
//	         return "home";
	         return "/user/userLogin_ok";

		}
	}
	
	/* 가입하기 버튼 클릭 -> 
	 * 요청 : /user/userInsert.do
	 * 뷰페이지 : user/userJoin_ok.jsp
	 */
	@RequestMapping("userInsert.do")
	public ModelAndView userInsert(MemberVO memberVO) {
		
		int result = memberService.userInsert(memberVO);
		String message = "가입에 실패하였습니다";
		
		if(result==1) message = memberVO.getM_id() + "님 가입을 축하합니다.";
		
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
		System.out.println("result => "+result.getM_name());
		return result;
	}
	
	
	@RequestMapping(value="userModify_ok.do", produces="application/text;charset=utf-8")
	public ModelAndView Update(MemberVO vo) {
		
		System.out.println("메렁" + vo.getM_password() + "메롱");
		
		
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
	

	
	
	
	
}
