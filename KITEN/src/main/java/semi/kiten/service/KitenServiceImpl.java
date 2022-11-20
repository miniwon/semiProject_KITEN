package semi.kiten.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import semi.kiten.dao.KitenDAOImpl;
import semi.kiten.vo.exampleVO;


@Service("boardService")
public class KitenServiceImpl implements KitenService {
	@Autowired
	private KitenDAOImpl boardDAO;

	public void insertBoard(exampleVO vo) {

		boardDAO.insertBoard(vo);
	}

	public void updateBoard(exampleVO vo) {
		boardDAO.updateBoard(vo);
	}

	public void deleteBoard(exampleVO vo) {
		boardDAO.deleteBoard(vo);
	}

	public exampleVO getBoard(exampleVO vo) {
		return boardDAO.getBoard(vo);
	}

	public List<exampleVO> getBoardList(exampleVO vo) {
		return boardDAO.getBoardList(vo);
	}
}