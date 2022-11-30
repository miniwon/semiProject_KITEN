package semi.kiten.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import semi.kiten.vo.LocationVO;
import semi.kiten.vo.MemberVO;
import semi.kiten.vo.ProductVO;

@Repository
public class LocationDAOImpl implements LocationDAO {

	@Autowired
	SqlSessionTemplate mybatis;
	
	// m_number로 기본 배송지 조회
	public LocationVO getDefaultLocation(LocationVO vo) {
		return mybatis.selectOne("location.getDefaultLocation", vo);
	}
	
	// m_number로 배송지 목록 조회
	public List<LocationVO> getLocationList(LocationVO vo){
		return mybatis.selectList("location.getLocationList", vo);
	}

	@Override
	public int userAddressInsert_ok(LocationVO vo) {
		return mybatis.insert("location.userAddressInsert_ok", vo);
	}

	// 배송지 삭제
	@Override
	public int userAddressDelete(LocationVO vo) {
		return mybatis.update("location.userAddressDelete", vo);	
	}

	@Override
	public int userSelectLocation(LocationVO vo) {
		
		return mybatis.update("location.userSelectLocation", vo);	
	}

	
}
