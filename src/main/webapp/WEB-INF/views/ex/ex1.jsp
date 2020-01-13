<%@page import="org.springframework.web.context.request.RequestAttributes"%>
<%@page import="org.apache.ibatis.ognl.SetPropertyAccessor"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width,initial-scale=1" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/bootstrap.css?version-1.3.4">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/bootstrap.min.css?version-1.3.5">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/bootstrap-reboot.css?version-1.3.6">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/bootstrap-reboot.min.css?version-1.3.7">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/agency_2.css?version-1.3.11">


<style>
@FONT-FACE {
	font-family: 'Dohyun';
	src: url(resources/static/font/Dohyun.ttf)
}

.hover1:hover {
	background: #cccccc; color: #0099ff; border: solid 1px #993366
}

img[usemap] {
 	border: none;
 	height: auto;
  	max-width: 100%;
  	width: auto;
}
</style>
<script type="text/javascript">
	var num10;
	var hidden;
	
	function change() {
		hidden = !hidden;
		
		if (hidden) {
			document.getElementById('front').style.display = 'none';
			document.getElementById('behind').style.display = 'inline';
		} else {
			document.getElementById('behind').style.display = 'none';
			document.getElementById('front').style.display = 'inline';
	}}
	function numInsert(num1){
		num10 = num1;
	}
</script>

</head>

<body class="wrapper-ex" style="background-color: #111111;">
	<div class="header-ex">
		<%@ include file="../include/header.jspf"%>
	</div>
	<div class="content-ex">
		<div class="content-ex-top">
			<h1 class="h1-locker" style="font-family: dohyun;"> 운동법 페이지</h1>
			<hr class="hr-locker" align="left" >
		</div>
		<div class="content-ex-left">
			<%@ include file="../include/exSidemenu.jsp"%>
		</div>
		<div class="content-ex-middle">
			<div align="center" style="position: relative;">
					<button type="button" class="btn btn-primary" onClick="change();">전환</button>
					<div width="160px" height="500px" align="center"
						style="position: relative;">
						<div class="wrap" id="front">
							<img src="resources/static/img/ex앞모습1.png" style="width: 400; height: 600;"
								usemap="#front-image" alt="앞모습">
							<map name="front-image" id="map">
								<area shape="circle" alt="이두" coords="93,162,23" 
								data-toggle="modal" data-target="#part1" style="position: fixed; cursor:pointer">
								
								<area shape="circle" alt="삼두" coords="251,126,27"
								data-toggle="modal" data-target="#part2" style="position: fixed; cursor:pointer">
								
								<area shape="circle" alt="가슴" coords="169,129,43"
								data-toggle="modal" data-target="#part3" style="position: fixed; cursor:pointer">
								
								<area shape="circle" alt="어깨" coords="218,83,23"
								data-toggle="modal" data-target="#part4" style="position: fixed; cursor:pointer">
								
								<area shape="circle" alt="어깨" coords="107,124,22"
								data-toggle="modal" data-target="#part4" style="position: fixed; cursor:pointer">
								
								<area shape="circle" alt="복근" coords="182,200,33"
								data-toggle="modal" data-target="#part5" style="position: fixed; cursor:pointer">
								
								<area shape="rectangle" alt="하체(전면)" coords="119,244,289,394" data-toggle="modal"
								data-target="#part6" style="position: fixed; cursor:pointer">
							</map>
						</div>
						<div class="wrap" id="behind" style="display: none;">
			
							<img src="resources/static/img/ex뒷모습1.png" style="width: 400; height: 600;"
								usemap="#behind-image" alt="뒷모습">
							<map name="behind-image" id="map">
								<area shape="circle" alt="등" coords="134,167,60" data-toggle="modal"
								data-target="#part7" style="position: fixed; cursor:pointer">
								<area shape="circle" alt="힙" coords="100,264,30" data-toggle="modal"
								data-target="#part8" style="position: fixed; cursor:pointer">
								<area shape="circle" alt="하체(후면)" coords="151,329,50" data-toggle="modal"
								data-target="#part9" style="position: fixed; cursor:pointer">
								
							</map>
						</div>
					</div>
				</div>
				<br><br><br><br><br><br><br>			
			
		</div>
		<div class="content-userList-right"></div>
	</div>
	<div class="footer-userList">
		<%@ include file="../include/footer.jspf"%>
	</div>
		<%@ include file="exBoardList.jsp"%>
		<%@ include file="exBoardContent.jsp"%>
		<%@ include file="exBoardSave.jsp"%>
		
	
</body>
</html>  



	