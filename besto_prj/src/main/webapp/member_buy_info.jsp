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
              <h1 class="h2">구매현황분석</h1>
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
                    <h4>◈ 구매현황분석</h4>
                  		<p class="text-muted lead"><font size="2">상세내용을 보시려면 <strong>게임종류, 구매일시, 상태</strong>를 클릭해 주세요.</font></p>
                    <div class="table-responsive">
                    <h5>◈ 기본구매현황</h5>
                    <h6></h6>
                  <table class="table">
                    <thead>
                      <tr>
                        <th>구매금액</th>
                        <th>적중금액</th>
                        <th>환급률</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>140,000 <strong>원</strong></td>
                        <td>95,000 <strong>원</strong></td>
                        <td>63%</td>
                      </tr>
                    </tbody>
                    <tfoot>
                      <tr>
                        <th colspan="5" class="text-right"><h5>▶ 최고 적중금액</h5>
                        									   45,000 <strong>원</strong>	</th>
                      </tr>
                    </tfoot>
                  </table>
                </div>
                <hr>
               </div>
                  
     <section class="bar mt-0">
     <h5>◈ 게임별 구매현황</h5>
     <br>
            <div class="row">
              <div class="col-md-4">
                <div class="heading">
                  <h5>게임별 구매율</h5><font size="2">(단위:%)</font>
                </div>
                
                <div style=" height: 20px; border-radius: 0; margin-bottom: 20px;" class="progress">
                  <div role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100" style="width: 90%;" class="progress-bar bg-primary">프로토 승부식</div>
                </div>
                <div style=" height: 20px; border-radius: 0; margin-bottom: 20px;" class="progress">
                  <div role="progressbar" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100" style="width: 85%;" class="progress-bar bg-primary">프로토 기록식</div>
                </div>
                
              </div>
              <div class="col-md-4">
                <div class="heading">
                  <h5>게임별 환급률</h5><font size="2">(단위:%)</font>
                </div>
                
                <div style=" height: 20px; border-radius: 0; margin-bottom: 20px;" class="progress">
                  <div role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 50%;" class="progress-bar bg-primary">프로토 승부식</div>
                </div>
                
                <div style=" height: 20px; border-radius: 0; margin-bottom: 20px;" class="progress">
                  <div role="progressbar" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100" style="width: 85%;" class="progress-bar bg-primary">프로토 기록식</div>
                </div>
              </div>
              
              <div class="col-md-4">
                <div class="heading">
                  <h5>게임별 적중률</h5><font size="2">(단위:%)</font>
                </div>
                <div style=" height: 20px; border-radius: 0; margin-bottom: 20px;" class="progress">
                  <div role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 10%;" class="progress-bar bg-primary">프로토 승부식</div>
                </div>
                <div style=" height: 20px; border-radius: 0; margin-bottom: 20px;" class="progress">
                  <div role="progressbar" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100" style="width: 85%;" class="progress-bar bg-primary">프로토 기록식</div>
                </div>
              </div>
            </div>
          </section>             
                  
                  
                </form>
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