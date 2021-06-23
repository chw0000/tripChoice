<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<!-- 본문 시작 noticeForm.jsp -->
<h3>&nbsp;문의사항 글쓰기</h3>
<p><a href="noticeList.jsp">[문의사항 목록]</a>
<form name="noticefrm" id="noticefrm" method="post" action="noticeIns.jsp" onsubmit="return bbsCheck()">
<table class="table">
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