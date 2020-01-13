<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<c:choose>
   <c:when test="${empty myTicketlist}">
      <h1
         style="font-family: dohyun; margin-left: 30px; margin-top: 30px; color: white;">
         내가 보유한 회원권이 없습니다</h1>
   </c:when>
   <c:otherwise>
         <ul>
      <c:forEach var="TBdto" items="${myTicketlist}">
            <li class="ticketByList">
               <div class="card" style="width: 18rem; background-color: black;">
                  <div class="card-body">
                     <h5 class="card-title" style="font-family: dohyun; color: white;">${TBdto.ticketDuration}개월권</h5>
                     <h6 class="card-subtitle mb-2" style="color:white; font-family: dohyun; ">${TBdto.ticketStartDate}
                        ~ ${TBdto.ticketEndDate}.</h6>
                        <hr align="center" style="border: solid 2px #fe6000; width: 100%;">                        
                     <p class="card-text" style="color:white; font-family: dohyun; ">열심히 운동하였으므로<br> 이 회원권을 수상함</p>
                  </div>
               </div>
            </li>
      </c:forEach>
         </ul>
   </c:otherwise>
</c:choose>