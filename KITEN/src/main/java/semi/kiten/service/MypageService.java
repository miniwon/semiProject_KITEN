package semi.kiten.service;

import java.util.List;

import semi.kiten.vo.CartVO;


public interface MypageService {
	
	// 유저 number로 장바구니 목록 출력
	List<CartVO> getCartList(CartVO vo);

}