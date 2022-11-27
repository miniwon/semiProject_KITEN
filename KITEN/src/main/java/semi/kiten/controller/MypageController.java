package semi.kiten.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import semi.kiten.service.CartService;
import semi.kiten.service.MypageService;
import semi.kiten.vo.CartVO;
import semi.kiten.vo.WishVO;

@Controller
@RequestMapping("my")
public class MypageController {

	@Autowired
	private MypageService mypageService;
	
	@Autowired
	private CartService cartService;

	@RequestMapping("cart.do")
	public void myCart(CartVO cartVO, Model m) {
		List<CartVO> cartList = mypageService.getCartList(cartVO);
		m.addAttribute("cartList", cartList);
	}

	@RequestMapping("cartDelete.do")
	public String cartDelete(CartVO cartVO, Model m) {
		System.out.println(cartVO.getM_number());
		cartService.cartDeleteOne(cartVO);
		List<CartVO> cartList = mypageService.getCartList(cartVO);
		m.addAttribute("cartList", cartList);
		return "redirect:/my/cart.do?m_number=" + cartVO.getM_number();
	}
	
	@RequestMapping("wish.do")
	public void myWish(WishVO wishVO, Model m) {
		List<WishVO> wishList = mypageService.getWishList(wishVO);
		m.addAttribute("wishList", wishList);
	}
	
	@RequestMapping("wishDelete.do")
	public String wishDelete(WishVO wishVO, Model m) {
		System.out.println(wishVO.getM_number());
		cartService.wishDeleteOne(wishVO);
		List<WishVO> wishList = mypageService.getWishList(wishVO);
		m.addAttribute("wishList", wishList);
		return "redirect:/my/wish.do?m_number=" + wishVO.getM_number();
	}


}
