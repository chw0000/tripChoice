<%@page import="org.mybatis.spring.batch.MyBatisPagingItemReader"%>
<%@page import="org.springframework.dao.support.DaoSupport"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="ssi.jsp" %>   
<%@ include file="/header.jsp" %> 
   
<!-- 본문 시작 trvList.jsp-->
<h1 align="center"> 리뷰 게시판</h1>

<div class="content" align="center">
<c:if test="${sessionScope.s_tu_rank =='admin'}">
		<input type="button" value="리뷰 작성" onclick="location.href='trqIns.jsp'"  class="btn btn-info" >
</c:if>
		<input type="button" value="HOME"   onclick="location.href='${root}/index.do'" class="btn btn-success" >
</div>
	
<div class="container">
  <table class="table table-hover">
  <thead>
	<tr class="info" align="center">
		
		<th>제목</th>
		<th>작성일</th>
		<c:if test="${sessionScope.s_tu_rank =='admin'}">
		<th>답변</th>
		</c:if>
	</tr>
  </thead>
  
  <c:forEach var="dto" items="${list}">
  	<tr>
  	<td><p><b><a href="" target="_blank">${dto.trv_sub}</a></b></p></td>
  	<td>${dto.trv_date}</td>
  	<c:if test="${sessionScope.s_tu_rank =='admin'}">
  	<td>
  			<input type="button" value="수정" onclick="location.href='trvUpdate.do?trv_no=${dto.trv_no}'" class="btn btn-warning">
  			<input type="button" value="삭제" onclick="location.href='trvDel.do?trv_no=${dto.trv_no}'" class="btn btn-danger">
  	</td>
  	</c:if>
    </tr>
  </c:forEach>
    
    </table>
</div>
<!-- 본문 끝-->

<%@ include file="/footer.jsp" %> 