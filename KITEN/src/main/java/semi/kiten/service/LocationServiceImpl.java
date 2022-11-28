package semi.kiten.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import semi.kiten.dao.AdminDAOImpl;
import semi.kiten.dao.LocationDAOImpl;
import semi.kiten.vo.LocationVO;
import semi.kiten.vo.MemberVO;
import semi.kiten.vo.ProductVO;

@Service
public class LocationServiceImpl implements LocationService {
	
	@Autowired
	private LocationDAOImpl LocationDAO;

	@Override
	public List<LocationVO> locationList() {
		
		return LocationDAO.locationList();
	}

	@Override
	public int userAddressInsert_ok(LocationVO vo) {
		
		return LocationDAO.userAddressInsert_ok(vo);
	}

	@Override
	public int userAddressDelete(LocationVO vo) {
		return LocationDAO.userAddressDelete(vo);
	}
	
	



	
	
}
