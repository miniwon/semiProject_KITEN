package semi.kiten.dao;

import java.util.List;

import semi.kiten.vo.MemberVO;
import semi.kiten.vo.ProductVO;

public interface AdminDAO {
	
	int productInsert(ProductVO vo);
	
	List<MemberVO> memberList();
	
	void DeleteMember(MemberVO vo);

	List<ProductVO> productList();
	
	void DeleteProduct(ProductVO vo);
	
	public int memberModify(MemberVO vo) ;
	
}
