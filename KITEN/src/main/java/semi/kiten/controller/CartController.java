package semi.kiten.controller;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import semi.kiten.service.ProductService;
import semi.kiten.vo.CartVO;

@RestController
public class CartController {
	
	ProductService productService;
	
	// 장바구니에 추가
	@PostMapping("cart/addCart")
	public String addCart(CartVO cartVO) {
		System.out.println("장바구니 추가 메서드 호출" + cartVO);
		int result = productService.addCart(cartVO);
		if(result == 1 ) return "success";
		else return "fail";
	}
	
}
