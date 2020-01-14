<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

 
<div class="content">
		<div id="mycarousel" class="carousel slide">
			<ol class="carousel-indicators">
				<li data-target="#mycarousel" data-slide-to="0"
					class="active"></li>
				<li data-target="#mycarousel" data-slide-to="1"></li>
				<li data-target="#mycarousel" data-slide-to="2"></li>
				<li data-target="#mycarousel" data-slide-to="3"></li>
			</ol>
			<div class="carousel-inner">
				<div class="carousel-item active" height="auto">
			<c:forEach items="${exSlist}" var="ESdto">
			<c:if test="${ESdto.exSPart == 1 }">
			
				<iframe id="c-video" class="d-block w-100" src="${ESdto.exSLink }" height="600px"
										allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" alt="test1" allowfullscreen ></iframe>
						
				</c:if>
			</c:forEach>
				</div>
				<div class="carousel-item">
					<c:forEach items="${exSlist}" var="ESdto">
			<c:if test="${ESdto.exSPart == 2 }">
			
				<iframe id="c-video" class="d-block w-100" src="${ESdto.exSLink }" height="600px"
										allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" alt="test2" allowfullscreen ></iframe>
						
				</c:if>
			</c:forEach>
				</div>
				<div class="carousel-item">
					<c:forEach items="${exSlist}" var="ESdto">
			<c:if test="${ESdto.exSPart == 3 }">
			
				<iframe id="c-video" class="d-block w-100" src="${ESdto.exSLink }" height="600px"
										allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" alt="test3" allowfullscreen ></iframe>
						
				</c:if>
			</c:forEach>
				</div>
				<div class="carousel-item">
					<c:forEach items="${exSlist}" var="ESdto">
			<c:if test="${ESdto.exSPart == 4 }">
			
				<iframe id="c-video" class="d-block w-100" src="${ESdto.exSLink }" height="600px"
										allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" alt="test4" allowfullscreen ></iframe>
						
				</c:if>
			</c:forEach>
					
				</div>
			</div>
			<a class="carousel-control-prev" href="#mycarousel"
				role="button" data-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#mycarousel"
				role="button" data-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
			</a>
</div>
<button type="button" class="btn btn-default" data-toggle="modal" data-target="#exSSave"
									style="color: white;"  >영상 등록 </button>
<button type="button" class="btn btn-default" data-toggle="modal" data-target="#exSmodify"
									style="color: white;" >영상 바꾸기 </button>
	</div>
</body>
</html>