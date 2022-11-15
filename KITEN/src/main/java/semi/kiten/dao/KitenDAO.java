package semi.kiten.dao;

import java.util.List;

import semi.kiten.domain.KitenVO;

public interface KitenDAO {
	public void insertBoard(KitenVO vo);

	public void updateBoard(KitenVO vo) ;

	public void deleteBoard(KitenVO vo);

	public KitenVO getBoard(KitenVO vo) ;

	public List<KitenVO> getBoardList(KitenVO vo) ;
}
