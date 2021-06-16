package kr.co.tripChoice.T_rv;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class T_reviewCont {

	@Autowired
	private T_reviewDAO dao;
	
	public T_reviewCont() {
		System.out.println("-----T_reviewCont()객체 생성됨");
	}//MediagroupCount() end
	
	
}//T_reviewDAO end
