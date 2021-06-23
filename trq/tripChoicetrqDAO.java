package kr.co.tripChoice.trq;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


import net.utility.DBClose;
import net.utility.DBOpen;
@Component
public class tripChoicetrqDAO {

	@Autowired
	private DBOpen dbopen;
	
	@Autowired
	private DBClose dbclose;
	
	Connection con=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	StringBuilder sql=null;
	ArrayList<tripChoicetrqDTO> list=null;
	
	public tripChoicetrqDAO()	{
		dbopen=new DBOpen();
	}

	public int insert(tripChoicetrqDTO dto) {
			int cnt=0; 
			try {
				con=dbopen.getConnection(); 
				sql=new StringBuilder();
				sql.append(" INSERT INTO trq(trq_sub, tu_id, trq_pw, trq_con, trq_comcon, trq_date, trq_comdate, trqChoiceno, ip, readcnt, regdt, indent, ansnum) ");
				sql.append(" VALUES( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?) ");
			
				 
				pstmt=con.prepareStatement(sql.toString());
				pstmt.setString(1, dto.getTrq_sub());
				pstmt.setString(2, dto.getTu_id());
				pstmt.setString(3, dto.getTrq_pw());
				pstmt.setString(4, dto.getTrq_con());
				pstmt.setString(5, dto.getTrq_comcon());
				pstmt.setString(6, dto.getTrq_date());
				pstmt.setString(7, dto.getTrq_comdate());
				pstmt.setInt(8, dto.getTrqChoiceno());
				pstmt.setString(9, dto.getIp());
				pstmt.setInt(10, dto.getReadcnt());
				pstmt.setString(11, dto.getRegdt());
				pstmt.setInt(12, dto.getIndent());
				pstmt.setInt(13, dto.getAnsnum());
				
				
				
				cnt=pstmt.executeUpdate();
				
			}catch (Exception e) {
				System.out.println("추가실패:" + e);
			}finally {
				DBClose.close(con, pstmt);
			}//end
			
			return cnt;
		}//insert() end
		
	
	

	public ArrayList<tripChoicetrqDTO> list(){
		ArrayList<tripChoicetrqDTO> list=null;
		try {
			con=dbopen.getConnection();
			sql=new StringBuilder();
			sql.append(" SELECT trq_no, tu_id, trq_sub, readcnt, regdt, indent ");
			sql.append(" FROM trq ");
			sql.append(" ORDER BY trqChoiceno DESC, ansnum ASC ");
			
			pstmt=con.prepareStatement(sql.toString());
			rs=pstmt.executeQuery();
			if(rs.next()) {
				list=new ArrayList<>();
				do {
					tripChoicetrqDTO dto=new tripChoicetrqDTO();
					dto.setTrq_no(rs.getInt("trq_no"));
					dto.setTu_id(rs.getString("tu_id"));
					dto.setTrq_sub(rs.getString("trq_sub"));
					dto.setReadcnt(rs.getInt("readcnt"));
					dto.setRegdt(rs.getString("regdt"));
					dto.setIndent(rs.getInt("indent"));
					list.add(dto);
				}while(rs.next());
			}//end
					
			
		}catch (Exception e) {
			System.out.println("목록실패:"+e);
		}finally {
			DBClose.close(con, pstmt, rs);
		}//end
		return list;
	}//list() end
		
		
		public tripChoicetrqDTO read(int trq_no){
			tripChoicetrqDTO dto=null;
			try {
				con=dbopen.getConnection();
				sql=new StringBuilder();
				sql.append(" SELECT trq_no, tu_id, trq_sub, trq_con, readcnt, regdt, ip, trqChocieno, indent, ansnum ");
				sql.append(" FROM trq ");
				sql.append(" WHERE trq_no=? ");
				
				pstmt=con.prepareStatement(sql.toString());
				pstmt.setInt(1, trq_no);
				
				rs=pstmt.executeQuery();
				if(rs.next()) {
						dto=new tripChoicetrqDTO();
						dto.setTrq_no(rs.getInt("trq_no"));
						dto.setTu_id(rs.getString("tu_id"));
						dto.setTrq_sub(rs.getString("trq_sub"));
						dto.setTrq_con(rs.getString("trq_con"));
						dto.setReadcnt(rs.getInt("readcnt"));
						dto.setRegdt(rs.getString("regdt"));
						dto.setIp(rs.getString("ip"));
						dto.setTrqChoiceno(rs.getInt("trqChocieno"));
						dto.setIndent(rs.getInt("indent"));
						dto.setAnsnum(rs.getInt("ansnum"));
				}//end  
						
				
			}catch (Exception e) {
				System.out.println("상세보기 실패:"+e);
			}finally {
				DBClose.close(con, pstmt, rs);
			}//end
			return dto;
	}//read() end
	
	
	public void incrementCnt(int trq_no) {
		try {
			con=dbopen.getConnection();
			sql=new StringBuilder();
			sql.append(" UPDATE trq ");
			sql.append(" SET readcnt=readcnt+1 ");
			sql.append(" WHERE trq_no=? ");
			pstmt=con.prepareStatement(sql.toString());
			pstmt.setInt(1, trq_no);
			pstmt.executeUpdate();
		}catch (Exception e) {
			System.out.println("조회수 증가 실패:"+e);
		}finally {
			DBClose.close(con, pstmt);
		}//end
	}//incrementCnt() end
	
