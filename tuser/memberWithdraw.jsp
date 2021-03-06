<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>trip Choice</title>
  <link href="https://fonts.googleapis.com/css?family=Karla:400,700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdn.materialdesignicons.com/4.8.95/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="../css/login.css">
    
<!-- 본문 시작 memberWithdraw.jsp-->
<!-- 아이디(id)와 비밀번호(passwd)가 일치하면 삭제 -->
<main class="d-flex align-items-center min-vh-100 py-3 py-md-0">
    <div class="container">
      <div class="card login-card">
        <div class="row no-gutters">
          <div class="col-md-5">
            <img src="../images/login.jpg" alt="login" class="login-card-img">
          </div>
          <div class="col-md-7">
            <div class="card-body">
              <div class="brand-wrapper">
                <img src="assets/images/logo.svg" alt="logo" class="logo">
              </div>
	<p class="login-card-description">membership withdrawal</p>
<div class="container">
	<form method="post" action="memberWithdrawProc.do" onsubmit="return memberWithdraw()">
<div class="success">
		 			<a>비밀번호</a>
                    <a><input type="password" name="tu_pw" id="tu_pw" required></a>
                  </div>
		
			<td colspan="2">
				<input type="submit" value="회원탈퇴" class="btn btn-danger">
				<a href="<%=request.getContextPath()%>/loginForm.do" class="btn btn-primary">뒤로가기</a>
		    </td>
	
	</form>
</div>	
     		</div>
          </div>
        </div>
      </div>
  </div>
  </main>
<!-- 본문 끝-->

  <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
        
     