package semi.kiten.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import semi.kiten.dao.CartDAOImpl;
import semi.kiten.vo.CartVO;

@Service
public class CartServiceImpl implements CartService {
	
	@Autowired
	private CartDAOImpl cartDAO;
	
		public int addCart(CartVO vo) {
			if ( cartDAO.checkCart(vo) == 1 ) return cartDAO.updateCart(vo);
			else return cartDAO.addCart(vo);

		}
}
