package semi.kiten.service;

import java.util.List;

import semi.kiten.vo.exampleVO;



public interface KitenService {
	// CRUD 기능의 메소드 구현
	// 글 등록
	void insertBoard(exampleVO vo);

	// 글 수정
	void updateBoard(exampleVO vo);

	// 글 삭제
	void deleteBoard(exampleVO vo);

	// 글 상세 조회
	exampleVO getBoard(exampleVO vo);

	// 글 목록 조회
	List<exampleVO> getBoardList(exampleVO vo);
}
