<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 
 <div class="modal fade" id="lockerNoModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel" style="font-family: dohyun;"><span style="font-family: dohyun; color:#fe6000;">HOU GYM</span>&nbsp;락카등록 구매</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
		<form action="lockerJoin">
      <div class="modal-body">
			<span style="font-family:dohyun; font-size: 1.25em;">락카 번호 : </span><input type="text" class="form-control_1" id="recipient-name" name="lockerNum" hidden="true"><input type="text" class="white_textbox form-control_1" id="recipient-name" name="lockerNum" style="width: 40px;" readonly="readonly"><br>
			<span style="font-family:dohyun; font-size: 1.25em;">회원 이름 : </span><input type="text" class="white_textbox" value="${user_id }" name="lockerName" id="lockerName" required="required"><br>
			<span style="font-family:dohyun; font-size: 1.25em;">락카 등록 날짜 : </span><input type="date" class="white_textbox" name="lockerStartDate" id="lockerStartDate" required="required"><br>
			<span style="font-family:dohyun; font-size: 1.25em;">락카 마감 날짜 : </span><input type="date" class="white_textbox" name="lockerEndDate" id="lockerEndDate" required="required"><br>
      </div>
      <div class="modal-footer">
			<input type="submit" class="btn btn-primary modalbtn-submit" value="등록">
	        <button type="button" class="btn btn-secondary modalbtn-close" data-dismiss="modal">Close</button>
      </div>
		</form>
    </div>
  </div>
</div>



<div class="modal fade" id="lockerOkModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel" style="font-family: dohyun;"><span style="font-family: dohyun; color:#fe6000;">HOU GYM</span>&nbsp;예약이 완료된 락카입니다</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
		<form action="lockerModify" id="lockerModify">
			<span style="font-family:dohyun; font-size: 1.25em;">락카 번호: </span><input type="text" class="form-control_1" id="recipient-name" name="lockerNum" hidden="true"><input type="text" class="form-control_1 white_textbox" id="recipient-name" name="lockerNum" style="width: 40px;" readonly="readonly"><br>
			<span style="font-family:dohyun; font-size: 1.25em;">사용자 이름 : </span><input type="text" class = "form-control_2 white_textbox" name="lockerName" ><br>
			<span style="font-family:dohyun; font-size: 1.25em;">시작일 : </span><input type="date" class="form-control_3 white_textbox" name="lockerStartDate" style="width: 200px;"><br>
			<span style="font-family:dohyun; font-size: 1.25em;">종료일 : </span><input type="date" class="form-control_4 white_textbox"  name="lockerEndDate" style="width: 200px;"><br>
		</form>
		<form action="lockerDelete" id="lockerDelete">
				<input type="text" class="form-control_1" id="recipient-name" name="lockerNum" hidden="true">
		</form>
      </div>
      <div class="modal-footer">
      	<c:if test="${Admin eq 1 }">
			<button type="button" onclick="lockerModify()" class="btn btn-primary modalbtn-submit">수정</button>
			<button type="button" onclick="lockerDelete()" class="btn btn-primary modalbtn-submit">삭제</button>
      	</c:if>
        <button type="button" class="btn btn-secondary modalbtn-close" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>




<script type="text/javascript">
	$('#lockerNoModal').on('show.bs.modal', function (event) {
		  var button = $(event.relatedTarget)
		  var recipient = button.data('whatever')
		  var modal = $(this)
		  modal.find('.modal-body .form-control_1').val(recipient)

		})
	$('#lockerOkModal').on('show.bs.modal', function (event) {
		  var button = $(event.relatedTarget)
		  var recipient_1 = button.data('whatever_1')
		  var recipient_2 = button.data('whatever_2')
		  var recipient_3 = button.data('whatever_3')
		  var recipient_4 = button.data('whatever_4')
	
		  var modal = $(this)
		  modal.find('.modal-body .form-control_1').val(recipient_1)
		  modal.find('.modal-body .form-control_2').val(recipient_2)
		  modal.find('.modal-body .form-control_3').val(recipient_3)
		  modal.find('.modal-body .form-control_4').val(recipient_4)
		})

	function lockerModify(){
		if(confirm("수정하시겠습니까?"))
		 {
		    document.getElementById('lockerModify').submit();
			alert('수정되었습니다.');
		    location.href="lockerView";
		 }
		 else
		 {
			alert('취소되었습니다.');
		 }
	}
	
	function lockerDelete(){
		if(confirm("삭제하시겠습니까?"))
		 {
		    document.getElementById('lockerDelete').submit();
			alert('삭제되었습니다.');
		    location.href="lockerView";
		 }
		 else
		 {
			alert('취소되었습니다.');
		 }
	}
	
</script>