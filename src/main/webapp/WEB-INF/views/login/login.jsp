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
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/agency.css?version-1.3.8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/agency_2.css?version-1.3.10">

</head>

<body class="wrapper-loginView" style="background-image: url('resources/static/img/login-background.png'); height:100vh; background-repeat: no-repeat; background-size: cover; background-position: center;">
	<div class="header">
		<p>1</p>
	</div>
	<div class="content-loginview">
		<div class="content-loginview-form">
			<div class="content-loginview-form-div" style="background-color: rgba(17,17,17,0.8); border-color: #fe6000; border-style:double;">
		<h1 style="font-family: dohyun; margin-top:30px; color: white;"> 로그인 
		</h1>

		<p style="font-family: dohyun; font-size:1em; color: white;"> 아이디와 패스워드를 입력해주세요 
		</p>
		<form action="login-controller" style="align-content: center; margin-top: 20px;">
			<input class="gray_textbox" 
			type="text" id="signInId" name="userId" placeholder="ID"
			style="width:251px; height:30px;"><br>
			<input class="gray_textbox" 
			type="password" id="signInPw" name="userPw" placeholder="PASSWORD" 
			style="width:251px; height:30px;"><br>
			<button class="orange_btn" 
			type="button" id="login-btn" style="width:251px;" onclick="form.submit()"> 로그인 
			</button>
		</form>
			<img src="resources/static/img/google-icon.png" style="width:60px; height:60px; ">
			<img src="resources/static/img/naver-icon.png" style="width:60px; height:60px; ">
			<img src="resources/static/img/facebook-icon.png" style="width:60px; height:60px; ">
			<!--  
			<a href="http://www.google.com" style="font-family: dohyun; font-size: 1em; color: white; font-style: none; margin-left: 8%; text-decoration: none;">google으로 로그인하기</a><br>
			<a href="http://www.naver.com" style="font-family: dohyun; font-size: 1em; color: white; font-style: none; margin-left: 8%; text-decoration: none;">naver으로 로그인하기</a><br>
			-->
			
			<hr style="border: solid 4px #fe6000; width:251px; border-radius: 12px 12px / 12px 12px;">
			
			<p style="font-family: dohyun; font-size: 1em; color: white; font-style: none; text-decoration: none;"><a href="findid" style="color:white; text-decoration: none;">아이디 찾기</a> / <a href="#" style="color:white; text-decoration: none;">비밀번호 찾기</a></p>
			<p style="font-family: dohyun; font-size: 1em; color: white; font-style: none; text-decoration: none;">아직 회원이 아니신가요?</p>
			
			<button class="orange_btn" 
			type="button" id="login-btn" style="width:251px;" onclick="return location.href='userRegister'"> 회원가입 
			</button>
	</div>
		</div>
	</div>
	<div class="footer">
		<%@ include file="../include/footer.jspf"%>
	</div>
</body>    
    
    
    
    
    
    
    
    
    
