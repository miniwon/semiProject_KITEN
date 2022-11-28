package semi.kiten.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import semi.kiten.vo.FilterVO;
import semi.kiten.vo.ProductVO;

@Repository
public class ProductDAOImpl implements ProductDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	public List<ProductVO> getProductList(){
		System.out.println("===> Mybatis getProductList() 호출");
		return mybatis.selectList("product.getProductList");		
	}
	
	public ProductVO getProductDetail(ProductVO vo) {
		System.out.println("===> Mybatis getProductDetail() 호출");
		return mybatis.selectOne("product.getProductDetail", vo);
	}
	
	public List<ProductVO> getProductList(String search){
		System.out.println("===> Mybatis searchProductList() 호출");
		return mybatis.selectList("product.searchProductList", search);	
	}
	
	public List<FilterVO> getFilterCount() {
		System.out.println("===> Mybatis getFilterCount() 호출");
		return mybatis.selectList("product.getFilterCount");
	}
	
	public int getWholeCount() {
		System.out.println("===> Mybatis getWholeCount() 호출");
		return mybatis.selectOne("product.getWholeCount");
	}
	
	public List<ProductVO> getCategoryList(String categoryname){
		System.out.println("===> Mybatis getCategoryList() 호출");
		return mybatis.selectList("product.getCategoryList", categoryname);
	}

	@Override
	public int count() {
		 return mybatis.selectOne("product.count"); 
	}

	@Override
	public List<ProductVO> listPage(int displayPost, int postNum) {
		
		HashMap data = new HashMap();
		  
		 data.put("displayPost", displayPost);
		 data.put("postNum", postNum);
		  
		 return mybatis.selectList("product.listPage", data);
	}

	@Override
	public List<ProductVO> getProductList(int displayPost, int postNum) {
		HashMap data = new HashMap();
		  
		 data.put("displayPost", displayPost);
		 data.put("postNum", postNum);
		  
		 return mybatis.selectList("product.getProductList", data);
	}
}
