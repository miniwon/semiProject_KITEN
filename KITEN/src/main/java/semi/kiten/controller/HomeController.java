package semi.kiten.controller;

import java.time.LocalDateTime;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import ch.qos.logback.classic.Logger;

@Controller
public class HomeController {

	private Logger logger = (Logger) LoggerFactory.getLogger(this.getClass());
	LocalDateTime now = LocalDateTime.now();

	@RequestMapping("/home.do")
	public ModelAndView productRead(Model model, HttpServletRequest req, HttpSession session) {
		Object sess_userNo = session.getAttribute("userNo");
		Integer userNo = 0000;
		if (sess_userNo != null)
			userNo = (Integer) sess_userNo;

		ModelAndView mav = new ModelAndView();
		if (userNo == 0000) {
			logger.info("접속 회원 번호: guest, 접속 IP : " + req.getRemoteAddr() + ", 접속 시간 : " + now.toString());
		} else {
			logger.info("접속 회원 번호: " + userNo + ", 접속 IP : " + req.getRemoteAddr() + ", 접속 시간 : " + now.toString());
		}
		return mav;
	}

}
