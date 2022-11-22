package semi.kiten.service;

import java.util.List;

import semi.kiten.vo.FilterVO;
import semi.kiten.vo.ProductVO;



public interface ProductService {
	List<ProductVO> getProductList();
	List<ProductVO> getProductList(String search);
	ProductVO getProductDetail(ProductVO vo);
	
	// 필터의 이름과 해당 상품 개수 출력
	List<FilterVO> getFilterCount();
	
	// 전체 상품 개수 출력
	int getWholeCount();
	
	List<ProductVO> getCategoryList(String categoryname);
}