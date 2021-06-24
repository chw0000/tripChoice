/**
 *  myscript.js
 */

function bbsCheck() { //게시판 유효성 검사

	//alert("bbsCheck()호출");
	
	// 1) 작성자 2글자 이상 입력
	var wname=document.getElementById("wname").value;  // 작성자 가져오기
	wname=wname.trim(); // 좌우 공백 제거하기
	if(wname.length<2) {
		alert("작성자 2글자 이상 입력해 주세요");
		document.getElementById("wname").focus;
		return false;
	}
	// 2) 제목 2글자 이상 입력
	var subject=document.getElementById("subject").value;  // 작성자 가져오기
	subject=subject.trim(); // 좌우 공백 제거하기
	if(subject.length<2) {
		alert("제목 2글자 이상 입력해 주세요");
		document.getElementById("subject").focus;
		return false;
	}
	// 3) 내용 2글자 이상 입력
	var content=document.getElementById("content").value;  // 작성자 가져오기
	content=content.trim(); // 좌우 공백 제거하기
	if(content.length<2) {
		alert("내용 2글자 이상 입력해 주세요");
		document.getElementById("content").focus;
		return false;
	}
	// 4) 비밀번호는 4글자 이상이면서 숫자형 기호만 입력
	
	var passwd=document.getElementById("passwd").value;  // 작성자 가져오기
	passwd=passwd.trim(); // 좌우 공백 제거하기
	if(passwd.length<4 || isNaN(passwd)) {
		alert("비밀번호는 4글자 이상 숫자로 입력해 주세요");
		document.getElementById("passwd").focus;
		return false;
	}
	 	
}//bbsCheck() end

function pwCheck(){
	// 4) 비밀번호는 4글자 이상이면서 숫자형 기호만 입력
	var passwd=document.getElementById("passwd").value;  // 작성자 가져오기
	passwd=passwd.trim(); // 좌우 공백 제거하기
	if(passwd.length<4 || isNaN(passwd)) {
		alert("비밀번호는 4글자 이상 숫자로 입력해 주세요");
		document.getElementById("passwd").focus;
		return false;
	}//if end
	
	var message="삭제된 파일은 복구되지 않습니다. 계속 진행하시겠습니까?"
	if(confirm(message)) { // 확인 true, 취소 false  확인을 눌렀을때만 서버로 전송 
		return true;
	}else {
		return false;
	}// if end
}//pwCheck() end


function searchCheck() {
	//검색어를 입력해야만 서버로 전송
	var word = document.getElementById("word").value;
	word=word.trim();
	if(word.length==0) {
		alert("검색어를 입력해 주세요");
		return false;
	}// if end
	
	return true;
}// searchCheck() end

function loginCheck() {  // 로그인 유효성 검사
	// 아이디 5~10 글자 이내 
	var id=document.getElementById("id").value;
	id=id.trim(); // 좌우 공백 제거하기
	if(!(id.length>=5 && id.length<10)) {
		alert("아이디는 5~10 글자 이내  입력해 주세요");
		document.getElementById("id").focus();
		return false;
	}//if end
		
	//  비밀번호 5~10글자 이내 인지검사	
	var passwd=document.getElementById("passwd").value;
	passwd=passwd.trim();
	if(!(passwd.length>=1 && passwd.length<=10)) {
		alert("비밀번호는 10 글자 이내로 입력해 주세요");
		document.getElementById("passwd").focus();
		
		}//if end
		return false;
	
	
}// loginCheck() end

function idCheck() {
	//아이디 중복확인
	//bootstrap 모달창
	// -> 부모창과 자식창이 한 몸으로 구성되어 있다
	// -> 참조 https://www.w3schools.com/bootstrap/bootstrap_modal.asp
	
	// 새창 만들기
	// -> 부모창과 자식창이 별개로 구성되어 있다
	// -> 모바일에 기반을 둔 frontend단에서는 사용하지 않는다
	// -> window.open("파일명", "새창이름" , "다앙한 옵션들")
	window.open("idCheckForm.jsp", "idwin" ,"width=400, height=300");
}//idCheck() end  

