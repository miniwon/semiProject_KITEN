package semi.kiten.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import semi.kiten.service.AdminService;
import semi.kiten.vo.MemberVO;
import semi.kiten.vo.ProductVO;


@Controller
@RequestMapping("admin")
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	@RequestMapping("adminLogin.do")
	public String loginPage() {
		return "/admin/adminLogin";
	}
	
	@RequestMapping("productRegister.do")
	public String productRegister() {
		return "/admin/productRegister";
	}
	

	/* 가입하기 버튼 클릭 -> 
	 * 요청 : /admin/productInsert.do
	 * 뷰페이지 : /admin/productRegister_ok.jsp
	 */
	@RequestMapping("productInsert.do")
	public ModelAndView productInsert(ProductVO productVO) {
		
		int result = adminService.productInsert(productVO);
		String message = "상품 등록에 실패하였습니다";
		
		if(result==1) message = "[ " + productVO.getP_name() + " ] 상품 등록이 완료되었습니다";
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/productRegister_ok");
		mv.addObject("message", message);
		return mv;
	}
	
	@RequestMapping("memberTable.do")
	public String memberList(Model m) {
		
		List<MemberVO> list = adminService.memberList();
		m.addAttribute("list",list);
		return "/admin/memberTable";
		
	}
	
	@RequestMapping("memberDelete.do")
	public String deleteMember(MemberVO vo) {
		System.out.println(vo);
	adminService.deleteMember(vo);
	return "/admin/memberTable";

	}
	
	@RequestMapping("productTable.do")
	public String productList(Model m) {
		
		List<ProductVO> list = adminService.productList();
		m.addAttribute("list",list);
		return "/admin/productTable";
		
	}
	
	@RequestMapping("productDelete.do")
	public String deleteProduct(ProductVO vo) {
		System.out.println(vo);
	adminService.deleteProduct(vo);
	return "/admin/productDelete";

	}
	
	
	
	



}
