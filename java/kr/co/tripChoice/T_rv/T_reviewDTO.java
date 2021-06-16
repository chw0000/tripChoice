package kr.co.tripChoice.T_rv;

public class T_reviewDTO {
	
	private int trv_no;
	private String trv_sub;
	private String tu_id;
	private String trip_code;
	private String trv_con;
	private String trv_pw;
	private String trv_date;
	private String trv_score;
	private int trv_cnt;
	
	public T_reviewDTO() {}

	public int getTrv_no() {
		return trv_no;
	}

	public void setTrv_no(int trv_no) {
		this.trv_no = trv_no;
	}

	public String getTrv_sub() {
		return trv_sub;
	}

	public void setTrv_sub(String trv_sub) {
		this.trv_sub = trv_sub;
	}

	public String getTu_id() {
		return tu_id;
	}

	public void setTu_id(String tu_id) {
		this.tu_id = tu_id;
	}

	public String getTrip_code() {
		return trip_code;
	}

	public void setTrip_code(String trip_code) {
		this.trip_code = trip_code;
	}

	public String getTrv_con() {
		return trv_con;
	}

	public void setTrv_con(String trv_con) {
		this.trv_con = trv_con;
	}

	public String getTrv_pw() {
		return trv_pw;
	}

	public void setTrv_pw(String trv_pw) {
		this.trv_pw = trv_pw;
	}

	public String getTrv_date() {
		return trv_date;
	}

	public void setTrv_date(String trv_date) {
		this.trv_date = trv_date;
	}

	public String getTrv_score() {
		return trv_score;
	}

	public void setTrv_score(String trv_score) {
		this.trv_score = trv_score;
	}

	public int getTrv_cnt() {
		return trv_cnt;
	}

	public void setTrv_cnt(int trv_cnt) {
		this.trv_cnt = trv_cnt;
	}

	@Override
	public String toString() {
		return "tripChoicetrvDTO [getTrv_no()=" + getTrv_no() + ", getTrv_sub()=" + getTrv_sub() + ", getTu_id()="
				+ getTu_id() + ", getTrip_code()=" + getTrip_code() + ", getTrv_con()=" + getTrv_con()
				+ ", getTrv_pw()=" + getTrv_pw() + ", getTrv_date()=" + getTrv_date() + ", getTrv_score()="
				+ getTrv_score() + ", getTrv_cnt()=" + getTrv_cnt() + "]";
	}
	
	
	
	
	
	
}//tripChoicetrvDTO end
