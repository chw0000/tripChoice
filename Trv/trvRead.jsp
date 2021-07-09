<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="ssi.jsp" %>
<%@ include file="../header.jsp" %>
    
<!-- 본문 시작 tivRead.jsp-->
<h3> 리뷰 </h3>
<p>
   <a href="trvForm.jsp">[ 리뷰 작성 ]</a>
   &nbsp;&nbsp;
   <a href="trvList.jsp?col=<%=col%>&word=<%=word%>">[ 리뷰 ]</a>
</p>
<div class="container">
<%
	int trv_no=Integer.parseInt(request.getParameter("trv_no"));
	dto=dao.read(trv_no); 
	if(dto==null){
	    out.println("해당 글 없음!!");
	}else{
		
%>
		<table class="table">
		<tr>
		    <th class="success">제목</th>
		    <td><%=dto.getTrv_sub()%></td>
		</tr>
		<tr>
		    <th class="success">내용</th>
		    <td style="text-align: left">
<%
				//사용자가 입력한 문자 그대로 출력하기 위해 특수문자로 변환
				String content=Utility.convertChar(dto.getTrv_con());
		    	out.print(content);
%>		    	
		    </td>
		</tr>
		<tr>
		    <th class="success">작성일</th>
		    <td><%=dto.getTrv_date()%></td>
		</tr>
		
		</table>
		<br>
		
		<input type="button" value="삭제" class="btn btn-danger"  onclick="">
		<input type="button" value="수정" class="btn btn-warning" onclick="">
<%	    
	}//if end
%>
</div>
<!-- 본문 끝-->
        
<%@ include file="../footer.jsp" %>    