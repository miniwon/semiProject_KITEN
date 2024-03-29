package semi.kiten.service;

import java.util.List;

import semi.kiten.vo.LocationVO;

public interface LocationService {
	
	// m_number로 기본 배송지 조회
	LocationVO getDefaultLocation(LocationVO vo);
	
	// m_number로 배송지 목록 조회
	List<LocationVO> getLocationList(LocationVO vo);
	
	// 배송지 추가
	public int userAddressInsert_ok(LocationVO vo);
	
	public int userAddressDelete(LocationVO vo);
	
	public int userSelectLocation(LocationVO vo);

}
