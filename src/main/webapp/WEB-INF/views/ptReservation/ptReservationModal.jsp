<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<div class="modal fade" id="ptmodal" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">
            	<input type="text" class="form-data_1">
                <h3 class="lecture-title">웹 프로그래밍</h3>
                <ul class="lecture-info">
                    <li class="lecture-time">
                        <i class="material-icons ic-lecture-info">access_alarm</i>
                        <span>강의 시간 : 09:00 - 10:50 | (월), (수)</span>
                    </li>
                    <li class="lecture-code">
                        <i class="material-icons ic-lecture-info">code</i>
                        <span>교과목 코드 : A0000001</span>
                    </li>
                    <li class="lecture-code">
                        <i class="material-icons ic-lecture-info">school</i>
                        <span>담당 교수 : 김진수</span>
                    </li>
                    <li class="lecture-code">
                        <i class="material-icons ic-lecture-info">business</i>
                        <span>강의실 : 공학관 204</span>
                    </li>
                </ul>
                <div class="lecture-description">
                    <p class="txt-description">본 강의에서는 JSP를 이용한 웹 기반 프로그래밍 기초 및 응용기술에 대해 학습합니다. 특히 실습 위주의 수업으로 프로그래밍 스킬 향상 및
                        실무 능력을 갖출 수 있도록 합니다.
                    </p>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-light" data-dismiss="modal">취소</button>
                <button type="button" class="btn btn-primary">과목 등록하기</button>
            </div>
        </div>
    </div>
</div>

<!-- 


<div class="modal fade" id="modal-lecture-task" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">
                <h3 class="lecture-title">웹 프로그래밍</h3>
                <ul class="lecture-info">
                    <li class="lecture-time">
                        <i class="material-icons ic-lecture-info">access_alarm</i>
                        <span>강의 시간 : 09:00 - 10:50 | (월), (수)</span>
                    </li>
                    <li class="lecture-code">
                        <i class="material-icons ic-lecture-info">code</i>
                        <span>교과목 코드 : A0000001</span>
                    </li>
                    <li class="lecture-code">
                        <i class="material-icons ic-lecture-info">school</i>
                        <span>담당 교수 : 김진수</span>
                    </li>
                    <li class="lecture-code">
                        <i class="material-icons ic-lecture-info">business</i>
                        <span>강의실 : 공학관 204</span>
                    </li>
                </ul>
                <div class="lecture-description">
                    <p class="txt-description">본 강의에서는 JSP를 이용한 웹 기반 프로그래밍 기초 및 응용기술에 대해 학습합니다. 특히 실습 위주의 수업으로 프로그래밍 스킬 향상 및
                        실무 능력을 갖출 수 있도록 합니다.
                    </p>
                </div>

                <div class="lecture-memo">
                    <h5 class="memo-header">메모</h5>
                    <ul>
                        <li class="memo-list">
                            <div class="memo-content" data-toggle="tooltip" data-placement="top" title="" data-original-title="과제 설명 텍스트 과제 설명 텍스트 과제 설명 텍스트">
                                <i class="material-icons ic-lecture-noti">assignment</i>
                                <span class="lecture-noti-title">과제 제목 텍스트</span>
                            </div>
                            <div class="memo-btn">
                                <a href=""><i class="material-icons ic-lecture-noti">delete</i></a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="modal-footer">
                <div class="left">
                    <button class="btn btn-light-primary" type="button" data-toggle="popover"
                            data-trigger="click" data-placement="right" data-html="true">
                        메모 등록
                    </button>
                </div>
                <div class="right">
                    <button type="button" class="btn btn-light" data-dismiss="modal">확인</button>
                    <button type="button" class="btn btn-danger" >과목 삭제하기</button>
                </div>
            </div>
        </div>
    </div>
</div>

<div id="PopoverContent" style="display: none;">
    <h5 class="schedule-title">메모 등록하기</h5>
    <div class="form-group">
        <label class="col-form-label">제목
            <input type="text" class="form-control" id="recipient-name" placeholder="제목 추가">
        </label>
    </div>
    <div class="form-group">
        <label for="message-text" class="col-form-label">설명</label>
        <textarea class="form-control" id="message-text" placeholder="설명 추가"></textarea>
    </div>
    <button type="button" class="btn btn-primary btn-save">등록</button>
</div>



 -->

    
<script type="text/javascript">
$('#ptmodal').on('show.bs.modal', function (event) {
	  var button = $(event.relatedTarget)
	  var recipient_1 = button.data('data-whatever')
	  var modal = $(this)
	  modal.find('.modal-body .form-data_1').val(recipient_1)
	})
</script>
