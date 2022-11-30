package semi.kiten.dao;

import java.util.List;

import semi.kiten.vo.LocationVO;

public interface LocationDAO {
	
	// m_number로 기본 배송지 조회
	public LocationVO getDefaultLocation(LocationVO vo);
	
	// m_number로 배송지 목록 조회
	public List<LocationVO> getLocationList(LocationVO vo);
	
	// 배송지 추가 입력 
	public int userAddressInsert_ok(LocationVO vo) ;
	
	// 배송지 삭제
	public int userAddressDelete(LocationVO vo);
	
	public int userSelectLocation(LocationVO vo);

	
}
