<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="ssi.jsp" %>
<%@ include file="auth.jsp" %>

  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link href="https://fonts.googleapis.com/css?family=Karla:400,700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdn.materialdesignicons.com/4.8.95/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="./css/login.css">

    
<!-- 본문 시작 loginForm.jsp-->
<%if (s_tu_id.equals("guest") || s_tu_pw.equals("guest") || s_tu_rank.equals("guest")) {
	//로그인을 하지 않은 경우    
    
//쿠키-----------------------------------------------------
	//사용자PC에 저장된 모든 쿠키값 가져오기
	Cookie[] cookies=request.getCookies();
	String c_tu_id="";
	if(cookies!=null){ //쿠키가 존재하는지?
		for(int i=0; i<cookies.length; i++){
		    Cookie cookie=cookies[i];
		    if(cookie.getName().equals("c_tu_id")==true){
		        c_tu_id=cookie.getValue(); //쿠키변수값 가져오기
		    }//if end
		}//for end	    
	}//if end
//---------------------------------------------------------
%>
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
              <p class="login-card-description">Sign into your account</p>
              <form name="memfrm" id="memfrm" method="post" action="loginProc.do" onsubmit="return loginCheck()"><!-- myscript.js 코딩 -->
                  <div class="form-group">  
                    <label for="ID" class="sr-only">ID</label>
                    <input type="text" name="tu_id" id="tu_id" value="<%=c_tu_id%>" class="form-control" placeholder="ID" maxlength="10" required>
                    <input type="checkbox" name="c_tu_id" value="SAVE" <%if (!(c_tu_id.isEmpty())){out.print("checked");} %>>&nbsp;ID Keep
                  </div>
                  <div class="form-group mb-4">
                    <label for="password" class="sr-only">Password</label>
                    <input type="password" name="tu_pw" id="tu_pw" class="form-control" placeholder="비밀번호" maxlength="10" required>
                  </div>
                  <input name="login" id="login" class="btn btn-block login-btn mb-4" type="button" value="Login">
                </form>
                <a href="findID.do" class="forgot-password-link">Forgot password?</a>
                <p class="login-card-footer-text">Don't have an account? <a href="agreement.do" class="text-reset">Register here</a></p>
                <nav class="login-card-footer-nav">
               
                </nav>
            </div>
          </div>
        </div>
      </div>
    </div>
  </main>
  
	
	
	
<%
} else {
    //로그인 성공했다면
    out.println("<strong>" + s_tu_id + "</strong>님");
    out.println("<a href='logout.do'>[로그아웃]</a>");
    out.println("<br><br>");
    out.println("<a href='memberModify.do'>[회원정보수정]</a>");
    out.println("<a href='memberWithdraw.do'>[회원탈퇴]</a>");
}//if end
%>
  <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<!-- 본문 끝-->
        
     