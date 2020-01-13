<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <div class="modal fade" id="trainerInfoModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel" style="font-family: dohyun; color:#ff6000;">트레이너 정보</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      
      	<div class="col mb-4">
   			<div class="card">
      		<img src="resources/static/img/main-profile.png" class="card-img-top" alt="...">
      		<div class="card-body">
					<span style="font-family:dohyun; font-size: 1.25em;">이름 : </span><input class="form-info_2 white_textbox" type="text" style="width: 64%;"><br>
					<span style="font-family:dohyun; font-size: 1.25em;">아이디 : </span><input class="form-info_1 white_textbox" type="text" readonly="readonly" style="width: 64%;"><br>
					<span style="font-family:dohyun; font-size: 1.25em;">나이 : </span><input class="form-info_3 white_textbox" type="text" style="width: 64%;"><br>
					<span style="font-family:dohyun; font-size: 1.25em;">성별 : </span><input class="form-info_4 white_textbox" type="text" style="width: 64%;"><br>
					<span style="font-family:dohyun; font-size: 1.25em;">E-Mail : </span><input class="form-info_5 white_textbox" type="text" style="width: 64%;"><br>
					<span style="font-family:dohyun; font-size: 1.25em;">가입날짜 : </span><input class="form-info_6 white_textbox" type="text" style="width: 64%;"><br>
					<span style="font-family:dohyun; font-size: 1.25em;">키 : </span><input class="form-info_7 white_textbox" type="text" style="width: 64%;"><br>
					<span style="font-family:dohyun; font-size: 1.25em;">몸무게 : </span><input class="form-info_8 white_textbox" type="text" style="width: 64%;"><br>
      		</div>
    		</div>
  		</div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="userInfoModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel" style="font-family: dohyun; color:#ff6000;">회원 정보</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
		<form id="modify-controller" method="post">
      <div class="modal-body">
      
      	<div class="col mb-4">
   			<div class="card">
      		<img src="resources/static/img/main-profile.png" class="card-img-top" alt="...">
      		<div class="card-body">
					<span style="font-family:dohyun; font-size: 1.25em;">이름 : </span><input class="form-info_2 white_textbox" type="text" style="width: 64%;"><br>
					<span style="font-family:dohyun; font-size: 1.25em;">아이디 : </span><input class="form-info_1 white_textbox" type="text" readonly="readonly" style="width: 64%;"><br>
					<span style="font-family:dohyun; font-size: 1.25em;">나이 : </span><input class="form-info_3 white_textbox" type="text" style="width: 64%;"><br>
					<span style="font-family:dohyun; font-size: 1.25em;">성별 : </span><input class="form-info_4 white_textbox" type="text" style="width: 64%;"><br>
					<span style="font-family:dohyun; font-size: 1.25em;">E-Mail : </span><input class="form-info_5 white_textbox" type="text" style="width: 64%;"><br>
					<span style="font-family:dohyun; font-size: 1.25em;">가입날짜 : </span><input class="form-info_6 white_textbox" type="text" style="width: 64%;"><br>
					<span style="font-family:dohyun; font-size: 1.25em;">키 : </span><input class="form-info_7 white_textbox" type="text" style="width: 64%;"><br>
					<span style="font-family:dohyun; font-size: 1.25em;">몸무게 : </span><input class="form-info_8 white_textbox" type="text" style="width: 64%;"><br>
      		</div>
    		</div>
  		</div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
		</form>
    </div>
  </div>
</div>

<script type="text/javascript">
	$('#trainerInfoModal').on('show.bs.modal', function (event) {
		  var button = $(event.relatedTarget)
		  var recipient_1 = button.data('info_1')
		  var recipient_2 = button.data('info_2')
		  var recipient_3 = button.data('info_3')
		  var recipient_4 = button.data('info_4')
		  var recipient_5 = button.data('info_5')
		  var recipient_6 = button.data('info_6')
		  var recipient_7 = button.data('info_7')
		  var recipient_8 = button.data('info_8')

		  var modal = $(this)
		  modal.find('.modal-body .form-info_1').val(recipient_1)
		  modal.find('.modal-body .form-info_2').val(recipient_2)
		  modal.find('.modal-body .form-info_3').val(recipient_3)
		  modal.find('.modal-body .form-info_4').val(recipient_4)
		  modal.find('.modal-body .form-info_5').val(recipient_5)
		  modal.find('.modal-body .form-info_6').val(recipient_6)
		  modal.find('.modal-body .form-info_7').val(recipient_7)
		  modal.find('.modal-body .form-info_8').val(recipient_8)


		})
		$('#userInfoModal').on('show.bs.modal', function (event) {
		  var button = $(event.relatedTarget)
		  var recipient_1 = button.data('info_1')
		  var recipient_2 = button.data('info_2')
		  var recipient_3 = button.data('info_3')
		  var recipient_4 = button.data('info_4')
		  var recipient_5 = button.data('info_5')
		  var recipient_6 = button.data('info_6')
		  var recipient_7 = button.data('info_7')
		  var recipient_8 = button.data('info_8')
		  var recipient_9 = button.data('info_9')

		  var modal = $(this)
		  modal.find('.modal-body .form-info_1').val(recipient_1)
		  modal.find('.modal-body .form-info_2').val(recipient_2)
		  modal.find('.modal-body .form-info_3').val(recipient_3)
		  modal.find('.modal-body .form-info_4').val(recipient_4)
		  modal.find('.modal-body .form-info_5').val(recipient_5)
		  modal.find('.modal-body .form-info_6').val(recipient_6)
		  modal.find('.modal-body .form-info_7').val(recipient_7)
		  modal.find('.modal-body .form-info_8').val(recipient_8)
		  modal.find('.modal-header .form-info_9').val(recipient_9)


		})
		function submitform(){

			if (confirm("수정하시겠습니까?")) {
				document.getElementById('modifyform').submit();
				alert('수정되었습니다.');
				location.href = "mypage";
			} else {
					alert('취소되었습니다.');
			}

	}
</script>