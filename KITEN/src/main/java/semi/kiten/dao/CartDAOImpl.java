package semi.kiten.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import semi.kiten.vo.CartVO;
import semi.kiten.vo.WishVO;

@Repository
public class CartDAOImpl implements CartDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	// 장바구니에 같은 상품이 있는지 확인
	public int checkCart(CartVO vo) {
		System.out.println("===> Mybatis checkCart() 호출");
		return mybatis.selectOne("cart.checkCart", vo);
	}
	
	// 장바구니에 중복 상품 없을 시 상품 추가
	public int addCart(CartVO vo) {
		System.out.println("===> Mybatis addCart() 호출");
		return mybatis.insert("cart.addCart", vo);
	}
	
	// 장바구니에 중복 상품 없을 시 상품 추가
	public int updateCart(CartVO vo) {
		System.out.println("===> Mybatis updateCart() 호출");
		return mybatis.insert("cart.updateCart", vo);
	}
	
	// 장바구니 페이지에서 상품 개수 변경
	public int updateCartQuantity(CartVO vo) {
		System.out.println("===> Mybatis updateCartQuantity() 호출");
		return mybatis.insert("cart.updateCartQuantity", vo);		
	}
	
	// 장바구니 페이지에서 상품 삭제
	public int cartDeleteOne(CartVO vo) {
		System.out.println("===> Mybatis cartDeleteOne() 호출");
		return mybatis.update("cart.cartDeleteOne", vo);	
	}
	
	// 찜 목록에 같은 상품이 있는지 확인
	public int checkWish(WishVO vo) {
		System.out.println("===> Mybatis checkWish() 호출");
		return mybatis.selectOne("cart.checkWish", vo);
	}
	
	// 찜 목록에 중복 상품 없을 시 상품 추가
	public int addWish(WishVO vo) {
		System.out.println("===> Mybatis addWish() 호출");
		return mybatis.insert("cart.addWish", vo);
	}

}
