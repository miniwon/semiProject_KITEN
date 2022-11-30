package semi.kiten.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import semi.kiten.vo.CartVO;
import semi.kiten.vo.MemberVO;
import semi.kiten.vo.OrderVO;
import semi.kiten.vo.WishVO;

@Repository
public class MypageDAOImpl implements MypageDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	// 유저 number로 장바구니 목록 출력
	public List<CartVO> getCartList(CartVO vo){
		System.out.println("===> Mybatis getCartList() 호출");
		return mybatis.selectList("cart.getCartList", vo);	
	}
	
	// 유저 number로 찜 목록 출력
	public List<WishVO> getWishList(WishVO vo){
		System.out.println("===> Mybatis getWishList() 호출");
		return mybatis.selectList("cart.getWishList", vo);
	}
	
	// 유저 number로 장바구니 전체 목록 주문서로 이동
	public List<OrderVO> orderAllCartList(OrderVO vo){
		System.out.println("===> Mybatis orderAllCartList() 호출");
		return mybatis.selectList("order.orderAllCartList", vo);
	}
	
	// (주문서) 유저 number로 모든 장바구니 목록 출력
	public List<CartVO> getCartList(OrderVO vo) {
		System.out.println("===> Mybatis getCartList() 호출");
		return mybatis.selectList("order.getCartList", vo);
	}
	
	// (주문서) 유저 number로 주문자 정보 출력
	public MemberVO getOrdererInformation(OrderVO vo) {
		System.out.println("===> Mybatis getOrdererInformation() 호출");
		return mybatis.selectOne("order.getOrdererInformation", vo);
	}
}