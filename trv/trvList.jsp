<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %> 

 <style>
 	{font-family:gulim; font-size: 24px;}
 </style>
 
	<h2 align="center"> 리뷰 </h2>
	<div class="content" align="center">
		<input type="submit" value="리뷰 등록" class="btn btn-danger" onclick="location.href='./trvForm.do'">
		<input type="button" value="HOME"   onclick="location.href='${root}/tripChoice/index.do'" class="btn btn-success" >
	</div>
 <table class="table table-striped">
  <tr>
  	<th>글번호</th>
  	<th>제목</th>
  	<th>내용</th>
  	<th>작성일</th>
  </tr>
  <c:forEach var="dto" items="${list}">
    <tr>
    	<td>${dto.trv_no}</td> 
  		<td>${dto.trv_sub}</td>
  		<td>${dto.trv_con}</td>
  		<td>${dto.trv_date}<br></td>
    </tr>
  </c:forEach>
  </table>

<%@ include file="../footer.jsp" %>