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
                  <h4>◈ 맞대결 전적</h4>
            	  </div>
                    <table class="table">
	                      <thead>
	                        <tr>
	                          <th style = "text-align:center;"><div><img></div><a href="#">강원FC</a><br>[8위]</th>
	                          <th style = "text-align:center;">팀명<br>[리그순위]</th>
	                          <th style = "text-align:center;"><div><img></div><a href="#">서울FC</a><br>[7위]</th>
	                        </tr>
	                      </thead>
	                      <tbody>
	                        <tr>
	                          <td style = "text-align:center;" bgcolor='#EEEEEE'>----</td>
	                          <td style = "text-align:center;">18`시즌성적</td>
	                          <td style = "text-align:center;" bgcolor='#EEEEEE'>----</td>
	                        </tr>
	                        <tr>
	                          <td style = "text-align:center;" bgcolor='#EEEEEE'>----</td>
	                          <td style = "text-align:center;">맞대결 전적/승점</td>
	                          <td style = "text-align:center;" bgcolor='#EEEEEE'>----</td>
	                        </tr>
	                        <tr>
	                          <td style = "text-align:center;" bgcolor='#EEEEEE'>----</td>
	                          <td style = "text-align:center;">득점/실점</td>
	                          <td style = "text-align:center;" bgcolor='#EEEEEE'>----</td>
	                        </tr>
	                        <tr>
	                          <td style = "text-align:center;" bgcolor='#EEEEEE'>----</td>
	                          <td style = "text-align:center;">평균득점/평균실점</td>
	                          <td style = "text-align:center;" bgcolor='#EEEEEE'>----</td>
	                        </tr>
	                        <tr>
	                          <td style = "text-align:center;" bgcolor='#EEEEEE'>----</td>
	                          <td style = "text-align:center;">경고/퇴장</td>
	                          <td style = "text-align:center;" bgcolor='#EEEEEE'>----</td>
	                        </tr>
	                      </tbody>
	                    </table>
	                    <hr>
	                    <br>
                  
                  <h4>◈ 구매가능게임</h4>
                  <table class="table">
	                      <thead>
	                        <tr>
	                          <th style = "text-align:center;">대상게임</th>
	                          <th style = "text-align:center;">홈<font color="red">vs</font>원정</th>
	                          <th style = "text-align:center;">경기일시</th>
	                          <th style = "text-align:center;">구매하기</th>
	                          
	                        </tr>
	                      </thead>
	                      <tbody>
	                        <tr>
	                          <td style = "text-align:center;">----</td> <!-- 실점 전체 -->
	                          <td style = "text-align:center;">----</td> <!-- 실점 평균 -->
	                          <td style = "text-align:center;">----</td> <!-- 득실차 -->
	                          <td style = "text-align:center;">----</td> <!-- 연속 -->
	                        </tr>
	                        
	                      </tbody>
	                    </table>
                  <hr>
	              <br>
	              
	              <h4>◈ 맞대결 흐름</h4>
	              <table class="table">
	                      <thead>
	                        <tr>
	                          <th style = "text-align:center;">팀명</th>
	                          <th style = "text-align:center;">전적</th>
	                          <th style = "text-align:center;">흐름<br><font size="2">(오른쪽으로 갈수록 최근경기입니다)</font></th>
	                          <th style = "text-align:center;">연속</th>
	                        </tr>
	                      </thead>
	                      <tbody>
	                        <tr>
	                          <td style = "text-align:center;">----</td> 
	                          <td style = "text-align:center;">----</td> 
	                          <td style = "text-align:center;">승-패-패-승-승</td> 
	                          <td style = "text-align:center;">----</td> 
	                        </tr>
	                      </tbody>
	                    </table>
	              
	              <h4>◈ 맞대결 상대전적</h4>
	              <table class="table">
	                      <thead>
	                        <tr>
	                          <th style = "text-align:center;">팀A</th>
	                          <th style = "text-align:center;">VS</th>
	                          <th style = "text-align:center;">팀B</th>
	                        </tr>
	                        <thead>
	                      <tbody>
	                        <tr>
	                          <td style = "text-align:center;">----</td> 
	                          <td style = "text-align:center;">----</td> 
	                          <td style = "text-align:center;">-----</td> 
	                        </tr>
	                      </tbody>
	                    </table>
	          </form>
	            </div>  
            </div>
            <hr>
            
            
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