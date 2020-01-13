<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 이두 -->    
<div class="modal fade" id="part1" tabindex="-1"
		role="dialog" data-backdrop="static"
		style="background: none; color: #ff7f00; overflow-y:scroll;" >
		<div class="modal-dialog" role="document">
			<div class="modal-content"
				style="background-color: #000000; background-color: rgba(0, 0, 0, 0.2); color: white;">
				<div class="modal-header">
					<h4 class="modal-title" id="myModalLabel">이두</h4>
				</div>
				<div class="modal-body" style="background-color: white;">
					<table class="table table-striped">
						  <thead>
						    <tr>
						      <th scope="col">작성자</th>
						      <th scope="col">제목</th>
						      <th scope="col">작성일</th>
						    </tr>
						  </thead>
						  <tbody>
						  <c:forEach items="${exList}" var="Edto">
						  <<c:if test="${Edto.part == 1 }">
						    <tr>
						      <td>${Edto.name}</td>
						      <td><a data-target="#exboard_content" data-toggle="modal" 
									data-content1="${Edto.name }"
									data-content2="${Edto.title }"
									data-content3="${Edto.content}"
									data-content4="${Edto.link}"
									data-content5="${Edto.num}"
									data-content6="part1"
									data-content8="1"
									 onclick='iframe("${Edto.link}")'
									 data-dismiss="modal"
									 style="cursor:pointer" >
									${Edto.title}</a>
							  </td>
						      <td>${Edto.savedate }</td>
						    </tr>
						    </c:if>
						  </c:forEach>
						  </tbody>
						</table>
				</div>
					<div class="modal-footer">
					<c:if test='${sessionScope.Admin eq 1 or sessionScope.Admin eq 2}'>
								<button type="button" class="btn btn-default" data-toggle="modal" data-target="#newText" data-content7="part1" data-content8="1"
									style="color: white;"  data-dismiss="modal">글작성 </button>
							</c:if>
						<button type="button" class="btn btn-default" data-dismiss="modal"
							style="color: white;">닫기</button>
					</div>
			</div>
		</div>
	</div>

<!-- 삼두 -->
<div class="modal fade" id="part2" tabindex="-1"
		role="dialog" data-backdrop="static"
		style="background: none; color: #ff7f00; overflow-y:scroll;" >
		<div class="modal-dialog" role="document">
			<div class="modal-content"
				style="background-color: #000000; background-color: rgba(0, 0, 0, 0.2); color: white;">
				<div class="modal-header">
					<h4 class="modal-title" id="myModalLabel">삼두</h4>
				</div>
				<div class="modal-body" style="background-color: white;">
					<table class="table table-striped">
						  <thead>
						    <tr>
						      <th scope="col">작성자</th>
						      <th scope="col">제목</th>
						      <th scope="col">작성일</th>
						    </tr>
						  </thead>
						  <tbody>
						  <c:forEach items="${exList}" var="Edto">
						  <c:if test="${Edto.part == 2 }">
						    <tr>
						      <td>${Edto.name}</td>
						      <td><a data-target="#exboard_content" data-toggle="modal" 
									data-content1="${Edto.name }"
									data-content2="${Edto.title }"
									data-content3="${Edto.content}"
									data-content4="${Edto.link}"
									data-content5="${Edto.num}"
									data-content6="part2"
									data-content8="2"
									 onclick='iframe("${Edto.link}")'
									 data-dismiss="modal"
									 style="cursor:pointer" >
									${Edto.title}</a>
							  </td>
						      <td>${Edto.savedate }</td>
						    </tr>
						    </c:if>
						  </c:forEach>
						  </tbody>
						</table>
				</div>
					<div class="modal-footer">
					<c:if test='${sessionScope.Admin eq 1 or sessionScope.Admin eq 2}'>
								<button type="button" class="btn btn-default" data-toggle="modal" data-target="#newText" data-content7="part2" data-content8="2"
									style="color: white;"  data-dismiss="modal">글작성 </button>
							</c:if>
						<button type="button" class="btn btn-default" data-dismiss="modal"
							style="color: white;">닫기</button>
					</div>
			</div>
		</div>
	</div>
	<!-- 가슴 -->
