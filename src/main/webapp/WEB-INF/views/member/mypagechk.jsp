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
<body class="wrapper-mypagechk" style="background-color: #111111;">
	<div class="header-mypagechk">
		<%@ include file="../include/header.jspf"%>
		<c:if test="${sessionScope.pwchk eq 1}">
   		<meta http-equiv="refresh" content="0;url=mypage">
		</c:if>
	</div>
	<div class="content-mypagechk">
		<div class="content-mypagechk-left"></div>
		<div class="content-mypagechk-middle" style="text-align: center;">
			<h1 style="font-family: dohyun; margin-left:30px; margin-top:30px; color: white;"> my Page 확인 페이지
				</h1>
			<form action="mypagepwchk" method="post">
				<input class="gray_textbox" type="text" id="idchk" name="idchk" value="${sessionScope.user_id}" readonly="readonly" placeholder="아이디"> <br>
				<input class="gray_textbox" type="password" id="pwchk" name="pwchk" placeholder="비밀번호"> <br>
				<input id="btn" class="orange_btn" type="submit" value="비밀번호 확인">
			</form>		
		</div>
		<div class="content-mypagechk-right"></div>
	</div>
	<div class="footer">
		<%@ include file="../include/footer.jspf"%>
	</div>
</body>
</html>
    
 