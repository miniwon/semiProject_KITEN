package semi.kiten.controller;

import java.time.LocalDateTime;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import ch.qos.logback.classic.Logger;
import semi.kiten.service.MemberService;
import semi.kiten.vo.MemberVO;



@Controller
public class HomeController {
	
	@Autowired
	private MemberService memberService;
	
	
	private Logger logger = (Logger) LoggerFactory.getLogger(this.getClass());
	LocalDateTime now = LocalDateTime.now();		
	
	@RequestMapping("/home.do")
	public ModelAndView productRead( Model model,
		HttpServletRequest req, HttpSession session) {
		Object sess_userId = session.getAttribute("userId");
		String userId = "guest";
		if(sess_userId != null) userId = (String)sess_userId; 
		
		ModelAndView mav = new ModelAndView();
		MemberVO result = memberService.idSelect(userId);
		logger.info("접속아이디: "  + userId + "접속한IP : " + req.getRemoteAddr() +",접속시간 : "+now.toString());
		return mav;
	}
	



	
	
	


}
