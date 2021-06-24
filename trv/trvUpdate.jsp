<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="ssi.jsp" %>
<%@ include file="../header.jsp" %>
    
<!-- 본문 시작 trvUpdate.jsp-->
<!-- 글번호가 일치하는 행을 가져와서 수정폼에 출력하기 -->
<h3> 리뷰 수정 </h3>
<p>
   <a href="trvForm.jsp"> 리뷰 수정</a>
   &nbsp;&nbsp;
   <a href="trvList.jsp"> 리뷰 목록 </a>
</p>
<div class="container">
<%
	int trv_no=Integer.parseInt(request.getParameter("trv_no"));
	dto=dao.read(trv_no); 
	if(dto==null){
	    out.println("해당 글 없음!!");
	}else{
%>
		<form name="trvUpdateProcfrm" id="trvUpdateProcfrm" method="post" action="trvUpdateProc.jsp" onsubmit="return noticeCheck()">
		<input type="hidden" name="trv_no" >
		<table class="table">
		<tr>
		   <th class="success">제목</th>
		   <td><input type="text" name="subject" id="subject"  class="form-control" maxlength="100" required></td>
		</tr>
		<tr>
		   <th class="success">내용</th>
		   <td><textarea rows="5"  class="form-control" name="content" id="trv_editor"></textarea>
		   <script>
    		// 3. CKEditor5를 생성할 textarea 지정
    		ClassicEditor
        	.create( document.querySelector( '#trv_editor' ) )
        	.catch( error => {
            console.error( error );
        	} );  </script>
		   </td>
		</tr>
		<tr>
		    <td colspan="2" align="center">
		       <input type="submit" value="수정" class="btn btn-success">
		       <input type="reset"  value="취소" class="btn btn-danger">
		    </td>
		</table>
		</form> 
<%	    
	}//if end
%>
</div>
<!-- 본문 끝-->
        
<%@ include file="../footer.jsp" %> 