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
	int trq_no=Integer.parseInt(request.getParameter("trq_no"));
	dto=dao.read(trq_no);
	if(dto==null){
		out.println("해당 글 없음");
	}else{   
		
	}//if end
%>
	<form name="noticefrm" id="noticefrm" method="post" action="noticeUpdateproc.jsp" onsubmit="return bbsCheck()">
	<input type="hidden" name="trq_no" value="<%=request.getParameter("trq_no")%>">
	<table class="table">
	<tr>
	   <th>작성자</th>
	   <td><input type="text" name="wname" id="wname" class="form-control" maxlength="20" required></td>
	</tr>
	<tr>
	   <th>제목</th>
	   <td><input type="text" name="subject" id="subject" class="form-control" maxlength="100" required></td>
	</tr>
	<tr>
	   <th>내용</th>
	   <td><textarea rows="5"  class="form-control" name="content" id="content"></textarea></td>
	</tr>
	<tr>
	    <td colspan="2" align="center">
	       <input type="submit" value="쓰기" class="btn btn-success">
	       <input type="reset"  value="취소"  onClick="history.go(-1)" class="btn btn-danger">
	    </td>
	 </tr>
	</table>
	</form>
<!-- 본문 끝 -->

<%@ include file="../footer.jsp" %>