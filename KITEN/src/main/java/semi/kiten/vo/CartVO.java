package semi.kiten.vo;

public class CartVO {
	
	private int		c_number;			// 장바구니 번호
	private int		m_number;			// 장바구니에 넣은 회원 번호
	private int		p_number;			// 장바구니에 담은 상품 번호
	private int		c_quantity;			// 담은 수량
	private int		c_state;			// 장바구니 상태 - 1: 구매 전 / 2: 구매 완료
	private int		o_number;			// 구매 후 할당되는 주문 번호
	private String	p_list_realfname;	// 장바구니에 출력할 이미지
	private String	p_name;				// 장바구니에 출력할 제품명
	private	int		p_price;			// 장바구니에 출력할 제품 가격
	
	
	public int getC_number() {
		return c_number;
	}
	public void setC_number(int c_number) {
		this.c_number = c_number;
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
	public int getC_quantity() {
		return c_quantity;
	}
	public void setC_quantity(int c_quantity) {
		this.c_quantity = c_quantity;
	}
	public int getC_state() {
		return c_state;
	}
	public void setC_state(int c_state) {
		this.c_state = c_state;
	}
	public int getO_number() {
		return o_number;
	}
	public void setO_number(int o_number) {
		this.o_number = o_number;
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
