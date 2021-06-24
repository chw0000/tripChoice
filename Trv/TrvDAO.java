package kr.co.tripChoice.Trv;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import net.utility.DBClose;
import net.utility.DBOpen;

@Controller
public class TrvDAO {

	@Autowired  //@Component 어노테이션으로 자동 생성된 객체를 사용하려면 객체간 서로 연결이 되어야 한다. 
	private DBOpen dbOpen;
	
	@Autowired
    private DBClose dbClose;	
	
	Connection con=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	StringBuilder sql=null;
	ArrayList<TrvDTO> list=null;
		
	public TrvDAO() {
		System.out.println("--------TrvDAO() 객체가 생성 되었습니다.");
	}//end
	
	public int create(TrvDTO dto) {
		int cnt = 0;
		try {
			con = dbOpen.getConnection();
			sql = new StringBuilder();
			sql.append("INSERT INTO trv(  trv_sub,trv_con,trv_cnt,trv_date )");
			sql.append(" VALUES( ?,?,?,? )");
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setInt(1, dto.getTrv_no());
			pstmt.setString(2, dto.getTrv_sub());
			pstmt.setString(3, dto.getTrv_con());
			pstmt.setString(4, dto.getTrv_date());
		
			cnt = pstmt.executeUpdate();
		}catch(Exception e) {
			System.out.println("리뷰 등록실패 :" +e);
		}finally {
			DBClose.close(con, pstmt);
		}//end
		return cnt;
	}//create() end
	
	
	public ArrayList<TrvDTO> list(int trv_no) {
		try {
			con=dbOpen.getConnection();
			sql=new StringBuilder();
			sql.append(" SELECT trv_sub,trv_con,trv_cnt,trv_date ");
			sql.append(" FROM trv");
			sql.append(" WHERE trv_no =? ");
			sql.append(" ORDER BY trv_no ");
			pstmt=con.prepareStatement(sql.toString());
			pstmt.setInt(1, trv_no);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				list=new ArrayList<TrvDTO>();
				do {
					TrvDTO dto=new TrvDTO();
					dto.setTrv_sub(rs.getString("trv_sub"));
					dto.setTrv_con(rs.getString("trv_con"));
					dto.setTrv_date(rs.getString("trv_date"));
					
					list.add(dto);
				}while(rs.next());
			}else {
				list=null;
			}//if end
		
		}catch(Exception e) {
			System.out.println("리뷰 목록실패 : "+e);
		}finally {
			DBClose.close(con, pstmt, rs);
		}
		return list;
		
	}// list() end
	
	public int delete(int trv_no) {
		int cnt = 0;
		try {
			con = dbOpen.getConnection();
			sql = new StringBuilder();
			sql.append(" DELETE FROM trv ");
			sql.append(" WHERE trv_no =?  ");
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setInt(1, trv_no);
			cnt = pstmt.executeUpdate();
		}catch(Exception e) {
			System.out.println("리뷰 삭제 실패:"+e);
		}finally {
			DBClose.close(con, pstmt);
		}//end
		return cnt;
	}//delete() end
	
	public int update(TrvDTO dto) {
		int cnt = 0;
		try {
			con = dbOpen.getConnection();
			sql = new StringBuilder();
			sql.append(" UPDATE trv ");
			sql.append(" SET trv_sub=? , trv_con=? ,trv_date=? ");
			sql.append(" WHERE trv_no =? ");
			pstmt = con.prepareStatement(sql.toString());
			
			pstmt.setString(1, dto.getTrv_sub());
			pstmt.setString(2, dto.getTrv_con());
			pstmt.setString(3, dto.getTrv_date());
		
			cnt = pstmt.executeUpdate();
			
		}catch(Exception e) {
			System.out.println("리뷰 수정 실패:"+e);
		}finally {
			DBClose.close(con, pstmt);
		}//end
		return cnt;
	}//update() end
	
	public TrvDTO read(int trv_no){ 
		TrvDTO dto=null;
		try {
			con = dbOpen.getConnection();
			sql = new StringBuilder();
			sql.append(" SELECT trv_sub,trv_con,trv_cnt,trv_date ");
			sql.append(" FROM trv ");
			sql.append(" WHERE trv_no =? ");
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setInt(1, trv_no);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				dto=new TrvDTO();
				dto.setTrv_sub(rs.getString("trv_sub"));
				dto.setTrv_con(rs.getString("trv_con"));
				dto.setTrv_date(rs.getString("trv_date"));
			}//if end
		}catch(Exception e) {
			System.out.println("리뷰 상세보기 실패:"+e);
		}finally {
			DBClose.close(con, pstmt, rs);
		}//end
		return dto;
	}//read() end 
	
	
	 public int insert(TrvDTO dto) {
	        int cnt=0;
	        try {
	          con=dbOpen.getConnection();
	          sql=new StringBuilder();
	          sql.append(" INSERT INTO trv ( trv_sub,trv_con ) ");
	          sql.append(" VALUES ( ?,? ) ");      
	          
	          pstmt=con.prepareStatement(sql.toString());
	          pstmt.setString(1, dto.getTrv_sub());
	          pstmt.setString(2, dto.getTrv_con());
	                   
	        
	          cnt=pstmt.executeUpdate();
	        }catch (Exception e) {
	          System.out.println("추가실패:"+e);
	        }finally {
	          DBClose.close(con, pstmt);
	        }// end
	        return cnt;
	    }//insert () end    
	 
	 
	 public int updateproc(TrvDTO dto) {
	        int cnt=0;
	        try {
	            con=dbOpen.getConnection();
	            sql=new StringBuilder();
	            sql.append(" UPDATE trv ");
	            sql.append(" SET trv_sub=? ");
	            sql.append(" ,trv_con=? ");
	            sql.append(" WHERE trv_no=?  ");
	            pstmt=con.prepareStatement(sql.toString());
	            pstmt.setString(1, dto.getTrv_sub());
	            pstmt.setString(2, dto.getTrv_con());
	          
	            cnt=pstmt.executeUpdate();
	        }catch (Exception e) {
	            System.out.println("수정 실패:"+e);
	        }finally {
	            DBClose.close(con, pstmt);
	        }//end    
	        return cnt;
	    }//updateproc() end
	    
}//class end
