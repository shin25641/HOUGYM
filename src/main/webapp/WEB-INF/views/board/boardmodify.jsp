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
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/agency_2.css?version-1.3.11">

</head>    
    
<body class="wrapper-trainerList" style="background-color: black;">
	<div class="header-trainerList">
		<%@ include file="../include/header.jspf"%>
	</div>
	<div class="content-trainerList">
		<div class="content-trainerList-top">
			<h1 class="h1-locker" style="font-family: dohyun;"> 게시글 수정</h1>
			<hr class="hr-locker" align="left" >
		</div>
		<div class="content-trainerList-left"></div>
		<div class="content-trainerList-middle">
		<form action = "boardmodifychk" method = "post">
	<div align = "center" style = "margin-top: 5%;">
		<div style = "font-family: dohyun; color: white; margin-right: 20%;">아이디</div>
		<input type="text" value="${param.num}" name="num" hidden="true">
		<input class = "gray_textbox" type = "text" name = "name" readonly = "readonly" value="${param.name}"
				style = "width: 25%;">
				
		<div style = "font-family: dohyun; color: white; margin-right: 21%;">제목</div>
		<input class = "gray_textbox" type = "text" name = "title" value="${param.title}" 
				style = "width: 25%;">
				
		<div style = "font-family: dohyun; color: white; margin-right: 21%;">내용</div>
		<textarea class = "gray_textbox" name = "content"  cols = "22" rows = "10" style = "width: 25%; height: 4%;">${param.content}</textarea><br>
	
		<button class = "orange_btn" 
			type = "button" id = "boardmodifyok" style = "width:7%;" onclick = "form.submit()">수정 
		</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

		<button class = "orange_btn" 
			type = "button" id = "boardmodifyno" style = "width:7%;" onclick = "location.href='board'">취소
		</button>
	</div>
	</form>
		</div>
		<div class="content-trainerList-right"></div>
	</div>
	<div class="footer">
		<%@ include file="../include/footer.jspf"%>
	</div>
</body>
</html>

