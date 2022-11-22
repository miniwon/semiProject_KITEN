package semi.kiten.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import semi.kiten.dao.AdminDAOImpl;
import semi.kiten.vo.MemberVO;
import semi.kiten.vo.ProductVO;

@Service
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private AdminDAOImpl adminDAO;
	
	// 상품 등록 메서드
	public int productInsert(ProductVO vo) {
		return adminDAO.productInsert(vo);
	}

	@Override
	public List<MemberVO> memberList() {
		return adminDAO.memberList();
	}

	@Override
	public void deleteMember(MemberVO vo) {
		adminDAO.DeleteMember(vo);
		
	}

	@Override
	public List<ProductVO> productList() {
		return adminDAO.productList();
	}

	@Override
	public void deleteProduct(ProductVO vo) {
		adminDAO.DeleteProduct(vo);
		
	}

	@Override
	public int memberModify(MemberVO vo) {
		
		return adminDAO.memberModify(vo);
	}



	
	
}
