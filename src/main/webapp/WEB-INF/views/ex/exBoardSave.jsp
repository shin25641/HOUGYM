<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script type="text/javascript">
$(document).ready(function(){
	$("#submit").click(function(){
		if($("#saveTitle").val().length==0){alert("제목을 입력하세요"); $("#saveTitle").focus(); return false;}
	});
});
</script>
<!-- 글쓰기 모달 -->
	<div class="modal fade" id="newText" tabindex="-1"
		role="dialog" data-backdrop="static"
		style="background: none; color: #ff7f00; overflow-y:scroll;" >
		<div class="modal-dialog" role="document">
			<div class="modal-content"
				style="background-color: #000000; background-color: rgba(0, 0, 0, 0.2); color: white;">
				<div class="modal-header">
					<h4 class="modal-title" id="myModalLabel">글작성</h4>
				</div>
				<div class="modal-body">
					<form action="exboard_write" method="post">
					
					<table border="1" >
						<tr>
							<td width="40" align="center">이름</td>
							<td ><input width="100" class="save-nt1" type="text" name="name" value="${user_name}"  disabled="disabled" >
							<input type="text" name="name" value="${user_name}" hidden="true"></td>
							<td align="center" width="40">제목</td>
							<td ><input class="save-nt2" id="saveTitle" type="text" name="title" placeholder="제목을 입력하세요"></td>
						</tr>
						<tr>
							<td align="center">내용</td>
							<td colspan="3"><textarea class="save-ct" name="content" rows="10" placeholder="내용을 입력하세요"></textarea></td>
						</tr>
						<tr>
							<td align="center">영상 링크</td>
							<td colspan="3"><textarea class="save-ct" name="link" placeholder="유튜브에서 동영상 우클릭 후 영상 url을 복사 후 &#13;&#10; 붙여넣으시면 됩니다.&#13;&#10; 모바일의 경우 링크복사"></textarea></td>
						</tr>
						<tr>
						<td align="center">분류</td>
							<td colspan="2">
							<select name="part" id="save-part">
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
							</td>
							<td ><input type="submit" id="submit" value="저장"  onclick="check();"></td>
						</tr>
					</table>
				</form>
					</div>
					<div class="modal-footer">
						<button type="button" onclick="saveBack()" 
					class="btn btn-default" data-dismiss="modal" style="color: white;">뒤로가기</button>
				<button type="button" class="btn btn-default" data-dismiss="modal"
					style="color: white;">닫기</button>
				</div>
			</div>
		</div>
	</div>
<script type="text/javascript">
var savepart;
var recipient8;
$('#newText').on('show.bs.modal', function (event) {
	 var a = $(event.relatedTarget)
	savepart = a.data('content7')
	recipient8 = a.data('content8')
    var modal = $(this)
    $("#save-part").val(recipient8).prop("selected", true);
  })
  function saveBack(){
	$("#"+savepart+"").modal();
}
</script>
