package semi.kiten.dao;

import java.util.List;

import semi.kiten.vo.LocationVO;
import semi.kiten.vo.MemberVO;

public interface LocationDAO {
	
	// 배송지 목록 리스트 출력
	List<LocationVO> locationList();
	
	// 배송지 추가 입력 
	public int userAddressInsert_ok(LocationVO vo) ;
	
	public int userAddressDelete(LocationVO vo);

	
}
