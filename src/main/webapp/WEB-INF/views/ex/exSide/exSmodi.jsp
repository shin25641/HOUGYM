<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script type="text/javascript">
$(document).ready(function(){
	$("#submit").click(function(){
		if($("#link").val().length==0){alert("링크를 입력하세요"); $("#link").focus(); return false;}
	});
});
</script>
<!-- 영상 편집 모달 -->
	<div class="modal fade" id="exSmodify" tabindex="-1"
		role="dialog" data-backdrop="static"
		style="background: none; color: #ff7f00; overflow-y:scroll;" >
		<div class="modal-dialog" role="document">
			<div class="modal-content"
				style="background-color: #000000; background-color: rgba(0, 0, 0, 0.2); color: white;">
				<div class="modal-header">
					<h4 class="modal-title" id="myModalLabel">영상 변경</h4>
				</div>
				<div class="modal-body">
					<form action="exboardS_modify" method="post">
					<table border="1" >
						<tr>
							<td align="center">영상 링크</td>
							<td colspan="3"><textarea id="exSLink" class="save-ct" name="exSLink" placeholder="유튜브에서 동영상 우클릭 후 영상 url을 복사 후 &#13;&#10; 붙여넣으시면 됩니다.&#13;&#10; 모바일의 경우 링크복사"></textarea></td>
						</tr>
						<tr>
						<td align="center">몇번째 영상?</td>
							<td colspan="2">
							<select name="exSPart" id="save-part">
									<option value="1">1번 영상</option>
									<option value="2">2번 영상</option>
									<option value="3">3번 영상</option>
									<option value="4">4번 영상</option>
							</select>
							</td>
							<td ><input type="submit" id="submit" value="저장"  ></td>
						</tr>
					</table>
				</form>
					</div>
					<div class="modal-footer">
						
				<button type="button" class="btn btn-default" data-dismiss="modal"
					style="color: white;">닫기</button>
				</div>
			</div>
		</div>
	</div>
<script type="text/javascript">

</script>
