package semi.kiten.vo;

public class OrderVO {

	private int		m_number;			// 해당 상품을 구매한 회원 번호
	private int		o_number;			// 구매 후 할당되는 주문 번호
	private String	o_date;				// 구매 날짜
	private int		o_sumprice;			// 총 상품 금액
	private int		o_shippingfee;		// 배송비
	private int		o_payment;			// 총 결제 금액
	private int		o_state;			// 주문 상태 - 1: 결제 완료 / 2: 배송 중 / 3: 배송 완료 / 4: 주문 취소
	private int		l_number;			// 배송지 번호
	private String	o_method;			// 결제 수단
	
	
	public int getM_number() {
		return m_number;
	}
	public void setM_number(int m_number) {
		this.m_number = m_number;
	}
	public int getO_number() {
		return o_number;
	}
	public void setO_number(int o_number) {
		this.o_number = o_number;
	}
	public String getO_date() {
		return o_date;
	}
	public void setO_date(String o_date) {
		this.o_date = o_date;
	}
	public int getO_sumprice() {
		return o_sumprice;
	}
	public void setO_sumprice(int o_sumprice) {
		this.o_sumprice = o_sumprice;
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
	public int getO_state() {
		return o_state;
	}
	public void setO_state(int o_state) {
		this.o_state = o_state;
	}
	public int getL_number() {
		return l_number;
	}
	public void setL_number(int l_number) {
		this.l_number = l_number;
	}
	public String getO_method() {
		return o_method;
	}
	public void setO_method(String o_method) {
		this.o_method = o_method;
	}
	
	
	
	
}
