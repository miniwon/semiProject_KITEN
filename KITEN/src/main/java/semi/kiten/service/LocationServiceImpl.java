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
	
	// m_number로 기본 배송지 조회
	public LocationVO getDefaultLocation(LocationVO vo) {
		return LocationDAO.getDefaultLocation(vo);
	}
	
	// m_number로 배송지 목록 조회
	public List<LocationVO> getLocationList(LocationVO vo){
		return LocationDAO.getLocationList(vo);
	}

	// 배송지 추가
	@Override
	public int userAddressInsert_ok(LocationVO vo) {
		
		return LocationDAO.userAddressInsert_ok(vo);
	}
	
	// 배송지 삭제
	@Override
	public int userAddressDelete(LocationVO vo) {
		return LocationDAO.userAddressDelete(vo);
	}

	@Override
	public int userSelectLocation(LocationVO vo) {
		return LocationDAO.userSelectLocation(vo);
	}
	
	



	
	
}
