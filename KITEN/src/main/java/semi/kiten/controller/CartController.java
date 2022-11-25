package semi.kiten.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import semi.kiten.service.CartService;
import semi.kiten.service.ProductService;
import semi.kiten.vo.CartVO;

@RestController
public class CartController {
	
	@Autowired
	CartService cartService;
	
	// 장바구니에 추가
	@PostMapping("cart/addCart")
	public String addCart(CartVO cartVO) {
		System.out.println("장바구니 추가 메서드 호출");
		int result = cartService.addCart(cartVO);
		if(result == 1 ) return "success";
		else return "fail";
	}
	
	@PostMapping("cart/updateCartQuantity")
	public String updateCartQuantity(CartVO cartVO) {
		System.out.println("장바구니 수량 변경 메서드 호출");
		int result = cartService.updateCartQuantity(cartVO);
		if(result == 1 ) return "success";
		else return "fail";
	}	
	
}
