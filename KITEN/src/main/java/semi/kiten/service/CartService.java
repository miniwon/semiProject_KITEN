package semi.kiten.service;

import semi.kiten.vo.CartVO;
import semi.kiten.vo.WishVO;

public interface CartService {
	
	public int addCart(CartVO vo);
	
	public int updateCartQuantity(CartVO vo);
	
	public int cartDeleteOne(CartVO vo);
	
	public int addWish(WishVO vo);
	
	public int wishDeleteOne(WishVO vo);
}