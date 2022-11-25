package semi.kiten.dao;

import semi.kiten.vo.CartVO;
import semi.kiten.vo.WishVO;

public interface CartDAO {

	// 장바구니에 같은 상품이 있는지 확인
	public int checkCart(CartVO vo);
	
	// 장바구니에 중복 상품 없을 시 상품 추가
	public int addCart(CartVO vo);
	
	// 장바구니에 중복 상품 없을 시 상품 추가
	public int updateCart(CartVO vo);
	
	// 장바구니 페이지에서 상품 개수 변경
	public int updateCartQuantity(CartVO vo);
	
	// 장바구니 페이지에서 상품 삭제
	public int cartDeleteOne(CartVO vo);
	
	// 찜 목록에 같은 상품이 있는지 확인
	public int checkWish(WishVO vo);
	
	// 찜 목록에 중복 상품 없을 시 상품 추가
	public int addWish(WishVO vo);
	
}
