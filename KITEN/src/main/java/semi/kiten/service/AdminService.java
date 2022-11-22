package semi.kiten.service;

import java.util.List;

import semi.kiten.vo.MemberVO;
import semi.kiten.vo.ProductVO;

public interface AdminService {
	
	// 상품 등록
	public int productInsert(ProductVO vo);
	
	List<MemberVO> memberList();

	void deleteMember(MemberVO vo);

    List<ProductVO> productList();

    void deleteProduct(ProductVO vo);
    
    public int memberModify(MemberVO vo);

}
