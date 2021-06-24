<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="ssi.jsp" %>
<%@ include file="../header.jsp" %>
    
<!-- 본문 시작 trvUpdateProc.jsp-->
<!-- 수정된 내용으로 수정하기 -->
<h3> 리뷰 수정 </h3>
<p>
   <a href="trvForm.jsp"> 리뷰 작성</a>
   &nbsp;&nbsp;
   <a href="trvList.jsp"> 리뷰 </a>
</p>
<div class="container">
<%
	
	String trv_sub=request.getParameter("trv_sub").trim();
	String trv_con=request.getParameter("trv_con").trim();
	
		
	dto.setTrv_sub(trv_sub);
	dto.setTrv_con(trv_con);
	
	
	
	int cnt=dao.updateproc(dto);
	if(cnt==0){
	  out.println("<p>비밀번호가 일치하지 않습니다!!</p>");
	  out.println("<p><a href='javascript:history.back()'>[다시시도]</a></p>");
	}else{
	  out.println("<script>");
	  out.println("  alert('게시글이 수정되었습니다');");
	  out.println("  location.href='trvList.jsp'");
	  out.println("</script>");
	}//if end
%>
</div>
<!-- 본문 끝-->
        
<%@ include file="../footer.jsp" %> 