package semi.kiten.dao;

import java.util.List;

import semi.kiten.vo.FilterVO;
import semi.kiten.vo.ProductVO;

public interface ProductDAO {
	public List<ProductVO> getProductList();
	
	public ProductVO getProductDetail(ProductVO vo);
	
	public List<ProductVO> getProductList(String search);	
	
	public List<FilterVO> getFilterCount();
	
	public int getWholeCount();
	
	public List<ProductVO> getCategoryList(String categoryname);
}
