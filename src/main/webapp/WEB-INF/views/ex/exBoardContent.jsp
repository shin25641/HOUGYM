<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


	<!-- 글 보기 모달 -->
	<div class="modal fade" id="exboard_content" tabindex="-1"
		role="dialog" data-backdrop="static"
		style="background: none; color: #ff7f00; overflow-y:scroll;" >
		<div class="modal-dialog" role="document">
			<div class="modal-content"
				style="background-color: #000000; background-color: rgba(0, 0, 0, 0.2); color: black;">
				<div class="modal-header">
		<iframe id="c-video" width="100%" height="300px" frameborder="0"
										allow="accelerometer; autoplay; encrypted-media;
 									gyroscope; picture-in-picture"
										allowfullscreen></iframe>
				</div>
					<div class="modal-body">
					<form action="exboard_modify">
						<table border="1" style="background-color: #ffffff;">
							<tr>
								<td colspan="4">
								<textarea class="content4"
										disabled="disabled" hidden="true"></textarea> 
										<c:if test="${sessionScope.Admin eq 1 or sessionScope.Admin eq 2}">
										<textarea class="content4 content-nt"
										name="modify-link"></textarea>
										</c:if>
										</td>
										</tr>
			
							<tr>
								<td width="60" height="20" align="center">작성자</td>
								<td>
								<textarea class="content1 content-nt"
										disabled="disabled"></textarea>
										</td>
								<td width="60" height="20" align="center">제목</td>
								<td width="260">
								<c:choose>
								<c:when test="${sessionScope.Admin eq 1 or sessionScope.Admin eq 2}">
								<textarea class="content2 content-nt"
										name="modify-title"></textarea>
								</c:when>
								<c:otherwise>
								<textarea class="content2 content-nt"
										disabled="disabled"></textarea>
										</c:otherwise></c:choose></td>
							</tr>
							<tr>
								<td height="30" colspan="4" align="center">내용</td>
							</tr>
							<tr>
								<td height="310" colspan="4" align="center">
								<c:choose>
								<c:when test="${sessionScope.Admin eq 1 or sessionScope.Admin eq 2}">
								<textarea class="content3 content-ct" name="modify-content"></textarea>
								</c:when>
								<c:otherwise>
								<textarea class="content3 content-ct" disabled="disabled"></textarea>
								</c:otherwise></c:choose></td>
							</tr>
						
							<tr>
								<td colspan="3">
								<c:if test='${sessionScope.Admin eq 1 or sessionScope.Admin eq 2}'>
								<select name="modify-part" id="saveS"class="conteant8">
									<option value="1">이두</option>
									<option value="2">삼두</option>
									<option value="3">가슴</option>
									<option value="4">어깨</option>
									<option value="5">복근</option>
									<option value="6">하체(전면)</option>
									<option value="7">등</option>
									<option value="8">힙</option>
									<option value="9">하체(후면)</option>
							</select>
							<input class="content5" hidden="true" name="modify-num">
								<button type="submit">수정</button>
								</c:if>
									
									</td></form>
									<td>
									<c:if test='${sessionScope.Admin eq 1 or sessionScope.Admin eq 2}'>
									<form action="exboard_delete">
											<input class="content5" hidden="true" name="num">
											<button type="submit">삭제</button>
										</form></c:if></td>
							</tr>
						</table>
					</div>
					<div class="modal-footer">
							<button type="button" class="btn btn-default" onclick="back();" data-dismiss="modal" style="color: white;" >뒤로가기</button>
						<button type="button" class="btn btn-default" data-dismiss="modal"
							style="color: white;">닫기</button>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
	var recipient4;
	var part0;
	var recipient8;
$('#exboard_content').on('show.bs.modal', function (event) {
    var a = $(event.relatedTarget)
    var recipient1 = a.data('content1')
    var recipient2 = a.data('content2')
    var recipient3 = a.data('content3')
    recipient4 = a.data('content4')
    var recipient5 = a.data('content5')
    part0 = a.data('content6')
    recipient8 = a.data('content8')
    var modal = $(this)
    modal.find('.modal-title').text('게시글')
    modal.find('.modal-body .content1').val(recipient1)
    modal.find('.modal-body .content2').val(recipient2)
    modal.find('.modal-body .content3').val(recipient3)
	modal.find('.modal-body .content4').val(recipient4)
	modal.find('.modal-body .content5').val(recipient5)
	$("#saveS").val(recipient8).prop("selected", true);

  })
  function iframe(recipient4) {
	$('#c-video').attr('src', recipient4);
}
function back(){
	$("#"+part0+"").modal();
}
</script>
