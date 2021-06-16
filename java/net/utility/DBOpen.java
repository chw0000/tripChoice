package net.utility;

import java.sql.Connection;
import java.sql.DriverManager;

import org.springframework.stereotype.Component;

//스프링컨테이너(웹서버)가 자동으로 객체 생성함 (servlet-context.xml에서 환경설정해야 함)
@Component
public class DBOpen {

	public DBOpen() {
		System.out.println("-----DBOpen()객체 생성됨");
	}//DBOpen() end
	
	public Connection getConnection() {
		
		Connection con=null;
		
		try {
			String url	   ="jdbc:oracle:thin:@localhost:1521:xe";
			String user	   ="system";
			String password="oracle";
			String driver  ="oracle.jdbc.driver.OracleDriver";
			
			Class.forName(driver);
			con=DriverManager.getConnection(url, user, password);
		}catch (Exception e) {
			System.out.println("오라클 DB 연결 실패" + e);
		}//end
		
		return con;
		
		
		
		
		
		
		
		
	}//getConnection() end
}//class() end
