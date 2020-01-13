<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



 
 <div class="modal fade" id="ticketModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="ticketModalLabel"><span style="color:#fe6000;">HOUGYM</span> 회원권 구매</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      
      <form id="ticketRegister" action="ticketRegister" method="post">
      <div class="modal-body">
      	<span style="font-family:dohyun; font-size: 1.25em;">등록 개월 수 : </span><input type="text" class="form-control_1" name="ticketDuration" id="ticketDuration"><br>
		<span style="font-family:dohyun; font-size: 1.25em;">등록자 이름 : </span><input type="text" class="form-control_2" name="sessionName" id="sessionName"  readonly="readonly"><br>
		<span style="font-family:dohyun; font-size: 1.25em;">등록자 아이디 : </span><input type="text" class="form-control_3" name="sessionId" id="sessionId" readonly="readonly"><br>
		<span style="font-family:dohyun; font-size: 1.25em;">회원권 등록 날짜 : </span><input type="date" class="white_textbox" name="ticketStartDate" id="date"><br>
		<span style="font-family:dohyun; font-size: 1.25em;">가격 : </span><input type="text" class="white_textbox form-control_4" name="ticketPrice" id="ticketPrice" readonly="readonly"><br>
      </div>
      <div class="modal-footer">
       	
         <button type="button" class="orange_btn" onclick="ticketJoin()">회원권 등록</button>
         <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
      </form>
    </div>
  </div>
</div>

<script type="text/javascript">
 
   $('#ticketModal').on('show.bs.modal', function (event) {
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
      });
   function ticketJoin(){
	    var date = document.getElementById('date').value;
		if(date == ""){
			alert('날짜를 반드시 입력해주세요')
		}else {
			if(confirm("등록하시겠습니까?"))
			 {
			    document.getElementById('ticketRegister').submit();
				alert('등록되었습니다.');
			    location.href="ticketView";
			 }
			 else
			 {
				alert('취소되었습니다.');
			 }
		}
	   
	}

</script>
