package semi.kiten.vo;

public class WishVO {
	
	private int		w_number;			// 찜 번호
	private int		m_number;			// 찜 목록에 넣은 회원 번호
	private int		p_number;			// 찜 목록에 담은 상품 번호
	private int		w_state;			// 찜 목록 상태 - 0: 찜 목록에서 삭제 / 1: 찜 목록에 담음 / 2: 장바구니로 전송
	
	public int getW_number() {
		return w_number;
	}
	public void setW_number(int w_number) {
		this.w_number = w_number;
	}
	public int getM_number() {
		return m_number;
	}
	public void setM_number(int m_number) {
		this.m_number = m_number;
	}
	public int getP_number() {
		return p_number;
	}
	public void setP_number(int p_number) {
		this.p_number = p_number;
	}
	public int getW_state() {
		return w_state;
	}
	public void setW_state(int w_state) {
		this.w_state = w_state;
	}
	
}
