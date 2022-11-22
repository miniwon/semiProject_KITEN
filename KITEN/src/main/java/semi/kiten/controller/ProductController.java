package semi.kiten.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import semi.kiten.service.ProductService;
import semi.kiten.vo.FilterVO;
import semi.kiten.vo.ProductVO;

@Controller
@RequestMapping("product")
public class ProductController {

	@Autowired
	private ProductService productService;

	// 전체 목록 출력
	@RequestMapping("getProductList.do")
	public void getProductList(Model m) {
		List<FilterVO> filterList = productService.getFilterCount();
		List<ProductVO> list = productService.getProductList();
		int wholeCount = productService.getWholeCount();
		m.addAttribute("productList", list);
		m.addAttribute("filterList", filterList);
		m.addAttribute("wholeCount", wholeCount);
	}
	
	// 카테고리 클릭 시 출력되는 목록
	@RequestMapping("getCategoryList.do")
	public String getCategoryList(String categoryname, Model m) {
		List<FilterVO> filterList = productService.getFilterCount();
		List<ProductVO> list = productService.getCategoryList(categoryname);
		int wholeCount = productService.getWholeCount();
		m.addAttribute("productList", list);
		m.addAttribute("filterList", filterList);
		m.addAttribute("wholeCount", wholeCount);
		return "/product/getProductList";
	}
	
	// 검색창에 검색 시 출력되는 목록
	@RequestMapping("searchProductList.do")
	public String searchProductList(String search, Model m) {
		List<FilterVO> filterList = productService.getFilterCount();
		List<ProductVO> list = productService.getProductList(search);
		int wholeCount = productService.getWholeCount();
		m.addAttribute("filterList", filterList);
		m.addAttribute("productList", list);
		m.addAttribute("wholeCount", wholeCount);

		return "/product/getProductList";
	}
	
	@RequestMapping("getProductDetail.do")
	public void getProductDetail(ProductVO productVO, Model m) {
		ProductVO resultVO = productService.getProductDetail(productVO);
		m.addAttribute("product", resultVO);
	}
	

}
