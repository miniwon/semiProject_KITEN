package semi.kiten.vo;

public class OrderVO {

	private int		m_number;			// 해당 상품을 구매하는 회원 번호
	private int		c_number;			// 장바구니 번호
	private int		c_state;			// 장바구니 상태 - 1: 구매 전 / 2: 구매 완료
	private int		o_number;			// 구매 후 할당되는 주문 번호

	private String	p_list_realfname;	// 주문 상품 목록에 출력할 이미지
	private String	p_name;				// 주문 상품 목록에 출력할 제품명
	private int		c_quantity;			// 담은 수량 = 구매할 수량
	private	int		p_price;			// 주문 상품 목록에 출력할 제품 가격
	
	private String	m_name;				// 해당 상품을 구매하는 회원 이름
	private String	m_tel;				// 해당 상품을 구매하는 회원 전화번호
	private String	m_email;			// 해당 상품을 구매하는 회원 이메일
	
	private String	o_date;				// 구매 날짜
	private int		o_shippingfee;		// 배송비
	
	private int		o_payment;			// 총 결제 금액

	public int getM_number() {
		return m_number;
	}

	public void setM_number(int m_number) {
		this.m_number = m_number;
	}

	public int getC_number() {
		return c_number;
	}

	public void setC_number(int c_number) {
		this.c_number = c_number;
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

	public int getC_quantity() {
		return c_quantity;
	}

	public void setC_quantity(int c_quantity) {
		this.c_quantity = c_quantity;
	}

	public int getP_price() {
		return p_price;
	}

	public void setP_price(int p_price) {
		this.p_price = p_price;
	}

	public String getM_name() {
		return m_name;
	}

	public void setM_name(String m_name) {
		this.m_name = m_name;
	}

	public String getM_tel() {
		return m_tel;
	}

	public void setM_tel(String m_tel) {
		this.m_tel = m_tel;
	}

	public String getM_email() {
		return m_email;
	}

	public void setM_email(String m_email) {
		this.m_email = m_email;
	}

	public String getO_date() {
		return o_date;
	}

	public void setO_date(String o_date) {
		this.o_date = o_date;
	}

	public int getO_shippingfee() {
		return o_shippingfee;
	}

	public void setO_shippingfee(int o_shippingfee) {
		this.o_shippingfee = o_shippingfee;
	}

	public int getO_payment() {
		return o_payment;
	}

	public void setO_payment(int o_payment) {
		this.o_payment = o_payment;
	}
	
	
}
