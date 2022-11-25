package semi.kiten.service;

import java.util.List;

import semi.kiten.vo.CartVO;
import semi.kiten.vo.WishVO;


public interface MypageService {
	
	// 유저 number로 장바구니 목록 출력
	List<CartVO> getCartList(CartVO vo);

	// 유저 number로 찜 목록 출력
	List<WishVO> getWishList(WishVO vo);


}