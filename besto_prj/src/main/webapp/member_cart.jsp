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
              <h1 class="h2">쇼핑카트</h1>
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
                    <h4>◈ 쇼핑카트</h4>
                  		<p class="text-muted lead"><font size="2">상세내용을 보시려면 <strong>게임종류, 구매일시, 상태</strong>를 클릭해 주세요.</font></p>
                    <div class="table-responsive">
                  <table class="table">
                    <thead>
                      <tr>
                        <th>/</th>
                        <th>게임종류</th>
                        <th>발매회차</th>
                        <th>보관일시</th>
                        <th>구매금액</th>
                        <th>상태</th>
                        <th>수정/삭제</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td><input type="checkbox"></td>
                        <td>승부식</td>
                        <td>19.2회차</td>
                        <td>19.02.12 18:30</td>
                        <td>95,000 <strong>원</strong></td>
                        <td>대기중</td>
                        <td><a href="#"><i class="fa fa-trash-o"></i></a></td>
                      </tr>
                      <tr>
                        <td><input type="checkbox"></td>
                        <td>승부식</td>
                        <td>19.2회차</td>
                        <td>19.02.12 18:30</td>
                        <td>95,000 <strong>원</strong></td>
                        <td>대기중</td>
                        <td><a href="#"><i class="fa fa-trash-o"></i></a></td>
                      </tr>
                    </tbody>
                  </table>
                </div>
                <hr>
               </div>
                <button type="button" class="btn btn-sm btn-danger pull-right"><i class="fa fa-trash-o"></i>카트 비우기</button>
                  <button type="button" class="btn btn-outline-primary" style="display:block; margin:0 auto;">결제하기</button>
                </form>
            </div>
            <br>
            
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