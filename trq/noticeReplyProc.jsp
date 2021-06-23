<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="ssi.jsp" %>  
<%@ include file="../header.jsp" %>

<!-- 본문 시작 -->
<% 
    String tu_id   =request.getParameter("tu_id").trim();
	String trq_sub =request.getParameter("trq_sub").trim();
	String trq_con =request.getParameter("trq_con").trim();
	String trq_pw  =request.getParameter("trq_pw").trim();
	String ip 	   =request.getRemoteAddr().trim(); //요청PC의 IP
	int trq_no     =Integer.parseInt(request.getParameter("trq_no"));

	dto.setTrq_no(trq_no);
	dto.setTu_id(tu_id);
	dto.setTrq_sub(trq_sub);
	dto.setTrq_con(trq_con);
	dto.setTrq_pw(trq_pw);
	dto.setIp(ip);
	
	 
	
	
	int cnt=dao.reply(dto);
		if(cnt==0){
			out.println("<p>답변추가를 실패했습니다</p>");
			out.println("<p><a href='javascript:history.back()'>[다시시도]</a></p>");
		}else{
			out.println("<script>");
			out.println("  alert('답변이 추가되었습니다');");
			out.println("  location.href='noticeList.jsp'");
			out.println("</script>");
		}//if end
%>
<!-- 본문 끝 -->

<%@ include file="../footer.jsp" %>