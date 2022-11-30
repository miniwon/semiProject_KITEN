package semi.kiten.service;

import java.util.List;

import semi.kiten.vo.CartVO;
import semi.kiten.vo.LocationVO;
import semi.kiten.vo.MemberVO;
import semi.kiten.vo.OrderVO;
import semi.kiten.vo.WishVO;


public interface MypageService {
	
	// (장바구니) 유저 number로 장바구니 목록 출력
	List<CartVO> getCartList(CartVO vo);

	// 유저 number로 찜 목록 출력
	List<WishVO> getWishList(WishVO vo);
	
	// 유저 number로 장바구니 전체 목록 주문서로 이동
	List<OrderVO> orderAllCartList(OrderVO vo);
	
	// (주문서) 유저 number로 모든 장바구니 목록 출력
	List<CartVO> getCartList(OrderVO vo);
	
	// (주문서) 유저 number로 주문자 정보 출력
	MemberVO getOrdererInformation(OrderVO vo);
	
	// (주문서) 유저 number로 기본 배송지 정보 출력
	LocationVO getDefaultLocation(OrderVO vo);
	
	// (결제) 결제 정보 DB에 저장
	int orderFormSubmit(OrderVO vo);


}