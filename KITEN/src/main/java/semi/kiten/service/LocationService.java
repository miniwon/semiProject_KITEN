package semi.kiten.service;

import java.util.List;

import semi.kiten.vo.LocationVO;
import semi.kiten.vo.ProductVO;

public interface LocationService {
	
	List<LocationVO> locationList();
	
	public int userAddressInsert_ok(LocationVO vo);
	
	public int userAddressDelete(LocationVO vo);

}
