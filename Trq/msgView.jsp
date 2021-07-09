<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>msgView.jsp</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  	<style>
 	{font-family:gulim; font-size: 24px;}
 </style>
 </head>
<body>	
	<div class="title" align="center"> 문의사항이 등록 되었습니다. </div>
	<div class="content" align="center">
		<dl>
			<dd>${msg1 != null ? img :"" } ${msg1}</dd>
			<dd>${msg2 != null ? img :"" } ${msg2}</dd>
			<dd>${msg3 != null ? img :"" } ${msg3}</dd>
		</dl>
		<p>
			${link1} ${link2} ${link3}
		</p>
	</div>
</body>
</html>