<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="ssi.jsp"%>

  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>trip Choice</title>
  <link href="https://fonts.googleapis.com/css?family=Karla:400,700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdn.materialdesignicons.com/4.8.95/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="../css/login.css">

  
<!-- 본문 시작 memberModify.jsp-->

<%
	String tu_id=(String)session.getAttribute("s_tu_id");
    dto=dao.read(tu_id); 
    if (dto==null){
	    out.println("<p>시간이 초과 되었습니다</p>");
	    out.println("<p>다시 로그인 해 주시기 바랍니다</p>");
	    out.println("<p><a href='loginForm.do'>[로그인]</a></p>");
    }else{
%>
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
                <img src="../images/logo.png" alt="logo" class="logo">
              </div>
              <p class="login-card-description">Modify member information</p>
               </div>
		<form name="memfrm" id="memfrm" method="post" action="memberModifyProc.do" onsubmit="return memberCheck()"><!-- myscript.js -->
		<span style="color:red; font-weight: bold">* 필수입력</span>
		
<div class="form-group">  
 					<a>*아이디</a>
                    <a style="text-align: left">
				      <input type="text" name="tu_id" id="tu_id" size="15" value="<%=session.getAttribute("s_tu_id")%>" readonly>
				      <span style='color:blue'>수정불가</span>
</div>
<div class="form-group">  
 					<a>*비밀번호</a>
                    <a style="text-align: left"><input type="password" name="tu_pw" id="tu_pw" size="15" required></a>
</div>
<div class="form-group">  
 					<a>*비밀번호 확인</a>
                    <a style="text-align: left"><input type="password" name="retu_pw" id="retu_pw" size="15" required></a>
</div>
<div class="form-group">  
 					<a>*이름</a>
                    <a style="text-align: left"><input type="text" name="tu_name" id="tu_name" value="<%=dto.getTu_name()%>" size="15" maxlength="20" required></a>
</div>
<div class="form-group">  
 					  <a>*이메일</a>
                      <a style="text-align: left">
				      <input type="email" name="tu_email" id="tu_email" size="30" value="<%=dto.getTu_email()%>" readonly>
				      <input type="button" value="Email 중복확인" onclick="emailCheck()">  
				       </a>
</div>
<div class="form-group">  
 					 <a>*전화번호</a>
                     <a style="text-align: left"><input type="text" name="tu_phone" id="tu_phone" value="<%=dto.getTu_phone()%>" size="15">
				     </a>
</div>
<div class="form-group">  
 					 <a>*우편번호</a>
                     <a style="text-align: left">
				      <input type="text" name="tu_zipcode" id="tu_zipcode" size="7"  value="<%=dto.getTu_zipcode()%>" readonly>
				      <input type="button" value="주소찾기" onclick="DaumPostcode()">    
				      </a>
</div>
<div class="form-group">  
 					<a>*주소</a>
                    <a style="text-align: left"><input type="text" name="tu_address" id="tu_address" value="<%=dto.getTu_address()%>" size="45" readonly> 
				    </a>
</div>
<div class="form-group">  
 					<a>*나머지주소</a>
                    <a style="text-align: left"><input type="text" name="tu_address2" id="tu_address2" value="<%=dto.getTu_address2()%>" size="45">
				    </a>
</div>
		   
		    <td colspan="2">
		        <input type="submit" value="완료"  class="btn btn-primary"/>
		        <input type="reset"  value="취소"  class="btn btn-primary"/>
		        <a href="<%=request.getContextPath()%>/loginForm.do" class="btn btn-primary">뒤로가기</a>
		    </td>
		
		
		<!-- ----- DAUM 우편번호 API 시작 ----- -->
		<div id="wrap" style="display:none;border:1px solid;width:500px;height:300px;margin:5px 110px;position:relative">
		  <img src="//i1.daumcdn.net/localimg/localimages/07/postcode/320/close.png" id="btnFoldWrap" style="cursor:pointer;position:absolute;right:0px;top:-1px;z-index:1" onclick="foldDaumPostcode()" alt="접기 버튼">
		</div>
		
		<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
		<script>
		    // 우편번호 찾기 화면을 넣을 element
		    var element_wrap = document.getElementById('wrap');
		
		    function foldDaumPostcode() {
		        // iframe을 넣은 element를 안보이게 한다.
		        element_wrap.style.display = 'none';
		    }
		
		    function DaumPostcode() {
		        // 현재 scroll 위치를 저장해놓는다.
		        var currentScroll = Math.max(document.body.scrollTop, document.documentElement.scrollTop);
		        new daum.Postcode({
		            oncomplete: function(data) {
		                // 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
		
		                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
		                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
		                var fullAddr = data.address; // 최종 주소 변수
		                var extraAddr = ''; // 조합형 주소 변수
		
		                // 기본 주소가 도로명 타입일때 조합한다.
		                if(data.addressType === 'R'){
		                    //법정동명이 있을 경우 추가한다.
		                    if(data.bname !== ''){
		                        extraAddr += data.bname;
		                    }
		                    // 건물명이 있을 경우 추가한다.
		                    if(data.buildingName !== ''){
		                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
		                    }
		                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
		                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
		                }
		
		                // 우편번호와 주소 정보를 해당 필드에 넣는다.
		                document.getElementById('tu_zipcode').value = data.zonecode; //5자리 새우편번호 사용
		                document.getElementById('tu_address').value = fullAddr;
		
		                // iframe을 넣은 element를 안보이게 한다.
		                // (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
		                element_wrap.style.display = 'none';
		
		                // 우편번호 찾기 화면이 보이기 이전으로 scroll 위치를 되돌린다.
		                document.body.scrollTop = currentScroll;
		                
		                $('#tu_address2').focus();
		            },
		            // 우편번호 찾기 화면 크기가 조정되었을때 실행할 코드를 작성하는 부분. iframe을 넣은 element의 높이값을 조정한다.
		            onresize : function(size) {
		                element_wrap.style.height = size.height+'px';
		            },
		            width : '100%',
		            height : '100%'
		        }).embed(element_wrap);
		
		        // iframe을 넣은 element를 보이게 한다.
		        element_wrap.style.display = 'block';
		    }
		</script>
		<!-- ----- DAUM 우편번호 API 종료----- -->
		
		</form>
		 <!-- <div class="card login-card">
        <img src="assets/images/login.jpg" alt="login" class="login-card-img">
        <div class="card-body">
          <h2 class="login-card-title">Login</h2>
          <p class="login-card-description">Sign in to your account to continue.</p>
          <form action="#!">
            <div class="form-group">
              <label for="email" class="sr-only">Email</label>
              <input type="email" name="email" id="email" class="form-control" placeholder="Email">
            </div>
            <div class="form-group">
              <label for="password" class="sr-only">Password</label>
              <input type="password" name="password" id="password" class="form-control" placeholder="Password">
            </div>
            <div class="form-prompt-wrapper">
              <div class="custom-control custom-checkbox login-card-check-box">
                <input type="checkbox" class="custom-control-input" id="customCheck1">
                <label class="custom-control-label" for="customCheck1">Remember me</label>
              </div>              
              <a href="#!" class="text-reset">Forgot password?</a>
            </div>
            <input name="login" id="login" class="btn btn-block login-btn mb-4" type="button" value="Login">
          </form>
          <p class="login-card-footer-text">Don't have an account? <a href="#!" class="text-reset">Register here</a></p>
        </div>
      </div> -->
            </div>
          </div>
        </div>
      </div>
    </div>
  </main>
  <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<%
    }//if end  
%>
<!-- 본문 끝 -->           
