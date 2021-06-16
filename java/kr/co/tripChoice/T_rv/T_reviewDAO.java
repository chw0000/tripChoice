package kr.co.tripChoice.T_rv;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import net.utility.DBClose;
import net.utility.DBOpen;

@Component
public class T_reviewDAO {

	@Autowired //Component어노테이션으로 자동 생성된 객체를 사용하려면 객체간 서로 연결이 되어야 한다
	private DBOpen dbopen;
	
	@Autowired
	private DBClose dbclose;
	
	Connection con=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	StringBuilder sql=null;
	ArrayList<T_reviewDTO> list=null;
	
	
	public T_reviewDAO() {
		System.out.println("-----T_reviewDAO()객체 생성됨");
	}//end
	
	
}//T_reviewDAO end
