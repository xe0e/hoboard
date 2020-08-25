<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ include file="module/header.jsp"%>
<div class="mypage-wrap reserve">
  <div class="container">
    <div class="row">
      <div class="col-12">
        <div class="title-wrap clearfix">
          <h2 class="page-title">예약내역</h2>
          <div class="search-wrap">
            <div class="select-wrap clearfix">
              <select id="choice">
                <option value="title">병원이름</option>
                <option value="content">진료과</option>
              </select>
              <div class="arrow">
                <i class="ri-arrow-down-s-line"></i>
              </div>
            </div>
            <div class="input-wrap clearfix">
              <input
                type="text"
                id="search"
                placeholder="검색어를 입력해주세요."
                value=""
                onkeydown="enter('myreserve')"
              />
              <button class="btn" onclick="search('myreserve')">
                <i class="ri-search-line"></i>
              </button>
            </div>
          </div>
        </div>
        <div class="util-wrap clearfix">
          <div class="notice">총 "${ count }" 건의 예약을 하셨습니다.</div>
          <div class="write">
            <a href="reserve">예약하기</a>
          </div>
        </div>
        <div class="calendar-wrap">
          <div id="calendar"></div>
        </div>
        <div class="paging-wrap"></div>
      </div>
    </div>
  </div>
</div>
<script src="js/util.js"></script>
<script>
  document.addEventListener("DOMContentLoaded", function () {
    var calendarEl = document.getElementById("calendar");
    var calendar = new FullCalendar.Calendar(calendarEl, {
      headerToolbar: {
        left: "prev,next today",
        center: "title",
        right: "dayGridMonth,timeGridWeek,timeGridDay",
      },
      dateClick: function (info) {},
      select: function (info) {},
    });
    calendar.render();
  });
</script>
<%@ include file="module/footer.jsp"%>
