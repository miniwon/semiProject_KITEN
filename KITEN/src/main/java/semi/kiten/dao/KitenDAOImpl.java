package semi.kiten.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import semi.kiten.domain.KitenVO;



@Repository("boardDAO") 
public class KitenDAOImpl implements KitenDAO{
	@Autowired
	private SqlSessionTemplate mybatis;

	public void insertBoard(KitenVO vo) {
		System.out.println("===> Mybatis insertBoard() 호출");
		mybatis.insert("BoardDAO.insertBoard", vo);
	}

	public void updateBoard(KitenVO vo) {
		System.out.println("===> Mybatis updateBoard() 호출");
		mybatis.update("BoardDAO.updateBoard", vo);
	}

	public void deleteBoard(KitenVO vo) {
		System.out.println("===> Mybatis deleteBoard() 호출");
		mybatis.delete("BoardDAO.deleteBoard", vo);
	}

	public KitenVO getBoard(KitenVO vo) {
		System.out.println("===> Mybatis getBoard() 호출");
		return (KitenVO) mybatis.selectOne("BoardDAO.getBoard", vo);
	}

	public List<KitenVO> getBoardList(KitenVO vo) {
		System.out.println("===> Mybatis getBoardList() 호출");
		return mybatis.selectList("BoardDAO.getBoardList", vo);
	}
}