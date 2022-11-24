package semi.kiten.dao;

import java.util.List;

import semi.kiten.vo.CartVO;
import semi.kiten.vo.FilterVO;
import semi.kiten.vo.ProductVO;

public interface MypageDAO {
	
	// 유저 number로 장바구니 목록 출력
	public List<CartVO> getCartList(CartVO vo);
	
}
