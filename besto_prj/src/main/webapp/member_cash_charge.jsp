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
              <h1 class="h2">예치금 > 충전하기</h1>
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
                    <h4>◈ 예치금 > 충전하기</h4>
                  		<p class="text-muted lead"><font size="2">예치금은 회원님의 돈을 미리 충전해두고 게임구매 시 번거로운 사용절차 없이 간단하고 빠르게 결재하실 수 있는 서비스입니다.</font></p>
                    <div class="table-responsive">
                    <div role="alert" class="alert alert-success">※ 현재 예치금 잔액 : <strong>30,000 원		 &emsp;&emsp;&emsp;&nbsp;&nbsp;</strong>
                    <button type="button" class="btn btn-link">내역보기</button>
                    <button type="button" class="btn btn-link">출금하기</button>
                    </div>
                    
                    
                    <div class="col-md-13">
                  <div class="box-simple box-dark same-height">
                    <h4>카카오 페이 결제</h4>
                    <a href="#"><img src="img/kakaopay.png"></a>
                    <p><font size="3">※ 베스토(BESTO)는 카카오페이 결제를 이용하고있습니다.</font></p>
                    <p><font size="2">결재를 원하시면 카카오페이 그림을 클릭해주세요.</font></p>
                  </div>
                </div>
                  
                  
                  
                </div>
                <hr>
               </div>
                </form>
            </div>
            <br>
              
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