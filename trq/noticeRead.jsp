<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="ssi.jsp" %>
<%@ include file="auth.jsp" %>
<%@ include file="../header.jsp" %>
  
<!-- 본문 시작 noticeRead.jsp-->
   <h3>*게시판 상세보기*</h3>
   <p>
   <a href="noticeForm.jsp">[글쓰기]</a>
   &nbsp;&nbsp;
   <a href="noticeList.jsp?col=<%=col%>&word=<%=word%>">[글목록]</a>
   </p>
<%  
	int trq_no=Integer.parseInt(request.getParameter("trq_no"));
	dto=dao.read(trq_no); 
	if(dto==null){
		out.println("해당 글 없음");
	}else{
		//조회수 증가
		dao.incrementCnt(trq_no); 
%>
	<table class="table table-hover">
	<tr>
		<th>제목</th>
		<td><%=dto.getTrq_sub()%></td>
	</tr>
	<tr>
		<th>내용</th>
		<td style="text-align: left" >
<%
		//사용자가 입력한 문자 그대로 출력하기 위해 특수문자로 변환
		String trq_con=Utility.convertChar(dto.getTrq_con());
		out.print(trq_con);
%>		
		</td>
	</tr>
	<tr>
		<th>조회수</th>
		<td><%=dto.getReadcnt()%></td>
	</tr>
	<tr>
		<th>작성자</th>
		<td><%=dto.getTu_id()%></td>
	</tr>
	<tr>
		<th>작성일</th>
		<td><%=dto.getTrq_date()%></td>
	</tr>
	<tr>
		<th>IP</th>
		<td><%=dto.getIp()%></td>
	</tr>
	</table>  
	<br>
	<input type="button" value="답변" onclick="location.href='noticeReply.jsp?trq_no=<%=trq_no%>'">
<% 
	if (s_mlevel.equals("A1")){ //회원등급이 A1 등급이어야만 삭제출력
%>
	
	<input type="button" value="삭제" onclick="location.href='noticeDel.jsp?trq_no=<%=trq_no%>'">
<%
	}//if end
%>
	<input type="button" value="수정" onclick="location.href='noticeUpdate.jsp?trq_no=<%=trq_no%>'">
<%
	}//if end
%>
<!-- 본문 끝 -->

<%@ include file="../footer.jsp" %>