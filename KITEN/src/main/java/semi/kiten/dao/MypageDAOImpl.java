package semi.kiten.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import semi.kiten.vo.CartVO;
import semi.kiten.vo.LocationVO;
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
	
	// (주문서) 유저 number로 기본 배송지 정보 출력
	public LocationVO getDefaultLocation(OrderVO vo) {
		System.out.println("===> Mybatis getDefaultLocation() 호출");
		return mybatis.selectOne("order.getDefaultLocation", vo);
	}
	
	// (결제) 결제 정보 DB에 저장
	public int orderFormSubmit(OrderVO vo) {
		System.out.println("===>  OrderMapper orderFormSubmit() 호출");
		vo.setO_number(mybatis.selectOne("order.orderFormSubmit", vo));
		System.out.println("===>  OderMapper insertOrderNumber() 호출");
		return mybatis.update("order.insertOrderNumber", vo);
	}
	
	// (주문 내역) 유저 number로 주문 내역 출력
	public List<OrderVO> getOrderList(OrderVO vo){
		System.out.println("===> Mybatis getOrderList() 호출");
		return mybatis.selectList("order.getOrderList", vo);
	}
	
	// (주문 내역 상세 보기) 주문 번호로 주문 정보 출력
	public OrderVO getOrderInformation(OrderVO vo) {
		System.out.println("===> Mybatis getOrderInformation() 호출");
		return mybatis.selectOne("order.getOrderInformation", vo);
	}
	
	// (주문 내역 상세 보기) 주문 번호로 배송지 정보 출력
	public LocationVO getLocationInformation(OrderVO vo) {
		int l_number = mybatis.selectOne("order.getLocationNumber", vo);
		return mybatis.selectOne("order.getLocationInformation", l_number);
	}
	
	// (주문 내역 상세 보기) 주문 번호로 상품 상세 정보 출력
	public List<CartVO> getOrderedCartList(OrderVO vo) {
		return mybatis.selectList("order.getOrderedCartList", vo);
	}
}