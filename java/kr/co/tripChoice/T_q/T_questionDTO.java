package kr.co.tripChoice.T_q;

public class T_questionDTO {

		//멤버변수 field
		private int trq_no;
		private String trq_sub;
		private String tu_id;
		private String trq_pw;
		private String trq_con;
		private String trq_comcon;
		private int trq_cnt;
		private String trq_date;
		private String trq_comdate;
	
	//기본생성자
	public T_questionDTO() {}

	//getter와 setter함수
	public int getTrq_no() {
		return trq_no;
	}


	public void setTrq_no(int trq_no) {
		this.trq_no = trq_no;
	}


	public String getTrq_sub() {
		return trq_sub;
	}


	public void setTrq_sub(String trq_sub) {
		this.trq_sub = trq_sub;
	}


	public String getTu_id() {
		return tu_id;
	}


	public void setTu_id(String tu_id) {
		this.tu_id = tu_id;
	}


	public String getTrq_pw() {
		return trq_pw;
	}


	public void setTrq_pw(String trq_pw) {
		this.trq_pw = trq_pw;
	}


	public String getTrq_con() {
		return trq_con;
	}


	public void setTrq_con(String trq_con) {
		this.trq_con = trq_con;
	}


	public String getTrq_comcon() {
		return trq_comcon;
	}


	public void setTrq_comcon(String trq_comcon) {
		this.trq_comcon = trq_comcon;
	}


	public int getTrq_cnt() {
		return trq_cnt;
	}


	public void setTrq_cnt(int trq_cnt) {
		this.trq_cnt = trq_cnt;
	}


	public String getTrq_date() {
		return trq_date;
	}


	public void setTrq_date(String trq_date) {
		this.trq_date = trq_date;
	}


	public String getTrq_comdate() {
		return trq_comdate;
	}


	public void setTrq_comdate(String trq_comdate) {
		this.trq_comdate = trq_comdate;
	}

	@Override
	public String toString() {
		return "tripChoicetrqDTO [getTrq_no()=" + getTrq_no() + ", getTrq_sub()=" + getTrq_sub() + ", getTu_id()="
				+ getTu_id() + ", getTrq_pw()=" + getTrq_pw() + ", getTrq_con()=" + getTrq_con() + ", getTrq_comcon()="
				+ getTrq_comcon() + ", getTrq_cnt()=" + getTrq_cnt() + ", getTrq_date()=" + getTrq_date()
				+ ", getTrq_comdate()=" + getTrq_comdate() + "]";
	}
	
	
	
	
	
}//tripChoicetrqDTO end
