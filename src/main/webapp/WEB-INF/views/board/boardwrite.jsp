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
	<script>
		function content_upno(){
			if(confirm("지금까지 작성한 것은 전부 사라지게 됩니다. 정말로 취소하시겠습니까?") == true){
				location.href="board";
			} else {
				return false;
			}	
		}
	</script>
</head>

<body class="wrapper-trainerList" style="background-color: #111111;">
	<div class="header-trainerList">
		<%@ include file="../include/header.jspf"%>
	</div>
	<div class="content-boardwrite">
		<div class="content-trainerList-top">
			<h1 class="h1-locker" style="font-family: dohyun;"> 글쓰기</h1>
			<hr class="hr-locker" align="left" >
		</div>
		<div class="content-trainerList-left"></div>
		<div class="content-trainerList-middle">
			<div>
		<form action = "boardcontent_upok" method = "post">
		<div style = "font-family: dohyun; color: white; margin-right: 20%;">아이디</div>
		<input class = "gray_textbox" type = "text" name = "name" style = "width: 200px;" value="${sessionScope.user_id}" readonly="readonly">
				
		<div style = "font-family: dohyun; color: white; margin-right: 21%;">제목</div>
		<input class = "gray_textbox" type = "text" name = "title" style="width:100%;">
		
		<div style = "font-family: dohyun; color: white;">비밀글 여부<br>
			<input type = radio name = "secret" value="1">&nbsp;사용&nbsp;&nbsp;&nbsp;
			<input type = radio name = "secret" value="0" checked = "checked">&nbsp;사용 안함
		</div>
		<br>
				
		<div style = "font-family: dohyun; color: white; margin-right: 21%;">내용</div>
		<textarea class = "gray_textbox" name = "content" cols = "22" rows = "10" style = "width:100%; height: 4%;"></textarea><br>
		
			<button class = "orange_btn" 
				type = "button" id = "boardcontentup" style = "width:74px;" onclick = "form.submit()">확인
			</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		
			<button class = "orange_btn" 
				type = "button" id = "boardcontent_upno" style = "width:74px;" onclick = "content_upno()">취소
			</button>
		</form>
	</div>
			
		</div>
		<div class="content-trainerList-right"></div>
	</div>
	<div class="footer-boardwrite">
		<%@ include file="../include/footer.jspf"%>
	</div>
</body>
</html>    

