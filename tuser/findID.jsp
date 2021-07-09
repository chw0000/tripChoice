<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>trip Choice</title>
  <link href="https://fonts.googleapis.com/css?family=Karla:400,700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdn.materialdesignicons.com/4.8.95/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="./css/login.css">
  
<!-- 본문 시작 findID.jsp -->
<main class="d-flex align-items-center min-vh-100 py-3 py-md-0">
    <div class="container">
      <div class="card login-card">
        <div class="row no-gutters">
          <div class="col-md-5">
            <img src="./images/login.jpg" alt="login" class="login-card-img">
          </div>
          <div class="col-md-7">
            <div class="card-body">
              <div class="brand-wrapper">
                <img src="./images/logo.png" alt="logo" class="logo">
              </div>
              <p class="login-card-description">Find ID/PW</p>
                  
                  
<form method="post" action="findIDProc.jsp" onsubmit="return findIDCheck()">
<div class="form-group">
					<a>이름</a>
                    <input type="text" name="tu_name" id="tu_name" placeholder="이름" maxlength="20" required>
</div>
<div class="form-group">
					<a>이메일</a>
                    <input type="email" name="tu_email" id="tu_email" placeholder="이메일" required>
</div>
 
	<td colspan="2">
		<input type="submit" value="아이디/비번찾기"  class="btn btn-primary"/>
		<input type="reset"  value="취소"  class="btn btn-primary"/>
		<a href="<%=request.getContextPath()%>/loginForm.do" class="btn btn-primary">뒤로가기</a>
	</td>

</form>   	
			
     		 </div>
          </div>
        </div>
      </div>
  </div>
  </main>
<!-- 본문 끝 -->
  <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>  