package semi.kiten.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import semi.kiten.dao.ProductDAOImpl;
import semi.kiten.vo.CartVO;
import semi.kiten.vo.FilterVO;
import semi.kiten.vo.ProductVO;

@Service
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	private ProductDAOImpl productDAO;
	
	
		public List<ProductVO> getProductList() {
			return productDAO.getProductList();
		}
		
		public ProductVO getProductDetail(ProductVO vo) {
			return productDAO.getProductDetail(vo);
		}
		
		public List<ProductVO> getProductList(String search) {
			return productDAO.getProductList(search);
		}
		
		public List<FilterVO> getFilterCount() {
			return productDAO.getFilterCount();
		}
		
		public int getWholeCount() {
			return productDAO.getWholeCount();
		}
		
		public List<ProductVO> getCategoryList(String categoryname) {
			return productDAO.getCategoryList(categoryname);
		}

		@Override
		public int count() {
			
			return productDAO.count();

		}

		@Override
		public List<ProductVO> listPage(int displayPost, int postNum) {
			return productDAO.listPage(displayPost, postNum);
		}
		
		public int addCart(CartVO vo) {
			return productDAO.addCart(vo);
		}
}
