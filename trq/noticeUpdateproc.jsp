<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="ssi.jsp" %>
<%@ include file="../header.jsp" %>

<!-- 본문 시작 noticeUpdate.jsp -->
<!--  글번호가 일치하는 행을 가져와서 수정폼에 출력하기 -->
<h3>*글수정*</h3>
<p>
<a href="noticeForm.jsp">[글쓰기]</a>
&nbsp;&nbsp;
<a href="noticeList.jsp">[글목록]</a>
</p>
<%
	int trq_no     =Integer.parseInt(request.getParameter("trq_no"));
	String tu_id   =request.getParameter("tu_id").trim();
	String trq_sub =request.getParameter("trq_sub").trim();
	String trq_con =request.getParameter("trq_con").trim();
	String trq_pw  =request.getParameter("trq_pw").trim();
	String ip 	   =request.getRemoteAddr(); //요청PC의 IP
	
	
	dto.setTrq_no(trq_no);
	dto.setTu_id(tu_id);
	dto.setTrq_sub(trq_sub);
	dto.setTrq_con(trq_con);
	dto.setTrq_pw(trq_pw);
	dto.setIp(ip);
	
	int cnt=dao.updateproc(dto);
	if(cnt==0){
		out.println("<p>비밀번호가 일치하지 않습니다</p>");
		out.println("<P><a href='javascript:history.back()'>[다시시도]</p>");
	}else{
		out.println("<script>");
		out.println("  alert('게시글이 수정되었습니다');");
		out.println("  location.href='noticeList.jsp'");
		out.println("</script>");
	}//if end
%>
<!-- 본문 끝 -->

<%@ include file="../footer.jsp" %>