<div class="modal fade" id="part3" tabindex="-1"
		role="dialog" data-backdrop="static"
		style="background: none; color: #ff7f00; overflow-y:scroll;" >
		<div class="modal-dialog" role="document">
			<div class="modal-content"
				style="background-color: #000000; background-color: rgba(0, 0, 0, 0.2); color: white;">
				<div class="modal-header">
					<h4 class="modal-title" id="myModalLabel">가슴</h4>
				</div>
				<div class="modal-body" style="background-color: white;">
					<table class="table table-striped">
						  <thead>
						    <tr>
						      <th scope="col">작성자</th>
						      <th scope="col">제목</th>
						      <th scope="col">작성일</th>
						    </tr>
						  </thead>
						  <tbody>
						  <c:forEach items="${exList}" var="Edto">
						  <c:if test="${Edto.part == 3 }">
						    <tr>
						      <td>${Edto.name}</td>
						      <td><a data-target="#exboard_content" data-toggle="modal" 
									data-content1="${Edto.name }"
									data-content2="${Edto.title }"
									data-content3="${Edto.content}"
									data-content4="${Edto.link}"
									data-content5="${Edto.num}"
									data-content6="part3"
									data-content8="3"
									 onclick='iframe("${Edto.link}")'
									 data-dismiss="modal"
									 style="cursor:pointer" >
									${Edto.title}</a>
							  </td>
						      <td>${Edto.savedate }</td>
						    </tr>
						    </c:if>
						  </c:forEach>
						  </tbody>
						</table>
				</div>
					<div class="modal-footer">
					<c:if test='${sessionScope.Admin eq 1 or sessionScope.Admin eq 2}'>
								<button type="button" class="btn btn-default" data-toggle="modal" data-target="#newText" data-content7="part3" data-content8="3"
									style="color: white;"  data-dismiss="modal">글작성 </button>
							</c:if>
						<button type="button" class="btn btn-default" data-dismiss="modal"
							style="color: white;">닫기</button>
					</div>
			</div>
		</div>
	</div>
		
	<!-- 어깨 -->
	<div class="modal fade" id="part4" tabindex="-1"
		role="dialog" data-backdrop="static"
		style="background: none; color: #ff7f00; overflow-y:scroll;" >
		<div class="modal-dialog" role="document">
			<div class="modal-content"
				style="background-color: #000000; background-color: rgba(0, 0, 0, 0.2); color: white;">
				<div class="modal-header">
					<h4 class="modal-title" id="myModalLabel">어깨</h4>
				</div>
				<div class="modal-body" style="background-color: white;">
					<table class="table table-striped">
						  <thead>
						    <tr>
						      <th scope="col">작성자</th>
						      <th scope="col">제목</th>
						      <th scope="col">작성일</th>
						    </tr>
						  </thead>
						  <tbody>
						  <c:forEach items="${exList}" var="Edto">
						  <c:if test="${Edto.part == 4 }">
						    <tr>
						      <td>${Edto.name}</td>
						      <td><a data-target="#exboard_content" data-toggle="modal" 
									data-content1="${Edto.name }"
									data-content2="${Edto.title }"
									data-content3="${Edto.content}"
									data-content4="${Edto.link}"
									data-content5="${Edto.num}"
									data-content6="part4"
									data-content8="4"
									 onclick='iframe("${Edto.link}")'
									 data-dismiss="modal"
									 style="cursor:pointer" >
									${Edto.title}</a>
							  </td>
						      <td>${Edto.savedate }</td>
						    </tr>
						    </c:if>
						  </c:forEach>
						  </tbody>
						</table>
				</div>
					<div class="modal-footer">
					<c:if test='${sessionScope.Admin eq 1 or sessionScope.Admin eq 2}'>
								<button type="button" class="btn btn-default" data-toggle="modal" data-target="#newText" data-content7="part4" data-content8="4"
									style="color: white;"  data-dismiss="modal">글작성 </button>
							</c:if>
						<button type="button" class="btn btn-default" data-dismiss="modal"
							style="color: white;">닫기</button>
					</div>
			</div>
		</div>
	</div>
	
	<!-- 복근 -->
	<div class="modal fade" id="part5" tabindex="-1"
		role="dialog" data-backdrop="static"
		style="background: none; color: #ff7f00; overflow-y:scroll;" >
		<div class="modal-dialog" role="document">
			<div class="modal-content"
				style="background-color: #000000; background-color: rgba(0, 0, 0, 0.2); color: white;">
				<div class="modal-header">
					<h4 class="modal-title" id="myModalLabel">복근</h4>
				</div>
				<div class="modal-body" style="background-color: white;">
					<table class="table table-striped">
						  <thead>
						    <tr>
						      <th scope="col">작성자</th>
						      <th scope="col">제목</th>
						      <th scope="col">작성일</th>
						    </tr>
						  </thead>
						  <tbody>
						  <c:forEach items="${exList}" var="Edto">
						  <c:if test="${Edto.part == 5 }">
						    <tr>
						      <td>${Edto.name}</td>
						      <td><a data-target="#exboard_content" data-toggle="modal" 
									data-content1="${Edto.name }"
									data-content2="${Edto.title }"
									data-content3="${Edto.content}"
									data-content4="${Edto.link}"
									data-content5="${Edto.num}"
									data-content6="part5"
									data-content8="5"
									 onclick='iframe("${Edto.link}")'
									 data-dismiss="modal"
									 style="cursor:pointer" >
									${Edto.title}</a>
							  </td>
						      <td>${Edto.savedate }</td>
						    </tr>
						    </c:if>
						  </c:forEach>
						  </tbody>
						</table>
				</div>
					<div class="modal-footer">
					<c:if test='${sessionScope.Admin eq 1 or sessionScope.Admin eq 2}'>
								<button type="button" class="btn btn-default" data-toggle="modal" data-target="#newText" data-content7="part5" data-content8="5"
									style="color: white;"  data-dismiss="modal">글작성 </button>
							</c:if>
						<button type="button" class="btn btn-default" data-dismiss="modal"
							style="color: white;">닫기</button>
					</div>
			</div>
		</div>
	</div>
	
	<!-- 하체(전면) -->
	<div class="modal fade" id="part6" tabindex="-1"
		role="dialog" data-backdrop="static"
		style="background: none; color: #ff7f00; overflow-y:scroll;" >
		<div class="modal-dialog" role="document">
			<div class="modal-content"
				style="background-color: #000000; background-color: rgba(0, 0, 0, 0.2); color: white;">
				<div class="modal-header">
					<h4 class="modal-title" id="myModalLabel">하체(전면)</h4>
				</div>
				<div class="modal-body" style="background-color: white;">
					<table class="table table-striped">
						  <thead>
						    <tr>
						      <th scope="col">작성자</th>
						      <th scope="col">제목</th>
						      <th scope="col">작성일</th>
						    </tr>
						  </thead>
						  <tbody>
						  <c:forEach items="${exList}" var="Edto">
						  <c:if test="${Edto.part == 6 }">
						    <tr>
						      <td>${Edto.name}</td>
						      <td><a data-target="#exboard_content" data-toggle="modal" 
									data-content1="${Edto.name }"
									data-content2="${Edto.title }"
									data-content3="${Edto.content}"
									data-content4="${Edto.link}"
									data-content5="${Edto.num}"
									data-content6="part6"
									data-content8="6"
									 onclick='iframe("${Edto.link}")'
									 data-dismiss="modal"
									 style="cursor:pointer" >
									${Edto.title}</a>
							  </td>
						      <td>${Edto.savedate }</td>
						    </tr>
						    </c:if>
						  </c:forEach>
						  </tbody>
						</table>
				</div>
					<div class="modal-footer">
					<c:if test='${sessionScope.Admin eq 1 or sessionScope.Admin eq 2}'>
								<button type="button" class="btn btn-default" data-toggle="modal" data-target="#newText" data-content7="part6" data-content8="6"
									style="color: white;"  data-dismiss="modal">글작성 </button>
							</c:if>
						<button type="button" class="btn btn-default" data-dismiss="modal"
							style="color: white;">닫기</button>
					</div>
			</div>
		</div>
	</div>

