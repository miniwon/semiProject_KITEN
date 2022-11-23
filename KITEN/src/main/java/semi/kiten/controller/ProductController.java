package semi.kiten.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import semi.kiten.service.ProductService;
import semi.kiten.vo.CartVO;
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
	
	@RequestMapping("getProductListPage.do")
	public void getProductListPage(Model m) {
		
		
		List<FilterVO> filterList = productService.getFilterCount();
		List<ProductVO> list = productService.getProductList();
		int wholeCount = productService.getWholeCount();
		m.addAttribute("productList", list);
		m.addAttribute("filterList", filterList);
		m.addAttribute("wholeCount", wholeCount);
		
	}

	
	

	// 게시물 목록 + 페이징 추가
	@RequestMapping(value = "listPage.do", method = RequestMethod.GET)
	public void listPage(Model model, @RequestParam("num") int num)  {
		
	List<FilterVO> filterList = productService.getFilterCount();

	 
	 // 게시물 총 갯수
	 int count = productService.count();
	  
	
	// 한번에 표시할 페이징 번호의 갯수
	 int postNum = 6;
	  
	 // 하단 페이징 번호 ([ 게시물 총 갯수 ÷ 한 페이지에 출력할 갯수 ]의 올림)
	 int pageNum = (int)Math.ceil((double)count/postNum);
	  
	 // 출력할 게시물
	 int displayPost = (num - 1) * postNum;
	 
	 // 한 페이지에 출력할 게시물 갯수
	 int pageNum_cnt = 5;

	 // 표시되는 페이지 번호 중 마지막 번호
	 int endPageNum = (int)(Math.ceil((double)num / (double)pageNum_cnt) * pageNum_cnt);

	 // 표시되는 페이지 번호 중 첫번째 번호
	 int startPageNum = endPageNum - (pageNum_cnt - 1);
	 
	// 마지막 번호 재계산
	 int endPageNum_tmp = (int)(Math.ceil((double)count / (double)postNum));
	 
	 if(endPageNum > endPageNum_tmp) {
	  endPageNum = endPageNum_tmp;
	 }
	 
	 boolean prev = startPageNum == 1 ? false : true;
	 boolean next = endPageNum * postNum >= count ? false : true;
	 
	 System.out.println(startPageNum);
	 System.out.println(endPageNum);
	
	 System.out.println(pageNum);
	 
	 List<ProductVO> list = productService.listPage(displayPost, postNum);
	 model.addAttribute("List", list);   
	 model.addAttribute("pageNum", pageNum);
	 model.addAttribute("filterList", filterList);
	 model.addAttribute("startPageNum",startPageNum);
	 model.addAttribute("endPageNum", endPageNum);
	 model.addAttribute("prev",prev);
	 model.addAttribute("next",next);
	 model.addAttribute("count",count);
	 
	}
	

}
