<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<!--  글번호(trq_no)와 비밀번호(trq_pw)가 일치하면 삭제 -->
  <h3>*글삭제*</h3>
  <p><a href="noticeList.jsp">[문의사항 목록]</a></p>
  <form method="post" action="noticeDelProc.jsp" onsubmit="retrun pwCheck()">
  	<input type="hidden" name="trq_no" value="<%=request.getParameter("trq_no")%>">
	<table>
	 <tr>
		  <th>비밀번호</th>
		  <td><input type="password" name="passwd" id="passwd" required></td>
	  </tr>
	  <tr>
	  	  <td colspan="2">
	  	  <input type="submit" value="삭제" class="btn btn-danger">
	  	  <input type="reset"  value="취소"  onClick="history.go(-1)" class="btn btn-danger">
	  </tr>
    </table>
  </form>
  
<!-- 본문 끝 -->

<%@ include file="../footer.jsp" %>