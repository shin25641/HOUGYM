<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix = "fmt" %>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width,initial-scale=1" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/bootstrap.css?version-1.3.4">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/bootstrap.min.css?version-1.3.5">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/bootstrap-reboot.css?version-1.3.6">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/bootstrap-reboot.min.css?version-1.3.7">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/agency.css?version-1.3.10">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/agency_2.css?version-1.3.14">



</head>
<body class="wrapper" style="background-image: url('resources/static/img/login-background.png'); height:100%; background-position: center; color:white;">
	<fmt:requestEncoding value = "utf-8"/>
	<div class="haeder">
		<%@ include file="../include/header.jspf"%>
	</div>
	<div class="content-register">
		<div class="content-register-left"></div>
		<div class="content-register-middle">
			<div class="content-register-middle-item1">
				<h4 class="modal-title"
					style="font-family: dohyun; color: white;">
					<span style="color: #fe6000;">HOUGYM Trainer</span> 회원 가입<br>
					<br>
				</h4>
			</div>
			<form action="join-controller" name="signup" id="signUpForm" method="post" >
			<input class="gray_textbox" type="text" value="2" id ="Admin" name = "Admin" hidden="true">
			<div class="content-register-middle-item2">
				<h5>아이디를 입력해주세요.</h5>
			</div>
			<div class="content-register-middle-item3">
				<input class="gray_textbox" type="text" name="userId" id="userId" maxlength="14" required="required" aria-required="true" placeholder="숫자와 영어로 4-14자">
			</div>
			<div class="content-register-middle-item4">
				<h5>비밀번호를 입력해주세요.</h5>
			</div>
			<div class="content-register-middle-item5">
				<input class="gray_textbox" type="password" name="userPw" id="userPw" maxlength="20" required="required" aria-required="true" placeholder="영문과 특수문자를 포함한 최소 8자">
			</div>
			<div class="content-register-middle-item6">
				<h5>비밀번호를 재확인해주세요.</h5>
			</div>
			<div class="content-register-middle-item7">
				<input class="gray_textbox" type="password" name="pw_check" id="password_check" maxlength="20" required="required" aria-required="true" placeholder="비밀번호가 일치해야합니다.">
			</div>
			<div class="content-register-middle-item8">
				<h5>이름을 입력해주세요.</h5>
			</div>
			<div class="content-register-middle-item9">
				<input class="gray_textbox" type="text" name="userName" id="userName" maxlength="6" required="required" aria-required="true" placeholder="한글로 최대6자">
			</div>
			<div class="content-register-middle-item10">
				<h5>이메일을 입력해주세요.</h5>
			</div>
			<div class="content-register-middle-item11">
				<input class="gray_textbox" type="text" name="userEmail" id="userEmail" required="required" aria-required="true" placeholder="ex) hougim@health.com">
			</div>
			<div class="content-register-middle-item12">
				<h5>나이를 입력해주세요</h5>
			</div>
			<div class="content-register-middle-item13">
				<input class="gray_textbox" type="text" name="userAge" id="userAge" required="required" aria-required="true" placeholder="나이는 만 **세로 계산, 숫자만 입력">
			</div>
			<div class="content-register-middle-item14">
				<h5>키를 입력해주세요.</h5>
			</div>
			<div class="content-register-middle-item15">
				<input class="gray_textbox" type="text" name="userHeight" id="userHeight" required="required" aria-required="true" placeholder="소수점은 반올림">
			</div>
			<div class="content-register-middle-item16">
				<h5>몸무게를 입력해주세요.</h5>
			</div>
			<div class="content-register-middle-item17">
				<input class="gray_textbox" type="text" name="userWeight" id="userWeight" required="required" aria-required="true" placeholder="소수점은 반올림">
			</div>
			<div class="content-register-middle-item18">
				<p>남&nbsp;&nbsp;<input type = "radio" name = "userSex" id = "userSex" value = "male"
               style = "margin-bottom: 25px; border: 1px solid #d9d9de"
               required = "required" aria-required = "true" checked="checked">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            	여&nbsp;&nbsp;<input type = "radio" name = "userSex" id = "userSex" value = "female"
               style = "margin-bottom: 25px; border: 1px solid #d9d9de"
               required = "required" aria-required = "true"></p>			
			</div>
			<div class="content-register-middle-item19">
               <p style="font-family:dohyun; color:white; margin-left: 0%;">
                  	회원가입하셔서 <span style="color: #fe6000;">HOUGYM</span>의 트레이너가 되어보세요~~!
               </p>
			</div>
			<div class="content-register-middle-item20">
				<input type="submit" value="회원 가입" class="orange_btn" id="signup-btn" style="background-color: #fe6000; color: white;">
			</div>
			</form>
		</div>
		<div class="content-register-right"></div>
	</div>
	<div class="footer-register">
		<%@ include file="../include/footer.jspf"%>
	</div>	
</body>
</html>