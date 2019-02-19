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
              <h1 class="h2">경기정보</h1>
            </div>
            <div class="col-md-5">
              <ul class="breadcrumb d-flex justify-content-end">
                <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                <li class="breadcrumb-item active">경기정보</li>
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
              <p class="text-muted lead"><font size="2">남을 비방하는 글이나 욕설, 게시판 성격에 맞지 않거나 광고성 게시물은 사전 동의없이 삭제될 수 있습니다. 답변을 원하시는 건의 및 문의 사항은 고객센터 > 고객상담실을 이용하여 주시기 바랍니다. </font></p>
              
              <div id="basket" class="col-lg-12">
                <form method="get" action="shop-checkout1.html">
                  <div class="table-responsive">
                  <h4>◈ 오늘의 경기</h4>
                  <br>
                    <table class="table">
	                      <thead bgcolor="#EEEEEE">
	                        <tr>
	                          <th style = "text-align:center;">리그</th>
	                          <th style = "text-align:center;">시간</th>
	                          <th style = "text-align:center;">홈팀 <span class="badge badge-danger">VS</span> 원정팀</th>
	                          <th style = "text-align:center;">맞대결 전적</th>
	                          <th style = "text-align:center;">중계일정</th>
	                          <th style = "text-align:center;">구장정보</th>
	                          <th style = "text-align:center;">대상게임</th>
	                        </tr>
	                      </thead>
	                      <tbody>
	                        <tr>
	                          <td style = "text-align:center;">K리그 2부</td>
	                          <td style = "text-align:center;">----</td>
	                          <td style = "text-align:center;">A팀 <span class="badge badge-danger">VS</span> B팀</td>
	                          <td style = "text-align:center;">----</td>
	                          <td style = "text-align:center;">----</td>
	                          <td style = "text-align:center;">코스모 스타디움</td>
	                          <td style = "text-align:center;">----</td>
	                        </tr>
	                      </tbody>
	                    </table>
	                    <hr>
	                    <br>
                  </div>
                  
                  <h4>◈ 순위정보</h4>
                  <table class="table">
	                      <thead bgcolor="#EEEEEE">
	                        <tr>
	                          <th style = "text-align:center;">순위</th>
	                          <th style = "text-align:center;">팀명</th>
	                          <th style = "text-align:center;">경기수 </th>
	                          <th style = "text-align:center;">승점</th>
	                          <th style = "text-align:center;">승</th>
	                          <th style = "text-align:center;">무</th>
	                          <th style = "text-align:center;">패</th>
	                          <th style = "text-align:center;"><font color="blue">득점<br>전체</font></th>
	                          <th style = "text-align:center;"><font color="blue">득점<br>평균</font></th>
	                          <th style = "text-align:center;"><font color="red">실점<br>전체</font></th>
	                          <th style = "text-align:center;"><font color="red">실점<br>평균</font></th>
	                          <th style = "text-align:center;">득실차</th>
	                          <th style = "text-align:center;">연속</th>
	                          <th style = "text-align:center;">최근<br>10경기</th>
	                        </tr>
	                      </thead>
	                      <tbody>
	                        <tr>
	                          <td style = "text-align:center;">1</td> <!-- 순위 -->
	                          <td style = "text-align:center;">----</td> <!-- 팀명 -->
	                          <td style = "text-align:center;">----</td> <!-- 경기수 -->
	                          <td style = "text-align:center;">----</td> <!-- 승점 -->
	                          <td style = "text-align:center;">----</td> <!-- 승 -->
	                          <td style = "text-align:center;">----</td> <!-- 무 -->
	                          <td style = "text-align:center;">----</td> <!-- 패 -->
	                          <td style = "text-align:center;">----</td> <!-- 득점 전체 -->
	                          <td style = "text-align:center;">----</td> <!-- 득점 평균 -->
	                          <td style = "text-align:center;">----</td> <!-- 실점 전체 -->
	                          <td style = "text-align:center;">----</td> <!-- 실점 평균 -->
	                          <td style = "text-align:center;">----</td> <!-- 득실차 -->
	                          <td style = "text-align:center;">----</td> <!-- 연속 -->
	                          <td style = "text-align:center;">----</td> <!-- 최근10경기 -->
	                        </tr>
	                        <tr>
	                          <td style = "text-align:center;">2</td>
	                          <td style = "text-align:center;">----</td>
	                          <td style = "text-align:center;">----</td>
	                          <td style = "text-align:center;">----</td>
	                          <td style = "text-align:center;">----</td>
	                          <td style = "text-align:center;">----</td>
	                          <td style = "text-align:center;">----</td>
	                          <td style = "text-align:center;">----</td>
	                          <td style = "text-align:center;">----</td>
	                          <td style = "text-align:center;">----</td>
	                          <td style = "text-align:center;">----</td>
	                          <td style = "text-align:center;">----</td>
	                          <td style = "text-align:center;">----</td>
	                          <td style = "text-align:center;">----</td>
	                        </tr>
	                      </tbody>
	                    </table>
                </form>
            </div>
            <hr>
            
            <!-- 검색바 -->
              <div class="col-md-3 pull-right">
            <div class="panel-body">
                  <form role="search">
                    <div class="input-group">
                      <input type="text" placeholder="Search" class="form-control"><span class="input-group-btn">
                        <button type="submit" class="btn btn-template-main"><i class="fa fa-search"></i></button></span>
                    </div>
                  </form>
                </div>
            </div>
            <br>
<!-- 검색바 -->
            
            
<!-- 페이징하셈 -->
              <div class="pages">
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