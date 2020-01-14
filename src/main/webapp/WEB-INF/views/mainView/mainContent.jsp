<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div id="mycarousel" class="carousel slide"
			data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#mycarousel" data-slide-to="0"
					class="active"></li>
				<li data-target="#mycarousel" data-slide-to="1"></li>
				<li data-target="#mycarousel" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="resources/static/img/메인사진1.png" class="d-block w-100" alt="test1">
					<button type="button" class="btn btn-primary content-btn" onclick="return location.href='ex'">더보기</button>
				</div>
				<div class="carousel-item">
					<img src="resources/static/img/메인사진2.png" class="d-block w-100" alt="test2">
					<button type="button" class="btn btn-primary content-btn2" onclick="return location.href='ticketView'">클릭</button>
					
				</div>
				<div class="carousel-item">
					<img src="resources/static/img/메인사진3.png" class="d-block w-100" alt="test3">
					<button type="button" class="btn btn-primary content-btn" onclick="return location.href='board'">클릭</button>
					
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
