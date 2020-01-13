<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width,initial-scale=1" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/bootstrap.css?version-1.3.5">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/bootstrap.min.css?version-1.3.6">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/bootstrap-reboot.css?version-1.3.7">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/bootstrap-reboot.min.css?version-1.3.8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/agency_2.css?version-1.3.12">
<style type="text/css">
textarea.autosize { min-height: 50px; }
</style>
</head>

<body class="wrapper-boardView" onload = "commentlist()" style="background-color: #111111;">
	<div class="header-boardView">
		<%@ include file="../include/header.jspf"%>
	</div>
	<div class="content-boardView">
		<div class="content-boardView-top">
			<h1 class="h1-locker" style="font-family: dohyun;"> 게시글</h1>
			<hr class="hr-locker" align="left" >
		</div>
		<div class="content-boardView-left"></div>
		<div class="content-boardView-middle">
			<div class="content-boardView-middle-item-1">
				<form action="boardmodify" method="post">
					<span style="font-family: dohyun; color: white; margin-right: 20%;">아이디</span><br>
					<input type="text" value="${boardview.num}" name="num" hidden="true">
					<input class="gray_textbox" type="text" name="name"
						readonly="readonly" value="${boardview.name}" style="width: 200px;"><br>
		
					<span style="font-family: dohyun; color: white; margin-right: 21%;">제목</span><br>
					<input class="gray_textbox" type="text" name="title"
						value="${boardview.title}" readonly="readonly" style="width: 100%;">
		
					<span style="font-family: dohyun; color: white; margin-right: 21%;">내용</span>
					<textarea class="gray_textbox" readonly="readonly" name="content"
						cols="22" rows="10" style="width: 100%; height: 4%;">${boardview.content}</textarea>
					<br>
					<c:if test="${sessionScope.user_id eq boardview.name}">
						<button class="orange_btn" type="button" id="boardcontentok"
							style="width: 100px;" onclick="form.submit()">수정</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		
					<button class="orange_btn" type="button" id="boardcontentdel"
							style="width: 100px;" onclick="contentdel();">삭제</button>
					</c:if>
				</form>
			</div>
			
			<div class="content-boardView-middle-item-2">
				<hr style="color: white; width: 100%; border: solid;">
			</div>
		
			<div class="content-boardView-middle-item-3">
				<form method="post" id="boardcomment" action="commentregister">
					<div class="content-boardView-commentadd">
						<div style="margin-top: 32px; margin-right: 4px;">
							<select name="commentsecret">
								<option value="1">비밀댓글</option>
								<option value="0">공개댓글</option>
							</select>
						</div>
						<div>
							<input type="text" class="gray_textbox" style="width: 100%; margin-top: 27px;"id="commentId"name="commentId" readonly="readonly" value="${sessionScope.user_id}">
						</div>
						<div>
							<textarea rows="3" cols="30" name="commentation"
										id="commentation" class="gray_textbox"
										style="width: 100%; height: 85%;" placeholder="댓글을 입력하세요"></textarea>
						</div>
						<div>
							<button type="button" class="orange_btn" id="comment_btn"
									onclick="commentadd()" style="width: 100%; height: 78%;">댓글 등록</button>
							<input type="text" name="num" id="num" hidden="true"
									value="${boardview.num}">
						</div>
					</div>
				</form>
				<div style="width:100%; height: 40%; color:white; text-align: center; margin-top: 20px; margin-bottom: 20px; font-size:4rem;">COMMENT</div>
			</div>
			
			<div id="commentList" class = "content-boardView-middle-item-4 "></div>
			
		</div>
		<div class="content-boardView-right"></div>
	</div>
	<div class="footer-boardView ">
		<%@ include file="../include/footer.jspf"%>
	</div>
	<script type="text/javascript">
	function resize(obj) {
		obj.style.height = "1px";
		obj.style.height = (1+obj.scrollHeight)+"px";
	}
	</script>
	<script src="http://code.jquery.com/jquery-1.11.1.min.js" type="text/javascript"></script>
	<script>
	function contentdel(Cnum) {
		$.ajax({
			url:'commentdel',
			type:'POST',
			data:{'delnum':Cnum},
			success : function(data){
				if(data == 1){
					commentlist();
				}
				else{
					commentlist();
				}
				
			},
			error : function(){alert('fail')}
		});
	}
	
	
	function replaceAll(str, searchStr, replaceStr) {
		return str.split(searchStr).join(replaceStr);
		}

	function modifychange(chbtn, commentnum){
		var Ccomment=$(chbtn).parent().html();
		//var con = Ccomment.replace("value", "\r\n");
		var con=replaceAll(Ccomment,"<br>","\r\n");
		var commentId = "<%=(String)session.getAttribute("user_id")%>";
		var num = <%=request.getParameter("num")%>
		var html = "";
		html += "<form id='modifycommentform' name='modifycommentform'><input type='hidden' id='MocommentNum' name='MocommentNum' readonly='readonly' value='"+commentnum+"'>";
		html += "<input type='hidden' id='MocommentId' class='gray_textbox' name='MocommentId' readonly='readonly' value='"+commentId+"'>";
		html += "<input type='text' id='Mocommentation' name='Mocommentation' class='gray_textbox' value=''>";
		html += "<button class='orange_btn' type='button' style='width:80px; margin-right: 0.5%;'" +
				"id='suc_btn' onclick='suc_btn()'>확인</button>";
		html += "<button class='orange_btn' type='button' style='width:80px;'" +
				"id='no_btn' onclick='commentlist()'>취소</button>";
		html += "</form>";
		$(chbtn).parent().html(html);
		
		$('#suc_btn').click(function(){
			$.ajax({
				type:'POST',
				url:'commentmodifychk',
				data:$("#modifycommentform").serialize(),
				success:function(data){
					commentlist();
				},
				error:function(data){alert('fail')},
			})
		});
	}
	
	function commentdel(Cnum){
		var delchk = confirm('댓글을 삭제 하시겠습니까?');
		if(delchk == true){
			contentdel(Cnum);
		} else{
			commentlist();
		}
		
	}
	
	function commentadd(code){
		var comment = document.getElementById("commentation").value

		if(comment == ""){
			alert('내용을 입력해 주세요.');
		}else {
		$.ajax({
			url:'commentregister',
			type:'POST',
			data:$("#boardcomment").serialize(),
			success : function(data){
				if(data == 1){
					commentlist();
				}
			},
			error : function(){alert('로그인 후 이용해주세요.');location.href="login"}
		});
		}
	}

	function commentlist(){
		var user = "<%=(String)session.getAttribute("user_id")%>";
		var num = <%=request.getParameter("num")%>
		var admin = <%=session.getAttribute("Admin")%>
		var secret = <%=request.getParameter("commentsecret")%>
		
		$.ajax({
			type:'POST',
			url:'commentlist',
			data:{'num':num},
			
			success:function(data){
				var html = "";
				var cCnt = data.length;
				if(data.length > 0){
					html += "<div class='content-boardView-comment'>";
					for(i = 0; i < data.length; i++){
						if(data[i].commentsecret == 1){
							if(admin > 0 || data[i].commentId == user){
								html += "<input type='hidden' id='commentNum' name='commentNum' readonly='readonly' value='"+data[i].commentnum+"'>";
								html += "<div class='content-boardView-comment-item-1'><input type='text' id='LicommentId' style='width: 170px;' class='comment-textbox' name='commentId' readonly='readonly' value='"+data[i].commentId+"'></div>";
								html += "<div class='content-boardView-comment-item-2'><textarea rows='3' cols='30' id='Licommentation' style='width:100%; background-color: #d2d2d2fc;' name='commentation' readonly='readonly' class='comment_textbox autosize' onkeydown='resize(this)' onkeyup='resize(this)'>"+'[비밀댓글]'+ data[i].commentation + "</textarea></div>";
								html += "<div class='content-boardView-comment-item-3'><span style='color:white; margin-left: 5px; margin-right: 5px;'>"+data[i].regdate+"</span>";
								html += "<button class='orange_btn' type='button' style='width:80px; margin-left: 10px; margin-right: 0.5%;'" + "id='commentmodifyok' onclick='modifychange(this, "+data[i].commentnum+");'>수정</button>";
		        	        	html += "<button class='orange_btn' type='button' style='width:80px;'" + "id='commentdel' onclick='commentdel("+data[i].commentnum+");'>삭제</button></div>";
								html += "<hr class='content-boardView-comment-item-4' style='color: white; width: 100%; border: solid;''>"
							}else{
									html += "<tr>"
									html += "<input type='hidden' id='commentNum' name='commentNum' readonly='readonly' value='"+data[i].commentnum+"'>";
									html += "<td scope='row'><input type='text' id='LicommentId' style='width: 170px; background-color: #d2d2d2fc;' class='white_textbox' name='commentId' readonly='readonly' value='"+data[i].commentId+"'></td>";
									html += "<td><input type='text' id='Licommentation' style='width:800px; background-color: #d2d2d2fc;' name='commentation' class='white_textbox' readonly='readonly' value='[비밀댓글입니다.]'></td>";
									html += "<td><span style='color:white; margin-left: 5px; margin-right: 5px;'>"+data[i].regdate+"</span></td>";
									html += "</tr>"
							}
						}else{
								html += "<tr>"
								html += "<input type='hidden' id='commentNum' name='commentNum' readonly='readonly' value='"+data[i].commentnum+"'>";
								html += "<td scope='row'><input type='text' id='LicommentId' style='width: 170px; background-color: #d2d2d2fc;' class='white_textbox' name='commentId' readonly='readonly' value='"+data[i].commentId+"'></td>";
								html += "<td><input type='text' id='Licommentation' style='width:800px; background-color: #d2d2d2fc;'name='commentation' class='white_textbox' readonly='readonly' value='"+data[i].commentation+"'></td>";
								html += "<td><span style='color:white; margin-left: 5px; margin-right: 5px;'>"+data[i].regdate+"</span></td>";
								if(data[i].commentId != user){
								html += "<td><button class='orange_btn' type='button' style='width:80px; margin-right: 0.5%;'" +
	        					"id='commentmodifyok' onclick='modifychange(this, "+data[i].commentnum+");'>수정</button>";
	        					html += "<button class='orange_btn' type='button' style='width:80px;'" +
	        					"id='commentdel' onclick='commentdel("+data[i].commentnum+");'>삭제</button></td>";
								}
								
								if(data[i].commentId == user){									
								html += "<td><button class='orange_btn' type='button' style='width:80px; margin-right: 0.5%;'" +
        	        					"id='commentmodifyok' onclick='modifychange(this, "+data[i].commentnum+");'>수정</button>";
        	        			html += "<button class='orange_btn' type='button' style='width:80px;'" +
        	        					"id='commentdel' onclick='commentdel("+data[i].commentnum+");'>삭제</button></td>";
								}
								html += "</tr>"
							}
							}
					html += "</div>"
				}else{
					html += "<div>";
			        html += "<div><table class='table'><h6><strong>등록된 댓글이 없습니다.</strong></h6>";
			        html += "</table></div>";
			        html += "</div>";
				}
				
				$("#commentList").html(html);
				},
				error:function(data){alert('fail')}
			});
		}
	
</script>

</body>
</html>    	
