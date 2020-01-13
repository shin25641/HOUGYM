<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	
<!DOCTYPE html>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width,initial-scale=1" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/bootstrap.css?version-1.3.4">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/bootstrap.min.css?version-1.3.5">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/bootstrap-reboot.css?version-1.3.6">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/bootstrap-reboot.min.css?version-1.3.7">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/agency.css?version-1.3.10">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/agency_2.css?version-1.3.11">
</head>

<body class="wrapper-mypage" style="background-color: #111111;">
	<div class="header-mypage">
		<%@ include file="../include/header.jspf"%>
	</div>
	<div class="content-mypage">
		<div class="content-mypage-top">
			<h1 class="h1-locker" style="font-family: dohyun;"> 회원정보 관리</h1>
			<hr class="hr-locker" align="left" >
		</div>
		<div class="content-mypage-left">
			<%@ include file="../include/myPageSidemenu.jsp"%>
		</div>
		<c:set var="Udto" value="${userInfo }"/>
		<div class="content-mypage-middle">
			<div class="mypage-form">
				<form id="modifyform" action="modify-controller" method="post">
					<p style="font-family: dohyun; font-size: 2em; color: white;">
						회원 정보</p>
					<input class="gray_textbox"
						style="width: 85%; height: 30px; align-self: center;" type="text"
						id="modifyId" name="modifyId" readonly="readonly"
						value="${Udto.userId }"><br>
					<br> <span id="pwmodifyresult" style="color: white; font-family: dohyun; font-style: italic;"></span>
        				 <input class="gray_textbox" 
         					type="password" id="modifyPw" name="modifyPw" placeholder="비밀번호" 
         					style="margin-botton:5px; width:85%; height:30px; align-self: center;"><br><br>
        				 <span id="pwchkmodifyresult" style="color: white; font-family: dohyun; font-style: italic;"></span>
         					<input class="gray_textbox" 
        						 type="password" id="modifyPwChk" name="modifyPwChk" placeholder="비밀번호 확인" 
        						 style="margin-botton:5px; width:85%; height:30px; align-self: center;"><br><br>
					
					
					 <input class="gray_textbox" type="text" id="modifyName"
						name="modifyName" placeholder="이름" value="${Udto.userName }"
						style="margin-botton: 5px; width: 85%; height: 30px; align-self: center;"><br>
					<br> <input class="gray_textbox" type="text" id="modifyEmail"
						name="modifyEmail" placeholder="이메일" value="${Udto.userEmail }"
						style="margin-botton: 5px; width: 85%; height: 30px; align-self: center;"><br>
					<br>


					<button class="orange_btn" type="button" id="modify-btn"
						style="width: 40%; align-self: center;" onclick="submitform();">
						정보 수정</button>
					&nbsp;&nbsp;&nbsp;&nbsp;
					<button class="orange_btn" type="button" id="delete-btn"
						style="width: 40%; align-self: center;" onclick="deletechk();">
						회원 탈퇴</button>
				</form>
			</div>
		</div>
		<div class="content-mypage-right">
		</div>
	</div>
	<div class="footer-mypage">
		<%@ include file="../include/footer.jspf"%>
	</div>
	
	<script>
		function deletechk(){
			var pw = document.getElementById('modifyPw').value;
			var pwchk = document.getElementById('modifyPwChk').value;
			var sessionId = document.getElementById('modifyId').value;

			if(pw == "" || pwchk == ""){
				alert("비밀번호를 반드시 입력해주세요")
			}else if(pw == pwchk) {
				if(confirm("정말로 회원탈퇴를 하시겠습니까?") == true)
				 {
					location.href='delete-controller?delId='+sessionId;
					alert('탈퇴되었습니다');
				 }
				 else
				 {
					alert('취소되었습니다.');
				 }
			}else {
			
				alert("비밀번호 다시 입력")
				document.getElementById('modifyPw').value="";
				document.getElementById('modifyPwChk').value="";
				document.getElementById('modifyPw').focus();
			}		
	
		}
		
		function submitform(){
			var pw = document.getElementById('modifyPw').value;
			var pwchk = document.getElementById('modifyPwChk').value;
			if(pw == "" || pwchk == ""){
				alert("비밀번호를 반드시 입력해주세요")
			}else if(pw == pwchk) {
				if(confirm("수정하시겠습니까?"))
				 {
					document.getElementById('modifyform').submit();				
					alert('수정되었습니다.');
				    location.href="mypage";
				 }
				 else
				 {
					alert('취소되었습니다.');
				 }
			}else {
			
				alert("비밀번호 다시 입력")
				document.getElementById('modifyPw').value="";
				document.getElementById('modifyPwChk').value="";
				document.getElementById('modifyPw').focus();
			}
		}
	</script>
