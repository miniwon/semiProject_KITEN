package semi.kiten.vo;

public class LocationVO {
	
	private int		l_number;		// 배송지 번호
	private String	l_name;			// 수신인 이름
	private String	l_tel;			// 수신인 전화번호
	private String	l_address1;		// 수신인 주소
	private String	l_address2;		// 수신인 상세 주소
	private int		m_number;		// 배송지 정보를 가진 회원 번호
	private int		l_state;		// 배송지 상태
	// 0: 기본 배송지 / 1: 일반 배송지 / 2: 배송지 삭제 / 3: 탈퇴한 회원의 배송지
	
	
	@Override
	public String toString() {
		return "LocationVO [l_number=" + l_number + ", l_name=" + l_name + ", l_tel=" + l_tel + ", l_address1="
				+ l_address1 + ", l_address2=" + l_address2 + ", m_number=" + m_number + "]";
	}

	public int getL_number() {
		return l_number;
	}


	public void setL_number(int l_number) {
		this.l_number = l_number;
	}


	public String getL_name() {
		return l_name;
	}


	public void setL_name(String l_name) {
		this.l_name = l_name;
	}


	public String getL_tel() {
		return l_tel;
	}


	public void setL_tel(String l_tel) {
		this.l_tel = l_tel;
	}


	public String getL_address1() {
		return l_address1;
	}


	public void setL_address1(String l_address1) {
		this.l_address1 = l_address1;
	}


	public String getL_address2() {
		return l_address2;
	}


	public void setL_address2(String l_address2) {
		this.l_address2 = l_address2;
	}


	public int getM_number() {
		return m_number;
	}


	public void setM_number(int m_number) {
		this.m_number = m_number;
	}


	public int getL_state() {
		return l_state;
	}


	public void setL_state(int l_state) {
		this.l_state = l_state;
	}
	
	
}
