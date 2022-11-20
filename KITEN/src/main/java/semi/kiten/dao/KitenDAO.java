package semi.kiten.dao;

import java.util.List;

import semi.kiten.vo.exampleVO;

public interface KitenDAO {
	public void insertBoard(exampleVO vo);

	public void updateBoard(exampleVO vo) ;

	public void deleteBoard(exampleVO vo);

	public exampleVO getBoard(exampleVO vo) ;

	public List<exampleVO> getBoardList(exampleVO vo) ;
}
