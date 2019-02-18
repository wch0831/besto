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
              <h1 class="h2">도전분석방</h1>
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
<%@ include file="/include/sidebar_member.jsp" %>
<!-- Sidebar_Main Include CSS END-->
              
            </div>
            
<!-- 게시판 메인부분 -->
            <div class="col-md-10">
              
              
              <div id="basket" class="col-lg-12">
                <form method="get" action="shop-checkout1.html">
                  <div class="table-responsive">
                    <h4>◈ 구매/적중내역</h4>
                  		<p class="text-muted lead"><font size="2">상세내용을 보시려면 <strong>게임종류, 구매일시, 상태</strong>를 클릭해 주세요.</font></p>
                  
    
                    <table class="table">
	                      <thead bgcolor="#EEEEEE">
	                        <tr>
	                          <th style = "text-align:center;">/</th>
	                          <th style = "text-align:center;">게임종류</th>
	                          <th style = "text-align:center;">회차</th>
	                          <th style = "text-align:center;">구매일시</th>
	                          <th style = "text-align:center;">투표권 고유번호</th>
	                          <th style = "text-align:center;">구매금액</th>
	                          <th style = "text-align:center;">상태</th>
	                        </tr>
	                      </thead>
	                      <tbody>
	                        <tr>
	                          <td style = "text-align:center;">
                					<label>
                   						<input type="checkbox"><span class="colour white"></span>
                					</label>
							  </td>
	                          <td style = "text-align:center;">승부식</td>
	                          <td style = "text-align:center;">2019.02.12</td>
	                          <td style = "text-align:center;">19.3회차</td>
	                          <td style = "text-align:center;">C0D1-38BB-C570-FA30</td>
	                          <td style = "text-align:center;">2,000   <strong>원</strong>	</td>
	                          <td style = "text-align:center;">발매중</td>
	                        </tr>
	                        <tr>
	                          <td style = "text-align:center;">
                					<label>
                   						<input type="checkbox"><span class="colour white"></span>
                					</label>
							  </td>
	                          <td style = "text-align:center;">승부식</td>
	                          <td style = "text-align:center;">2019.02.12</td>
	                          <td style = "text-align:center;">19.3회차</td>
	                          <td style = "text-align:center;">C0D1-38BB-C570-FA31</td>
	                          <td style = "text-align:center;">5,000   <strong>원</strong>	</td>
	                          <td style = "text-align:center;">적중안됨</td>
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