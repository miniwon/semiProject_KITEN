package semi.kiten.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import semi.kiten.service.MypageService;
import semi.kiten.vo.CartVO;

@Controller
@RequestMapping("my")
public class MypageController {
	
	@Autowired
	private MypageService mypageService;
	
	@RequestMapping("cart.do")
	public void myCart(CartVO cartVO, Model m) {
		List<CartVO> cartList = mypageService.getCartList(cartVO);
//		System.out.println(cartVO.getM_number());
		m.addAttribute("cartList", cartList);
	}
	
}
