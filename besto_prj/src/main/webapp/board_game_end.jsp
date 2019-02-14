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
              <h1 class="h2">마감게임</h1>
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
              <p class="text-muted lead"><font size="2">남을 비방하는 글이나 욕설, 게시판 성격에 맞지 않거나 광고성 게시물은 사전 동의없이 삭제될 수 있습니다. 답변을 원하시는 건의 및 문의 사항은 고객센터 > 고객상담실을 이용하여 주시기 바랍니다. </font></p>
              
              
              <div id="basket" class="col-lg-12">
                <form method="get" action="shop-checkout1.html">
                  <div class="table-responsive">
                  <h4>◈ 마감게임</h4>
                    <table class="table">
	                      <thead>
	                        <tr>
	                          <th style = "text-align:center;">글번호</th>
	                          <th style = "text-align:center;">게임명</th>
	                          <th style = "text-align:center;">회차</th>
	                          <th style = "text-align:center;">경기보기</th>
	                          <th style = "text-align:center;">회차 마감일시</th>
	                          <th style = "text-align:center;">게임정보보기</th>
	                        </tr>
	                      </thead>
	                      <tbody>
	                      <!-- pull-right -->
	                      
	                        <tr>
	                          <td style = "text-align:center;">1</td>
	                          <td style = "text-align:center;">승부식</td>
	                          <td style = "text-align:center;">19.3회차</td>
	                          <td><button type="button" class="btn btn-sm btn-success" style="display: block; margin: 0 auto;">대상경기+</button></td>
	                          <td style = "text-align:center;">2019.02.12 09:20</td>
	                          <td><button type="button" class="btn btn-sm btn-default" style="display: block; margin: 0 auto;">상세보기></button></td>
	                        </tr>
	                        
	                        <tr>
	                          <td style = "text-align:center;">1</td>
	                          <td style = "text-align:center;">승부식</td>
	                          <td style = "text-align:center;">19.3회차</td>
	                          <td><button type="button" class="btn btn-sm btn-success" style="display: block; margin: 0 auto;">대상경기+</button></td>
	                          <td style = "text-align:center;">2019.02.12 09:20</td>
	                          <td><button type="button" class="btn btn-sm btn-default" style="display: block; margin: 0 auto;">상세보기></button></td>
	                        </tr>
	                        
	                        
	                        
	                      </tbody>
	                    </table>
                  </div>
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