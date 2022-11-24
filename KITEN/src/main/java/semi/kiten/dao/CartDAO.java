package semi.kiten.dao;

import semi.kiten.vo.CartVO;

public interface CartDAO {

	// 장바구니에 같은 상품이 있는지 확인
	public int checkCart(CartVO vo);
	
	// 장바구니에 해당 상품 추가
	public int addCart(CartVO vo);
	
	// 장바구니에 해당 상품 개수 변경
	public int updateCart(CartVO vo);
	
	
}
