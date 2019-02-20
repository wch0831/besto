<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

<head>  
<!-- <script>
$(document).ready(function(){
	
});
</script> -->
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
              <h1 class="h2">베팅토론방</h1>
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
<<<<<<< HEAD
      
      
      
      <script>
	$(function() {
		// tab operation
		$('.tabmenu').click(function() {
			var activeTab = $(this).attr('data-tab');
			$('li').css('background-color', 'white');
			$(this).css('background-color', 'green');
			$.ajax({
				type : 'GET',                 //get방식으로 통신
				url : activeTab + ".html",    //탭의 data-tab속성의 값으로 된 html파일로 통신
				dataType : "html",            //html형식으로 값 읽기
				error : function() {          //통신 실패시
					alert('통신실패!');
				},
				
				
				success : function(data) {    //통신 성공시 탭 내용담는 div를 읽어들인 값으로 채운다.
					$('#tabcontent').html(data);
				}
			});
		});
		$('#default').click();          
	});
</script>



      
=======
>>>>>>> branch 'master' of https://github.com/wch0831/besto
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
              <p class="text-muted lead"><font size="2">남을 비방하는 글이나 욕설, 게시판 성격에 맞지 않거나 광고성 게시물은 사전 동의없이 삭제될 수 있습니다. 답변을 원하시는 건의 및 문의 사항은 고객센터 > 고객상담실을 이용하여 주시기 바랍니다. </font></p>
<<<<<<< HEAD
              
              <div class=" col-lg-12">
              <h4>◈ 베팅토론</h4>
              <ul id="pills-tab" role="tablist" class="nav nav-pills nav-justified">
                <li class="nav-item"><a id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true" class="nav-link active">구매내역 토론방</a></li>
                <li class="nav-item"><a id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="false" class="nav-link">적중내역 토론방</a></li>
              </ul>
   
              
              <div id="pills-tabContent" class="tab-content">
                <div id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab" class="tab-pane fade show active">
					<div class="table-responsive">
	                    <table class="table">
	                      <thead bgcolor="#EEEEEE">
	                        <tr>
	                          <th style = "text-align:center;">글번호</th>
	                          <th style = "text-align:center;">게임구분</th>
	                          <th style = "text-align:center;">회차</th>
	                          <th style = "text-align:center;">제목</th>
	                          <th style = "text-align:center;">작성자</th>
	                          <th style = "text-align:center;">등록일</th>
	                          <th style = "text-align:center;">조회수</th>
	                          <th style = "text-align:center;">적중</th>
	                        </tr>
	                      </thead>
	                      <tbody>
	                       <c:forEach var="a" items="${KEY_RESULT_HIT}">
	                        <tr>
	                          <td style = "text-align:center;">${a.postSeq}</td>
	                          <td style = "text-align:center;">${a.hithistoryDiscussionGcode}</td>
	                          <td style = "text-align:center;">${a.hithistoryDiscussionRoundseq}</td>
	                          <td style = "text-align:center;"><a href="board_free_betting_buy_detail.jsp"><font color="black">${a.hithistoryDiscussionTitle}</font></a></td>
	                          <td style = "text-align:center;">${a.usersSeq}</td>
	                          <td style = "text-align:center;">${a.hithistoryDiscussionRegdate}</td>
	                          <td style = "text-align:center;">${a.hithistoryDiscussionHits}</td>
	                          <td style = "text-align:center;"><font color="red">${a.hithistoryDiscussionContent}</font></td>
	                        </tr>
	                       </c:forEach>
	                      </tbody>
	                    </table>
	                    <br>
=======
              <div id="basket" class="col-lg-12">
                <form method="get" action="/register">
                  <div class="table-responsive">
                  <h4>◈ 베팅내역토론방</h4>
                    <table class="table">
                      <thead bgcolor="#EEEEEE">
                        <tr>
                          <th style = "text-align:center;">번호</th>
                          <th style = "text-align:center;">게임구분</th>
                          <th style = "text-align:center;">회차</th>
                          <th style = "text-align:center;">제목</th>
                          <th style = "text-align:center;">작성자</th>
                          <th style = "text-align:center;">등록일</th>
                          <th style = "text-align:center;">조회수</th>
                          <th style = "text-align:center;">적중</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>    
                          <td style = "text-align:center;">1</td>
	                       <td style = "text-align:center;">승부식</td>
	                       <td style = "text-align:center;">19.3회차</td>
                           <td style = "text-align:center;"><a href="board_free_betting_hit_detail.jsp"><font color="black">다 날려먹었어요..</font></a></td>
                           <td style = "text-align:center;">이문경</td>
                           <td style = "text-align:center;">2019.02.12</td>
                           <td style = "text-align:center;">30</td>
                           <td style = "text-align:center;"><font color="red">발매중</font></td>
                        </tr>
                      </tbody>
                    </table>
                    <br>
