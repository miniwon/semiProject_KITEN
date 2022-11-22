package semi.kiten.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import semi.kiten.vo.MemberVO;
import semi.kiten.vo.ProductVO;

@Repository
public class AdminDAOImpl implements AdminDAO {

	@Autowired
	SqlSessionTemplate mybatis;

	@Override
	public int productInsert(ProductVO vo) {
		System.out.println("===>  AdminMapper productInsert() 호출");
		// Mapper.xml로 가서 확인
		// ("namespace.id", parameter)
		return mybatis.insert("admin.productInsert", vo);
	}

	public List<MemberVO> memberList() {
		return mybatis.selectList("admin.memberList");
	}

	public void DeleteMember(MemberVO vo) {
		mybatis.selectList("admin.DeleteMember", vo);
	}

	public List<ProductVO> productList() {
		return mybatis.selectList("admin.productList");
	}

	public void DeleteProduct(ProductVO vo) {
		mybatis.selectList("admin.DeleteProduct", vo);
		
	}


	@Override
	public int memberModify(MemberVO vo) {
		
		return mybatis.update("admin.memberModify",vo);
	}

}
