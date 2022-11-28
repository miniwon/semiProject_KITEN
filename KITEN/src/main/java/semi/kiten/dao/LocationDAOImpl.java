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

	@Override
	public List<LocationVO> locationList() {
		return mybatis.selectList("location.locationList");
	}

	@Override
	public int userAddressInsert_ok(LocationVO vo) {
		return mybatis.insert("location.userAddressInsert_ok", vo);
	}

	@Override
	public int userAddressDelete(LocationVO vo) {
		return mybatis.update("location.userAddressDelete", vo);	
	}

	
}
