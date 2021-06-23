<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ include file="ssi.jsp" %>
<%@ include file="../header.jsp" %>

<!-- 본문 시작 -->


<%
	String trq_sub=request.getParameter("trq_sub");
	String tu_id  =request.getParameter("tu_id");
	String trq_pw=request.getParameter("trq_pw");
	String trq_con=request.getParameter("trq_con");
	String trq_comcon=request.getParameter("trq_comcon");
	String trq_date=request.getParameter("trq_date");
	String trq_comdate=request.getParameter("trq_comdate");
	int trqChoiceno = Integer.parseInt(request.getParameter("trqChoiceno"));
	String ip  	  =request.getRemoteAddr(); 
	int readcnt = Integer.parseInt(request.getParameter("readcnt"));
	String regdt=request.getParameter("regdt");
	int indent = Integer.parseInt(request.getParameter("indent"));
	int ansnum = Integer.parseInt(request.getParameter("ansnum"));

	dto.setTrq_sub(trq_sub);
	dto.setTu_id(tu_id);
	dto.setTrq_pw(trq_pw);
	dto.setTrq_con(trq_con);
	dto.setTrq_comcon(trq_comcon);
	dto.setTrq_date(trq_date);
	dto.setTrq_comdate(trq_comdate);
	dto.setTrqChoiceno(trqChoiceno);
	dto.setIp(ip);
	dto.setReadcnt(readcnt);
	dto.setRegdt(regdt);
	dto.setIndent(indent);
	dto.setAnsnum(ansnum);
	
	

	int cnt=dao.insert(dto);
		if(cnt==0){
			out.println("<p>글추가 실패했습니다</p>");
			out.println("<p><a href='javascript:history.back()'>[다시시도]</a></p>");
		}else{
			out.println("<script>");
			out.println("  alert('게시글이 추가되었습니다');");
			out.println("  location.href='noticeList.jsp'");
			out.println("</script>");
		}//if end
		

	
	
%>

<!-- 본문 끝 -->

<%@ include file="../footer.jsp" %>