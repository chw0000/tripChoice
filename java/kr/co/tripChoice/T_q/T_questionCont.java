package kr.co.tripChoice.T_q;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class T_questionCont {

	@Autowired
	private T_questionDAO dao;
	
	public T_questionCont() {
		System.out.println("-----T_questionCont()객체 생성됨");
	}//MediaCont() end
	
}//T_questionCont end
