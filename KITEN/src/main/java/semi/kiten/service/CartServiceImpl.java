package semi.kiten.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import semi.kiten.dao.CartDAOImpl;
import semi.kiten.vo.CartVO;
import semi.kiten.vo.WishVO;

@Service
public class CartServiceImpl implements CartService {

	@Autowired
	private CartDAOImpl cartDAO;

	public int addCart(CartVO vo) {
		if (cartDAO.checkCart(vo) == 1)
			return cartDAO.updateCart(vo);
		else
			return cartDAO.addCart(vo);

	}

	public int updateCartQuantity(CartVO vo) {
		return cartDAO.updateCartQuantity(vo);
	}
	public int cartDeleteOne(CartVO vo) {
		return cartDAO.cartDeleteOne(vo);
	}
	
	public int addWish(WishVO vo) {
		if(cartDAO.checkWish(vo) == 1) return 10;
		else return cartDAO.addWish(vo);
	}
	
	public int wishDeleteOne(WishVO vo) {
		return cartDAO.wishDeleteOne(vo);
	}
}
