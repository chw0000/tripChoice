<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>     
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  
  	<style>
 	{font-family:gulim; font-size: 24px;}
 </style>
 
 <script src="https://cdn.ckeditor.com/ckeditor5/28.0.0/classic/ckeditor.js"></script>
</head>
<body>
<!-- 본문 시작 trvForm.jsp-->

<h2 align="center"> 리뷰 등록 </h2>
 
<div class="container">
	<form name="trvfrm" id="trvfrm" method="post" action="./trvIns.do" onsubmit="return tripCheck()">
	<table class="table">
	
	<tr>
	   <th class="info">제목</th>
	   <td><input type="text" name="trv_sub" id="trv_sub" class="form-control" maxlength="50" required></td>
	</tr>
	<tr>
	   <th class="info">리뷰 내용 </th>
	   <td><textarea rows="50"  class="form-control" name="trv_con" id="trv_editor"></textarea>
	   <script>
    	// 3. CKEditor5를 생성할 textarea 지정
    	ClassicEditor
        .create( document.querySelector( '#trv_editor' ) )
        .catch( error => {
            console.error( error );
        } );  </script></td>
	</tr>
		
	    <td colspan="2" align="center">
	       <input type="submit" value="리뷰 등록" class="btn btn-info" onclick="location.href='create.do?trv_no=${trv_no}'">
	       <input type="reset"  value="취소" class="btn btn-warning">
	    </td>
	</table>
	</form> 
</div>
<!-- 본문 끝--> 

<%@ include file="../footer.jsp" %>