	public int delete(tripChoicetrqDTO dto) {
		int cnt=0;
		try {
			con=dbopen.getConnection();
			sql=new StringBuilder();
			sql.append(" DELETE FROM trq ");
			sql.append(" WHERE trq_no=? and trq_pw=? ");
			pstmt=con.prepareStatement(sql.toString());
			pstmt.setInt(1, dto.getTrq_no());
			pstmt.setString(2, dto.getTrq_pw());
			pstmt.executeUpdate();
		}catch (Exception e) {
			System.out.println("삭제 실패:"+e);
		}finally {
			DBClose.close(con, pstmt);
		}//end
		return cnt;
	}//delete() end
	
	public int updateproc(tripChoicetrqDTO dto) {
		int cnt=0;
		try {
			con=dbopen.getConnection();
			sql=new StringBuilder();
			sql.append(" ");
			sql.append(" ");
			sql.append(" ");
			sql.append(" ");
			sql.append(" ");
			sql.append(" ");
			pstmt=con.prepareStatement(sql.toString());
			pstmt.setString(1, dto.getTu_id());
			pstmt.setString(2, dto.getTrq_sub());
			pstmt.setString(3, dto.getTrq_con());
			pstmt.setString(4, dto.getIp());
			pstmt.setInt(5, dto.getTrq_no());
			pstmt.setString(6, dto.getTrq_pw());
			cnt=pstmt.executeUpdate();
		}catch (Exception e) {
			System.out.println("수정 실패:"+e);
		}finally {
			DBClose.close(con, pstmt);
		}//end
		return cnt;
	}//updateproc() end
	
