<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

<head>  
<!-- Header Include CSS START-->
<%@ include file="/include/header.jsp" %>
<!-- Header Include CSS END-->
</head>

  <body>
    <div id="all">
    
<!-- Topbar Include CSS START-->
<%@ include file="/include/topbar.jsp" %>
<!-- Topbar Include CSS END-->
      
<!-- Navbar Include CSS START-->
<%@ include file="/include/navbar.jsp" %>
<!-- Navbar Include CSS END-->      
      
      <div id="heading-breadcrumbs">
        <div class="container">
          <div class="row d-flex align-items-center flex-wrap">
            <div class="col-md-7">
              <h1 class="h2">게임일정</h1>
            </div>
            <div class="col-md-5">
              <ul class="breadcrumb d-flex justify-content-end">
                <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                <li class="breadcrumb-item active">Category with left sidebar</li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      
      <div id="content">
        <div class="container">
          <div class="row bar">
            <div class="col-md-2">

<!-- Sidebar_Main Include CSS START-->
<%@ include file="/include/sidebar_board_main.jsp" %>
<!-- Sidebar_Main Include CSS END-->
              
            </div>
            
<!-- 게시판 메인부분 -->
            <div class="col-md-10">
              <p class="text-muted lead"><font size="2"><b>발매기간</b> : 2019.02.22 09:30 ~ 2019.02.24 21:50</font>
              <br><font size="2"><b>적중결과 발표일</b> : 최종경기종료 당일 예정</font>
              <br><font size="2"><b>환급(환불)기간</b> : 공식 적중결과 발표일 익일(지급개시일)부터 1년간(단, 적중결과 발표 당일부터 지급이 가능함)</font></p>
              
              <div class="btn-group bootstrap-select bs-select">
              	 <div class="dropdown-menu open" role="combobox" x-placement="bottom-start" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 37px, 0px);">
              	</div>
              	   ◈축구토토 스페셜
						<select class="bs-select" tabindex="-98">
                          <option value="match">8회차 [2월 24일 일요일 마감]</option>
                          <option value="match">8회차 [2월 24일 일요일 마감]</option>
                          <option value="history">8회차 [2월 24일 일요일 마감]</option>
                          <option value="history">8회차 [2월 24일 일요일 마감]</option>
                        </select>
                        <br>
                        <br>
                        <br>
                        </div>
              
              
              
              <div id="basket" class="col-lg-12">
                <form method="get" action="shop-checkout1.html">
                  <div class="table-responsive">
                  <h4>◈ 대상 경기 및 게임 일정</h4>
                    <table class="table">
	                      <thead>
	                        <tr>
	                          <th style = "text-align:center;">경기</th>
	                          <th style = "text-align:center;">경기일</th>
	                          <th style = "text-align:center;">홈팀 <span class="badge badge-danger">VS</span> 원정팀</th>
	                          <th style = "text-align:center;">경기장소</th>
	                          <th style = "text-align:center;">중계일정</th>
	                        </tr>
	                      </thead>
	                      <tbody>
	                      <c:forEach var="vv" items="${MLIST}">
	                      
	                        <tr>
	                          <td style = "text-align:center;">${vv.gameMno}</td>
	                          <td style = "text-align:center;">${vv.matchStarttime}</td>
	                          <td style = "text-align:center;">${vv.homeTeamName}<span class="badge badge-danger">VS</span>${vv.awayTeamName}</td>
	                          <td style = "text-align:center;">${vv.matchStadium} </td>
	                          <td style = "text-align:center;">-</td>
	                        </tr>
	                        
	                      </c:forEach>
	                      </tbody>
	                    </table>
                  </div>
                </form>
            <hr>
            </div>
            
                            <div class="col-md-12 pull-right">
                <br>
<!-- 세션비교 후 작성자만 보이게 설정하기 -->
				  <button type="button" class="btn btn-sm btn-info pull-right"><i class="fa fa-refresh">목록가기</i></button>
                  <button type="button" class="btn btn-sm btn-primary pull-left"><i class="fa fa-chevron-left">이전회차</i></button>
                  <button type="button" class="btn btn-sm btn-primary pull-left">다음회차<i class="fa fa-chevron-right"></i></button>
<!-- 세션비교 후 작성자만 보이게 설정하기 -->
                  <br><br>
                  </div>
            
            
            
            </div>
          </div>
        </div>
      </div>
      
      
<!-- Footer Include CSS START-->
<%@ include file="/include/footer.jsp" %>
<!-- Footer Include CSS END-->
    </div>
    
<!-- Script Include CSS START-->
<%@ include file="/include/script.jsp" %>
<!-- Script Include CSS END-->
    
    
  </body>
</html>