<!-- 등 -->
	<div class="modal fade" id="part7" tabindex="-1"
		role="dialog" data-backdrop="static"
		style="background: none; color: #ff7f00; overflow-y:scroll;" >
		<div class="modal-dialog" role="document">
			<div class="modal-content"
				style="background-color: #000000; background-color: rgba(0, 0, 0, 0.2); color: white;">
				<div class="modal-header">
					<h4 class="modal-title" id="myModalLabel">등</h4>
				</div>
				<div class="modal-body" style="background-color: white;">
					<table class="table table-striped">
						  <thead>
						    <tr>
						      <th scope="col">작성자</th>
						      <th scope="col">제목</th>
						      <th scope="col">작성일</th>
						    </tr>
						  </thead>
						  <tbody>
						  <c:forEach items="${exList}" var="Edto">
						  <c:if test="${Edto.part == 7 }">
						    <tr>
						      <td>${Edto.name}</td>
						      <td><a data-target="#exboard_content" data-toggle="modal" 
									data-content1="${Edto.name }"
									data-content2="${Edto.title }"
									data-content3="${Edto.content}"
									data-content4="${Edto.link}"
									data-content5="${Edto.num}"
									data-content6="part7"
									data-content8="7"
									 onclick='iframe("${Edto.link}")'
									 data-dismiss="modal"
									 style="cursor:pointer" >
									${Edto.title}</a>
							  </td>
						      <td>${Edto.savedate }</td>
						    </tr>
						    </c:if>
						  </c:forEach>
						  </tbody>
						</table>
				</div>
					<div class="modal-footer">
					<c:if test='${sessionScope.Admin eq 1 or sessionScope.Admin eq 2}'>
								<button type="button" class="btn btn-default" data-toggle="modal" data-target="#newText" data-content7="part7" data-content8="7"
									style="color: white;"  data-dismiss="modal">글작성 </button>
							</c:if>
						<button type="button" class="btn btn-default" data-dismiss="modal"
							style="color: white;">닫기</button>
					</div>
			</div>
		</div>
	</div>

