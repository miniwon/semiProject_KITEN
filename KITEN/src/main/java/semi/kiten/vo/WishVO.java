package semi.kiten.vo;

public class WishVO {
	
	private int		w_number;			// 찜 번호
	private int		m_number;			// 찜 목록에 넣은 회원 번호
	private int		p_number;			// 찜 목록에 담은 상품 번호
	private int		w_state;			// 찜 목록 상태 - 0: 찜 목록에서 삭제 / 1: 찜 목록에 담음 / 2: 장바구니로 전송
	private String	p_list_realfname;	// 찜 목록에 출력할 이미지
	private String	p_name;				// 찜 목록에 출력할 제품명
	private	int		p_price;			// 찜 목록에 출력할 제품 가격
	
	
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
	public String getP_list_realfname() {
		return p_list_realfname;
	}
	public void setP_list_realfname(String p_list_realfname) {
		this.p_list_realfname = p_list_realfname;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public int getP_price() {
		return p_price;
	}
	public void setP_price(int p_price) {
		this.p_price = p_price;
	}
	
	
	
}
