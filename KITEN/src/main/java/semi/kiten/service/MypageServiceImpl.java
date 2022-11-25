package semi.kiten.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import semi.kiten.dao.MypageDAOImpl;
import semi.kiten.vo.CartVO;
import semi.kiten.vo.WishVO;

@Service
public class MypageServiceImpl implements MypageService {
	
	@Autowired
	private MypageDAOImpl mypageDAO;
	
	// 유저 number로 장바구니 목록 출력
	public List<CartVO> getCartList(CartVO vo){
		return mypageDAO.getCartList(vo);
	}
	
	// 유저 number로 찜 목록 출력
	public List<WishVO> getWishList(WishVO vo){
		return mypageDAO.getWishList(vo);
	}

}