>>>>>>> branch 'master' of https://github.com/wch0831/besto
                  <button type="button" class="btn btn-primary pull-right" onclick="location.href='board_free_betting_buy_register.jsp'">글쓰기</button>
                  </div>
<<<<<<< HEAD
                
                
<!-- 두번째 탭 영역  -->
                <div id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab" class="tab-pane fade">
                <div class="table-responsive">
	                    <table class="table">
	                      <thead bgcolor="#EEEEEE">
	                        <tr>
	                          <th style = "text-align:center;">글번호</th>
	                          <th style = "text-align:center;">게임구분</th>
	                          <th style = "text-align:center;">회차</th>
	                          <th style = "text-align:center;">제목</th>
	                          <th style = "text-align:center;">작성자</th>
	                          <th style = "text-align:center;">등록일</th>
	                          <th style = "text-align:center;">조회수</th>
	                          <th style = "text-align:center;">적중배당률</th>
	                        </tr>
	                      </thead>
	                      <tbody>
	                       <c:forEach var="a" items="${KEY_RESULT_BUY}">
	                        <tr>
	                          <td style = "text-align:center;">${a.postSeq}</td>
	                          <td style = "text-align:center;">${a.buyhistoryDiscussionGcode}</td>
	                          <td style = "text-align:center;">${a.buyhistoryDiscussionRoundseq}</td>
	                          <td style = "text-align:center;"><a href="board_free_betting_hit_detail.jsp"><font color="black">${a.buyhistoryDiscussionTitle}</font></a></td>
	                          <td style = "text-align:center;">${a.usersSeq}</td>
	                          <td style = "text-align:center;">${a.buyhistoryDiscussionRegdate}</td>
	                          <td style = "text-align:center;">${a.buyhistoryDiscussionHits}</td>
	                          <td style = "text-align:center;">4.5</td>
	                        </tr>
	                        </c:forEach>
	                      </tbody>
	                    </table>
	                    <br>
	                    <button type="button" class="btn btn-primary pull-right" onclick="location.href='board_free_hit_register.jsp'">글쓰기</button>
=======
                </form>
            </div>
            <hr>
            
<!-- style = "vertical-align:right;" -->
>>>>>>> branch 'master' of https://github.com/wch0831/besto
<!-- 검색바 -->
			<div class="col-md-10 pull-right">
              <div class="row pull-right">
              <div class="btn-group bootstrap-select bs-select ">
              	 <div class="dropdown-menu open" role="combobox" x-placement="bottom-start" style="position:absolute; align:right; will-change: transform; top:0px; left:50px;">
              	 </div>
					<select class="bs-select" tabindex="-98" style="width:50px;">
                      <option value="title">제목</option>
                      <option value="user">작성자</option>
                     </select>
                 </div>
            	<div class="panel-body" >
                  <form role="search">
                    <div class="input-group">
                      <input type="text" placeholder="검색" class="form-control"><span class="input-group-btn">
                        <button type="submit" class="btn btn-template-main"><i class="fa fa-search"></i></button></span>
                    </div>
                  </form>
                </div>
            </div>
            </div>
            
<!-- 검색바 -->
<!-- 페이징하셈 -->
              <div class="pages" style="position:relative; left: 360px; top: 40px;">
                <nav aria-label="Page navigation example" class="d-flex justify-content-center">
                  <ul class="pagination">
                    <li class="page-item"><a href="#" class="page-link"> <i class="fa fa-angle-double-left"></i></a></li>
                    <li class="page-item active"><a href="#" class="page-link">1</a></li>
                    <li class="page-item"><a href="#" class="page-link">2</a></li>
                    <li class="page-item"><a href="#" class="page-link">3</a></li>
                    <li class="page-item"><a href="#" class="page-link">4</a></li>
                    <li class="page-item"><a href="#" class="page-link">5</a></li>
                    <li class="page-item"><a href="#" class="page-link"><i class="fa fa-angle-double-right"></i></a></li>
                  </ul>
                </nav>
              </div>
<!-- 페이징하셈 --> 
              
              
              
              
              
              
              
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