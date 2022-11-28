package semi.kiten.dao;

import java.util.List;

import semi.kiten.vo.CartVO;
import semi.kiten.vo.FilterVO;
import semi.kiten.vo.ProductVO;

public interface ProductDAO {
	public List<ProductVO> getProductList();
	
	public ProductVO getProductDetail(ProductVO vo);
	
	public List<ProductVO> getProductList(String search);	
	
	public List<FilterVO> getFilterCount();
	
	public int getWholeCount();
	
	public List<ProductVO> getCategoryList(String categoryname);
	
	public int count();
	
	public List<ProductVO> listPage(int displayPost, int postNum);
	
	public List<ProductVO> getProductList(int displayPost, int postNum);
	
}
