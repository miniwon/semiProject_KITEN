package semi.kiten.service;

import semi.kiten.vo.CartVO;

public interface CartService {
	
	public int addCart(CartVO vo);
	
	public int updateCartQuantity(CartVO vo);
	
	public int cartDeleteOne(CartVO vo);
}