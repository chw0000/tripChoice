<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="ssi.jsp" %>
<%@ include file="../header.jsp" %>
    
<!-- 본문 시작 trqIns.jsp-->
<%
	String trv_sub=request.getParameter("trv_sub").trim();
	String trv_con=request.getParameter("trv_con").trim();
	
	
		
	dto.setTrv_sub(trv_sub);
	dto.setTrv_con(trv_con);
	
	
	
	int cnt=dao.insert(dto); 
	if(cnt==0){
	    out.println("<p>글추가 실패했습니다</p>");
	    out.println("<p><a href='javascript:history.back()'>[다시시도]</a></p>");
	}else{
	    out.println("<script>");
	    out.println("  alert('게시글이 추가되었습니다');");
	    out.println("  location.href='trvList.do'");
	    out.println("</script>");
	}//if end
%>
<!-- 본문 끝-->
        
<%@ include file="../footer.jsp" %>    