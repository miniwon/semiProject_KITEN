package semi.kiten.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import semi.kiten.service.CartService;
import semi.kiten.service.LocationService;
import semi.kiten.service.MypageService;
import semi.kiten.vo.CartVO;
import semi.kiten.vo.LocationVO;
import semi.kiten.vo.MemberVO;
import semi.kiten.vo.OrderVO;
import semi.kiten.vo.WishVO;

@Controller
@RequestMapping("my")
public class MypageController {

	@Autowired
	private MypageService mypageService;

	@Autowired
	private LocationService locationService;

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

	@RequestMapping("orderForm.do")
	public void orderForm() {
	}

	@RequestMapping("confirmation.do")
	public void confirmation() {
	}

	@RequestMapping("orderAllCartList.do")
	public String orderAllCartList(OrderVO orderVO, Model m) {
		System.out.println("모든 상품 주문" + orderVO.getM_number());
		List<CartVO> cartlist = mypageService.getCartList(orderVO);
		m.addAttribute("cartList", cartlist);
		MemberVO member = mypageService.getOrdererInformation(orderVO);
		m.addAttribute("member", member);
		LocationVO location = mypageService.getDefaultLocation(orderVO);
		m.addAttribute("location", location);
		return "/my/orderForm";
	}

	@RequestMapping("orderSelectAddress.do")
	public void getLocationList(LocationVO locationVO, Model m) {
		LocationVO defaultLocation = locationService.getDefaultLocation(locationVO);
		List<LocationVO> locationList = locationService.getLocationList(locationVO);
		m.addAttribute("defaultLocation", defaultLocation);
		m.addAttribute("locationList", locationList);
	}

	@RequestMapping("orderFormSubmit.do")
	public ModelAndView orderFormSubmit(OrderVO orderVO) {
		int result = 0;
		result = mypageService.orderFormSubmit(orderVO);
		String message = "상품 결제에 실패하였습니다";
		if (result != 0)
			message = result + "개의 상품 주문이 완료되었습니다";
		ModelAndView mv = new ModelAndView();
		mv.setViewName("my/order_ok");
		mv.addObject("message", message);
		return mv;
	}

}