	public int reply(tripChoicetrqDTO dto) {
		int cnt=0;
		try {
			con=dbopen.getConnection();
			sql=new StringBuilder();
					
			//1)부모글 정보 가져오기 (select문)
			int trqChoiceno=0;  //부모글 그룹번호
			int indent=0; //부모글 들여쓰기
			int ansnum=0; //부모글 글순서
			sql.append(" SELECT trqChoiceno, indent, ansnum ");
			sql.append(" FROM trq ");
			sql.append(" WHERE trq_no=? ");
			pstmt=con.prepareStatement(sql.toString());
			pstmt.setInt(1, dto.getTrq_no());
			rs=pstmt.executeQuery();
			if(rs.next()) {
				//그룹번호 : 부모그룹번호 그대로 가져오기
				trqChoiceno=rs.getInt("trqChoiceno");
				//들여쓰기 : 부모들여쓰기  +1
				indent=rs.getInt("indent")+1;
				//글순서  : 부모글순서 +1
				ansnum=rs.getInt("ansnum")+1;
			}//if end
			
			
			//2)글순서 재종하기 (update문)
			sql.delete(0, sql.length());	//1단계에서 사용햇던 sql값 지우기
			sql.append(" UPDATE trq ");
			sql.append(" SET ansnum=ansnum+1 ");
			sql.append(" WHERE trqChoiceno=? AND ansnum>=? ");
			pstmt=con.prepareStatement(sql.toString());
			pstmt.setInt(1, trqChoiceno);
			pstmt.setInt(2, ansnum);
			pstmt.executeUpdate();
			
			
			//3)답변글 추가하기 (insert문)
			sql.delete(0, sql.length());
			sql.append(" INSERT INTO trq (trq_no, tu_id, trq_Sub, trq_con, trq_pw, ip, trqChoiceno, indent, ansnum) ");
			sql.append(" VALUES (trq_seq.nextval, ?, ?, ?, ?, ?, ?, ?, ? ) ");

			pstmt=con.prepareStatement(sql.toString());
			pstmt.setString(1, dto.getTu_id());
			pstmt.setString(2, dto.getTrq_sub());
			pstmt.setString(3, dto.getTrq_con());
			pstmt.setString(4, dto.getTrq_pw());
			pstmt.setString(5, dto.getIp());
			pstmt.setInt(6, trqChoiceno);  //1)단계에서 만든 그룹번호
			pstmt.setInt(7, indent); //1)단계에서 만든 들여쓰기
			pstmt.setInt(8, ansnum); //1)단계에서 만든 글순서
			cnt=pstmt.executeUpdate();
			

		}catch (Exception e) {
			System.out.println("답변 실패:"+e);
		}finally {
			DBClose.close(con, pstmt);
		}//end
		return cnt;
	}//reply() end
	
	
		public int count() {
			int cnt=0;
			try {
				con=dbopen.getConnection();
				sql=new StringBuilder();
				sql.append(" SELECT COUNT(*) as cnt ");
				sql.append(" FROM trq ");
				pstmt=con.prepareStatement(sql.toString());
				rs=pstmt.executeQuery();
				if(rs.next()) {
					cnt=rs.getInt("cnt");
				}//if end
			}catch (Exception e) {
				System.out.println("글갯수 실패:"+e);
			}finally {
				DBClose.close(con, pstmt, rs);
			}//end
			return cnt;
		}//count() end
	
	
	
	
		public ArrayList<tripChoicetrqDTO> list2(String col, String word){
			ArrayList<tripChoicetrqDTO> list=null;
			try {
				con=dbopen.getConnection();
				sql=new StringBuilder();
				sql.append(" SELECT trq_no, tu_id, trq_sub, readcnt, regdt, indent ");
				sql.append(" FROM trq ");
				
				//검색어가 있다면
				if(word.length()>=1) {
					String search="";
					if(col.equals("tu_id"))  {
						search += " WHERE tu_id LIKE '%"  + word + "%'";
					}else if(col.equals("trq_sub"))  {
						search += " WHERE trq_sub LIKE '%"  + word + "%'";
					}else if(col.equals("trq_con"))  {
						search += " WHERE trq_con LIKE '%"  + word + "%'";
					}else if(col.equals("trq_sub_trq_sub"))  {
						search += " WHERE trq_sub LIKE '%"  + word + "%' OR trq_con LIKE '%"  + word + "%'";
					}//if end
					sql.append(search);
				}//if end
				
				
				
				
				sql.append(" ORDER BY trqChoiceno DESC, ansnum ASC ");
				
				pstmt=con.prepareStatement(sql.toString());
				rs=pstmt.executeQuery();
				if(rs.next()) {
					list=new ArrayList<>();
					do {
						tripChoicetrqDTO dto=new tripChoicetrqDTO();
						dto.setTrq_no(rs.getInt("trq_no"));
						dto.setTu_id(rs.getString("tu_id"));
						dto.setTrq_sub(rs.getString("trq_sub"));
						dto.setReadcnt(rs.getInt("readcnt"));
						dto.setRegdt(rs.getString("regdt"));
						dto.setIndent(rs.getInt("indent"));
						list.add(dto);
					}while(rs.next());
				}//end
						
				
			}catch (Exception e) {
				System.out.println("목록실패:"+e);
			}finally {
				DBClose.close(con, pstmt, rs);
			}//end
			return list;
		}//list() end
			
		
		public int count2(String col, String word) {
			int cnt=0;
			try {
				con=dbopen.getConnection();
				sql=new StringBuilder();
				sql.append(" SELECT COUNT(*) as cnt ");
				sql.append(" FROM trq ");
				if(word.length()>=1) {
					String search="";
					if(col.equals("tu_id"))  {
						search += " WHERE tu_id LIKE '%"  + word + "%'";
					}else if(col.equals("trq_sub"))  {
						search += " WHERE trq_sub LIKE '%"  + word + "%'";
					}else if(col.equals("trq_con"))  {
						search += " WHERE trq_con LIKE '%"  + word + "%'";
					}else if(col.equals("trq_sub_trq_con"))  {
						search += " WHERE trq_sub LIKE '%"  + word + "%' OR trq_con LIKE '%"  + word + "%'";
					}//if end
					sql.append(search);
				}//if end
				
				pstmt=con.prepareStatement(sql.toString());
				rs=pstmt.executeQuery();
				if(rs.next()) {
					cnt=rs.getInt("cnt");
				}//if end
			}catch (Exception e) {
				System.out.println("글갯수 실패:"+e);
			}finally {
				DBClose.close(con, pstmt, rs);
			}//end
			return cnt;
		}//count() end


public ArrayList<tripChoicetrqDTO> list3(String col, String word, int nowPage, int recordPerPage){
    ArrayList<tripChoicetrqDTO> list=null;
    
    // 페이지당 출력할 레코드 갯수 (10개를 기준)
    // 1 page : WHERE r>=1 AND r<=10
    // 2 page : WHERE r>=11 AND r<=20
    // 3 page : WHERE r>=21 AND r<=30
    int startRow = ((nowPage-1) * recordPerPage) + 1 ;
    int endRow   = nowPage * recordPerPage;
    
    try{
      con=dbopen.getConnection();
      sql=new StringBuilder();
      
      word = word.trim(); //검색어의 좌우 공백 제거
      
      if(word.length()==0) { //검색을 하지 않는 경우
    	sql.append(" SELECT trq_no,trq_sub,tu_id,trq_con,readcnt,indent,regdt,trqChoiceno,ansnum, r ");
    	sql.append(" FROM( SELECT trq_no,trq_sub,tu_id,trq_con,readcnt,indent,regdt,trqChoiceno,ansnum, @RNO := @RNO + 1 AS r ");
    	sql.append("  FROM ( SELECT trq_no,trq_sub,tu_id,trq_con,readcnt,indent,regdt,trqChoiceno,ansnum ");
    	sql.append(" FROM trq ");
    	sql.append("  )A, ( SELECT @RNO := 0 ) B ORDER BY trqChoiceno DESC, ansnum ASC ");
    	sql.append("  )C WHERE r>=1 AND r<=5; ");
       
      } else {
        
        //검색을 하는 경우
        sql.append(" FROM( SELECT trq_no,trq_sub,tu_id,trq_con,readcnt,indent,regdt, @RNUM := @RNUM + 1 AS r ");
        sql.append("  FROM ( SELECT trqChoiceno,ansnum,trq_no,trq_sub,tu_id,trq_con,readcnt,indent,regdt" );
        sql.append("    FROM trq ");
        sql.append("    )A, ( SELECT @RNUM := 0 ) B  ORDER BY trqChoiceno DESC, ansnum ASC ");
        sql.append("    )C ");
        sql.append("  WHERE r>= 1 AND r<= 5 ");


        
        String search="";
        if(col.equals("tu_id")) {
          search += " WHERE tu_id LIKE '%" + word + "%'";
        } else if(col.equals("trq_sub")) {
          search += " WHERE trq_sub LIKE '%" + word + "%'";
        } else if(col.equals("trq_con")) {
          search += " WHERE trq_con LIKE '%" + word + "%'";
        } else if(col.equals("trq_sub_trq_con")) {
          search += " WHERE trq_sub LIKE '%" + word + "%'";
          search += " OR trq_con LIKE '%" + word + "%'";
        }
        
        sql.append(search);        
        
        sql.append("              ORDER BY trqChoiceno DESC, ansnum ASC");
        sql.append("           )");
        sql.append("     )");
        sql.append(" WHERE r>=" + startRow + " AND r<=" + endRow) ;
      }//if end
      
      pstmt=con.prepareStatement(sql.toString());
      rs=pstmt.executeQuery();
      if(rs.next()){
        list=new ArrayList<tripChoicetrqDTO>();
        do{
         tripChoicetrqDTO dto=new tripChoicetrqDTO();
          dto.setTrq_no(rs.getInt("trq_no"));
          dto.setTrq_sub(rs.getString("trq_sub"));
          dto.setTu_id(rs.getString("tu_id"));
          dto.setReadcnt(rs.getInt("readcnt"));
          dto.setRegdt(rs.getString("regdt"));
          dto.setIndent(rs.getInt("indent"));
          list.add(dto);
        }while(rs.next());
      }//if end
      
    }catch(Exception e) {
      System.out.println("목록 페이징 실패: "+e);
    }finally {
      DBClose.close(con, pstmt, rs);
    }   
    return list;
	}//list3() end





}//tripChoicetrqDAO end
