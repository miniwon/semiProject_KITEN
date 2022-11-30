package semi.kiten.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import semi.kiten.service.LocationService;
import semi.kiten.vo.LocationVO;


@Controller
@RequestMapping("user")
public class LocationController {
	
	
	@Autowired
	private LocationService locationService;
	
	// 배송지 관리 버튼 클릭 시 기본 배송지 + 일반 배송지 목록 출력
	@RequestMapping("userAddress.do")
	public void getLocationList(LocationVO locationVO, Model m) {
		LocationVO defaultLocation = locationService.getDefaultLocation(locationVO);
		List<LocationVO> locationList = locationService.getLocationList(locationVO);
		m.addAttribute("defaultLocation", defaultLocation);
		m.addAttribute("locationList",locationList);
	}
	
	// 배송지 추가 버튼 클릭 시 배송지 추가 화면 출력
	@RequestMapping("userAddressInsert.do")
	public void locationInsert(LocationVO vo) {
	}
	
	// 배송지 추가 버튼 클릭 후 목록으로
	@RequestMapping("userAddressInsert_ok.do")
	public String locationInsert_ok(LocationVO vo) {
		 locationService.userAddressInsert_ok(vo);
		return "redirect:/user/userAddress.do?m_number=" + vo.getM_number();
	}
	
	// 배송지 삭제 버튼 클릭 시 삭제 후 목록으로
	@RequestMapping("userAddressDelete.do")
	public String userAddressDelete(LocationVO vo) {
		System.out.println("배송지 삭제 메소드 호출");
		locationService.userAddressDelete(vo);
		return "redirect:/user/userAddress.do?m_number=" + vo.getM_number();
	}
	
	@RequestMapping(value="userSelectLocation.do",  produces = "application/text;charset=utf-8")
	@ResponseBody
	public String userSelectLocation(LocationVO vo) {
		System.out.println("기본 배송지 선택 메서드 호출");
		int result = locationService.userSelectLocation(vo);
		System.out.println(result);
		System.out.println(vo);
		if(result == 1 ) return "기본 배송지 설정 완료하였습니다.";
		else return "fail";
	}
	

}
