package semi.kiten.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import semi.kiten.service.LocationService;
import semi.kiten.vo.LocationVO;


@Controller
@RequestMapping("user")
public class LocationController {
	
	
	@Autowired
	private LocationService locationService;
	
	@RequestMapping("userAddress.do")
	public String locationList(Model m) {
		
		List<LocationVO> list = locationService.locationList();
		m.addAttribute("list",list);
		return "/user/userAddress";
	
	}
	
	@RequestMapping("userAddressInsert.do")
	public String locationInsert() {
		
		return "/user/userAddressInsert";
	
	}
	
	@RequestMapping("userAddressInsert_ok.do")
	public String locationInsert_ok(LocationVO vo) {
		
		 locationService.userAddressInsert_ok(vo);
		return "/home";
	
	}
	
	@RequestMapping("userAddressDelete.do")
	public String userAddressDelete(LocationVO vo) {
		System.out.println("배송지 삭제 메소드 호출");
		int result = locationService.userAddressDelete(vo);
		System.out.println(result);
		return "user/userAddress";
	}

}