<!-- 힙 -->
	<div class="modal fade" id="part8" tabindex="-1"
		role="dialog" data-backdrop="static"
		style="background: none; color: #ff7f00; overflow-y:scroll;" >
		<div class="modal-dialog" role="document">
			<div class="modal-content"
				style="background-color: #000000; background-color: rgba(0, 0, 0, 0.2); color: white;">
				<div class="modal-header">
					<h4 class="modal-title" id="myModalLabel">힙</h4>
				</div>
				<div class="modal-body" style="background-color: white;">
					<table class="table table-striped">
						  <thead>
						    <tr>
						      <th scope="col">작성자</th>
						      <th scope="col">제목</th>
						      <th scope="col">작성일</th>
						    </tr>
						  </thead>
						  <tbody>
						  <c:forEach items="${exList}" var="Edto">
						  <c:if test="${Edto.part == 8 }">
						    <tr>
						      <td>${Edto.name}</td>
						      <td><a data-target="#exboard_content" data-toggle="modal" 
									data-content1="${Edto.name }"
									data-content2="${Edto.title }"
									data-content3="${Edto.content}"
									data-content4="${Edto.link}"
									data-content5="${Edto.num}"
									data-content6="part8"
									data-content8="8"
									 onclick='iframe("${Edto.link}")'
									 data-dismiss="modal"
									 style="cursor:pointer" >
									${Edto.title}</a>
							  </td>
						      <td>${Edto.savedate }</td>
						    </tr>
						    </c:if>
						  </c:forEach>
						  </tbody>
						</table>
				</div>
					<div class="modal-footer">
					<c:if test='${sessionScope.Admin eq 1 or sessionScope.Admin eq 2}'>
								<button type="button" class="btn btn-default" data-toggle="modal" data-target="#newText" data-content7="part8" data-content8="8"
									style="color: white;"  data-dismiss="modal">글작성 </button>
							</c:if>
						<button type="button" class="btn btn-default" data-dismiss="modal"
							style="color: white;">닫기</button>
					</div>
			</div>
		</div>
	</div>

<!-- 하체(후면) -->
	<div class="modal fade" id="part9" tabindex="-1"
		role="dialog" data-backdrop="static"
		style="background: none; color: #ff7f00; overflow-y:scroll;" >
		<div class="modal-dialog" role="document">
			<div class="modal-content"
				style="background-color: #000000; background-color: rgba(0, 0, 0, 0.2); color: white;">
				<div class="modal-header">
					<h4 class="modal-title" id="myModalLabel">하체(후면)</h4>
				</div>
				<div class="modal-body" style="background-color: white;">
					<table class="table table-striped">
						  <thead>
						    <tr>
						      <th scope="col">작성자</th>
						      <th scope="col">제목</th>
						      <th scope="col">작성일</th>
						    </tr>
						  </thead>
						  <tbody>
						  <c:forEach items="${exList}" var="Edto">
						  <c:if test="${Edto.part == 9 }">
						    <tr>
						      <td>${Edto.name}</td>
						      <td><a data-target="#exboard_content" data-toggle="modal" 
									data-content1="${Edto.name }"
									data-content2="${Edto.title }"
									data-content3="${Edto.content}"
									data-content4="${Edto.link}"
									data-content5="${Edto.num}"
									data-content6="part9"
									data-content8="9"
									 onclick='iframe("${Edto.link}")'
									 data-dismiss="modal"
									 style="cursor:pointer" >
									${Edto.title}</a>
							  </td>
						      <td>${Edto.savedate }</td>
						    </tr>
						    </c:if>
						  </c:forEach>
						  </tbody>
						</table>
				</div>
					<div class="modal-footer">
					<c:if test='${sessionScope.Admin eq 1 or sessionScope.Admin eq 2}'>
								<button type="button" class="btn btn-default" data-toggle="modal" data-target="#newText" data-content7="part9" data-content8="9"
									style="color: white;"  data-dismiss="modal">글작성 </button>
							</c:if>
						<button type="button" class="btn btn-default" data-dismiss="modal"
							style="color: white;">닫기</button>
					</div>
			</div>
		</div>
	</div>	
	
<script type="text/javascript">
$(document).ready(function () { $('head').append('<style type="text/css">.modal .modal-body {max-height: ' + ($('body').height() * .5) + 'px;overflow-y: auto;}.modal-open .modal{overflow-y: hidden !important;}</style>'); });

</script>
