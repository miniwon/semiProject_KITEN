package semi.kiten.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import semi.kiten.vo.CartVO;

@Repository
public class CartDAOImpl implements CartDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	// 장바구니에 같은 상품이 있는지 확인
	public int checkCart(CartVO vo) {
		System.out.println("===> Mybatis checkCart() 호출");
		return mybatis.selectOne("cart.checkCart", vo);
	}
	
	// 장바구니에 해당 상품 추가
	public int addCart(CartVO vo) {
		System.out.println("===> Mybatis addCart() 호출");
		return mybatis.insert("cart.addCart", vo);
	}
	
	// 장바구니에 해당 상품 개수 변경
	public int updateCart(CartVO vo) {
		System.out.println("===> Mybatis updateCart() 호출");
		return mybatis.insert("cart.updateCart", vo);
	}

}
