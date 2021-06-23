<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<%@ include file="/WEB-INF/include/include-header.jspf" %>

<!-- 본문 시작 -->
<form id="frm"> 
<table class="board_view">

<colgroup> 
<col width="15%"> 
<col width="*"/> 
</colgroup> 

<caption>게시글 작성</caption> 

<tbody> 
<tr> 
<th scope="row">제목</th> 
<td><input type="text" id="TITLE" name="TITLE" class="wdp_90"></input></td> 
</tr> 

<tr> 
<td colspan="2" class="view_text"> 
<textarea rows="20" cols="100" title="내용" id="CONTENTS" name="CONTENTS"></textarea> </td> 

</tr> 
</tbody> 
</table> 

<input type="submit" value="쓰기" class="btn btn-success">
<input type="reset"  value="취소"  onClick="history.go(-1)" class="btn btn-danger">

</form>  

<script type="text/javascript"> $(document).ready(function(){ }); </script> 


<!-- 본문 끝 -->
<%@ include file="/WEB-INF/include/include-body.jspf" %>
<%@ include file="../footer.jsp" %>