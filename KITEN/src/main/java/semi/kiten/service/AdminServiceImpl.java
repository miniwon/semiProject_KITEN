package semi.kiten.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import semi.kiten.dao.AdminDAOImpl;
import semi.kiten.vo.ProductVO;

@Service
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private AdminDAOImpl adminDAO;
	
	// 상품 등록 메서드
	public int productInsert(ProductVO vo) {
		return adminDAO.productInsert(vo);
	}

	
	
}
