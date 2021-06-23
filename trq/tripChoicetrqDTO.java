package kr.co.tripChoice.trq;

public class tripChoicetrqDTO {
	
	private int trq_no;
	private String trq_sub;		//글제목
	private String tu_id;		//회원 아이디
	private String trq_pw;		//비밀번호
	private String trq_con;		//질문내용
	private String trq_comcon;	//답변내용
	private String trq_date;	//문의날짜
	private String trq_comdate; //답변날짜
	private int trqChoiceno;  	//글 그룹번호
	private String ip;			//조회
	private int readcnt;		//글조회수	
	private String regdt;		//글작성일
	private int indent;			//들여쓰기
	private int ansnum;			//글순서

	public tripChoicetrqDTO() {}

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

	public int getTrqChoiceno() {
		return trqChoiceno;
	}

	public void setTrqChoiceno(int trqChoiceno) {
		this.trqChoiceno = trqChoiceno;
	}


	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public int getReadcnt() {
		return readcnt;
	}

	public void setReadcnt(int readcnt) {
		this.readcnt = readcnt;
	}

	public String getRegdt() {
		return regdt;
	}

	public void setRegdt(String regdt) {
		this.regdt = regdt;
	}

	public int getIndent() {
		return indent;
	}

	public void setIndent(int indent) {
		this.indent = indent;
	}

	public int getAnsnum() {
		return ansnum;
	}

	public void setAnsnum(int ansnum) {
		this.ansnum = ansnum;
	}


	
	
	
}//class end