function memberCheck() { // 회원가입 유효성 검사
  //1)아이디 5~10글자 확인
	var id=document.getElementById("id").value;
	id=id.trim(); // 좌우 공백 제거하기
	if(!(id.length>=5 && id.length<=10)) {
		alert("아이디는 5~10 글자 이내로 입력해 주세요");
		document.getElementById("id").focus();
		return false;
	}//if end
  //2)비밀번호 5~10글자 확인
	var passwd=document.getElementById("passwd").value;
	passwd=passwd.trim(); // 좌우 공백 제거하기
	if(!(passwd.length>=5 && passwd.length<=10)) {
		alert("비밀번호는 5~10 글자 이내로 입력해 주세요");
		document.getElementById("passwd").focus();
		return false;
	}//if end
  //3)비밀번호와 비밀번호확인이 서로 일치하는지 확인
function repasswd(){  //비밀번호 확인 
    var repasswd = document.getElementById('repasswd').value;
	if (repasswd == '' || !re.test($repasswd)) {
	alert("올바른 비밀번호를 입력하세요")
	return false;
	}// if end
  }// repasswd()end
  
  //4)이름 1~5글자 확인
	var mname=document.getElementById("mname").value;
	mname=mname.trim(); // 좌우 공백 제거하기
	if(!(mname.length>=1 && mname.length<=5)) {
		alert("이름은 1~5글자 이내로 입력해 주세요");
		document.getElementById("mname").focus();
		return false;
	}//if end
	
  //5)이메일 30글자 이내확인
	var email=document.getElementById("email").value;
	email=email.trim(); // 좌우 공백 제거하기
	if(!( email.length<=30)) {
		alert("이메일은 30글자 이내로 입력해 주세요");
		document.getElementById("email").focus();
		return false;
	}//if end
	
  //6)직업을 선택했는지 확인
    var job = document.getElementById('job').value;
	if (job =='') {
	alert("직업을 선택하세요")
	return false;
	}// if end
 
}// memberCheck() end


function emailCheck(){ // 이메일 유효성검사
	//email 중복확인
	//bootstrap 모달창
	// -> 부모창과 자식창이 한 몸으로 구성되어 있다
	// -> 참조 https://www.w3schools.com/bootstrap/bootstrap_modal.asp
	
	// 새창 만들기
	// -> 부모창과 자식창이 별개로 구성되어 있다
	// -> 모바일에 기반을 둔 frontend단에서는 사용하지 않는다
	// -> window.open("파일명", "새창이름" , "다앙한 옵션들")
	window.open("emailCheckForm.jsp", "emailwin" ,"width=400, height=300"); 
 }//emailCheck() end   


function mnameCheck(){  // 이름확인
    var mname = document.getElementById('mname').value;
	if (mname== '' || !re.test($mname) ) {
	alert("올바른 이름을 입력하세요")
	return false;
	}// if end
  }// mnameCheck()end

function pdsCheck() { // 포토갤러리 유효성 검사
	// 1) 작성자
	var wname=document.getElementById("wname").value;
	if(!(wname.length<=5)) {  
		alert("작성자는 5글자 이내로 입력해 주세요");  
		document.getElementById("wname").focus();
		return false;
	}//if end
	// 2) 제목
	var subject=document.getElementById("subject").value;
	if(!(subject.length<=20)) {  
		alert("제목은 20글자 이내로 입력해 주세요");  
		document.getElementById("subject").focus();
		return false;
	}//if end	 
	// 3) 비밀번호
	
	// 4) 첨부파일 : 확장명이 이미지 파일(png, jpg, gif)인지 확인하시오 
	var filename=document.getElementById("filename").value;
	if(filename.length==0){
		alert("첨부파일을 선택 하세요"); 
		return false;  
	}else {
		//filename 변수값에서 마지막 .의 순서값
		var dot=filename.lastIndexOf(".");
		//확장명 : 마지막. 이후 문자열 자르기
		var ext=filename.substr(dot+1);
		//확장명을 전부 소문자 치환
		ext=ext.toLowerCase();
		alert(ext); 
	if(ext=="png" || ext=="jpg" || ext=="gif") {
		return true;
	}else{
		alert("이미지 파일만 첨부 가능합니다	");
		return false; 
	}//end
		
	}//end

}//pdsCheck() end 