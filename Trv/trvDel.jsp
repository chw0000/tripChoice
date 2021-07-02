<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
    
<!-- 본문 시작 trvDel.jsp-->
<!-- 글번호(trv_no)가 일치하면 삭제 -->
<h3> 리뷰 글 삭제</h3>
<p><a href="trvList.jsp">리뷰</a></p>
<div class="container">
	<form method="post" action="trvDelProc.jsp" onsubmit="return pwCheck()">
		<input type="text" name="tbrq_no" value="<%=request.getParameter("trv_no")%>">
		<table class="table">
		<tr>
			<td colspan="2">
				<input type="submit" value="삭제" class="btn btn-danger">
		    </td>
		</tr>	
		</table>
	</form>
</div>	
<!-- 본문 끝-->
        
<%@ include file="../footer.jsp" %>  