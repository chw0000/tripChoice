<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="ssi.jsp" %>
<%@ include file="../header.jsp" %>

<!-- 본문 시작 bbsDelProc.jsp -->
  <h3>*글삭제*</h3>
<%
	String trq_pw=request.getParameter("trq_pw").trim();
	int trq_no=Integer.parseInt(request.getParameter("trq_no"));
	
	dto.setTrq_pw(trq_pw);
	dto.setTrq_no(trq_no);
   
  int cnt=dao.delete(dto);
		if(cnt==0){  
			out.println("<p>게시글이 삭제되었습니다</p>");
			out.println("<p><a href='javascript:history.back()'>[뒤로가기]</a></p>");
		}else{
			out.println("<script>");
			out.println("  alert('비밀번호가 일치하지 않습니다');");
			out.println("  location.href='noticeList.jsp'");
			out.println("</script>");
		}//if end
%>
  
<!-- 본문 끝 -->

<%@ include file="../footer.jsp" %>