<script type="text/javascript">
   
   var check1 = false;
   var check2 = false;
      
$(function(){

   //비밀번호 확인
      $('#modifyPwChk').blur(function(){
         if($('#modifyPw').val() != $('#modifyPwChk').val()){
             if($('#modifyPwChk').val()!=''){
             $('#pwchkmodifyresult').html('비밀번호가 일치하지 않습니다.&nbsp;&nbsp;&nbsp;');
            $('#pwchkmodifyresult').append("<img src='resources/static/img/cancel.png' style="+'width:20px; height:20px;'+">")
             $('#modifyPwChk').val('');
              $('#modifyPwChk').focus();
              check1 = false;
             }
          } else {
             $('#pwchkmodifyresult').html('비밀번호가 일치합니다&nbsp;&nbsp;&nbsp;');
            $('#pwchkmodifyresult').append("<img src='resources/static/img/checked.png' style="+'width:20px; height:20px;'+">")
            check1 = true;
          }
      })        
   });

function pwdoublechk(){
   if(check2 == false){
      $('#modifyPw').val('');
        $('#modifyPw').focus();
   }
}

//패스워드 입력값 검증.
$('#modifyPw').on('keyup', function() {
      
   //자바스크립트 정규 표현식
   const getPwCheck= RegExp(/([a-zA-Z0-9].*[!,@,#,$,%,^,&,*,?,_,~])|([!,@,#,$,%,^,&,*,?,_,~].*[a-zA-Z0-9])/);
   //비밀번호 공백 확인
   if($("#modifyPw").val() == ""){
       $('#modifyPw').css("background-color", "pink");
      $('#pwmodifyresult').html('[패스워드는 필수정보에요!]&nbsp;&nbsp;&nbsp;');
      $('#pwmodifyresult').append("<img src='resources/static/img/cancel.png' style="+'width:20px; height:20px;'+">")
      check2 = false;
   }               
   //비밀번호 유효성검사
   else if(!getPwCheck.test($("#modifyPw").val()) || $("#modifyPw").val().length < 8){
       $('#modifyPw').css("background-color", "pink");
      $('#pwmodifyresult').html('[특수문자 포함 8자이상 비밀번호를 입력하세요]&nbsp;&nbsp;&nbsp;');
      $('#pwmodifyresult').append("<img src='resources/static/img/cancel.png' style="+'width:20px; height:20px;'+">")
      check2 = false;
   } else {
      $('#modifyPw').css("background-color", "rgb(61,61,61)");
      $('#pwmodifyresult').html('[사용 가능한 비밀번호입니다!]&nbsp;&nbsp;&nbsp;');
      $('#pwmodifyresult').append("<img src='resources/static/img/checked.png' style="+'width:20px; height:20px;'+">")
      check2 = true;
   }
   

});

function modifyformchk(){
   if(check1 == true && check2 == true){
      document.getElementById('modifyForm').submit();
   } else {
      alert('모든 값을 채워주셔야 합니다.');
   }
}


</script>
</body>
</html>


