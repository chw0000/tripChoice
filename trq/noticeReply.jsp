<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<!-- 본문 시작 noticeForm.jsp -->
<h3>*답변쓰기*</h3>
<p><a href="noticeList.jsp">[글목록]</a>
<form name="noticefrm" id="noticefrm" method="post" action="noticeReplyProc.jsp" onsubmit="return bbsCheck()">
<!--  부모글 정보 -->
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
	   <th>비밀번호</th>
	   <td><input type="password" name="passwd" id="passwd" class="form-control" maxlength="10" required></td>
	</tr>
	<tr>
	    <td colspan="2" align="center">
	       <input type="submit" value="답변쓰기" class="btn btn-success">
	       <input type="reset"  value="취소"  onClick="history.go(-1)" class="btn btn-danger">
	    </td>
	</tr>
</table>
</form>
<!-- 본문 끝 -->