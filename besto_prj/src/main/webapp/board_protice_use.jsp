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
              <h1 class="h2">사이트 이용안내</h1>
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

<!-- Sidebar Include CSS START-->
<%@ include file="/include/sidebar_board_protice.jsp" %>
<!-- Sidebar Include CSS END--> 
              
            </div>
            
<!-- 게시판 메인부분 -->
            <div class="col-md-10">
              <p class="text-muted lead"><font size="2"> 온라인으로 즐기는 프로토 - 베토디 사이트 이용방법을 알려드립니다.</font></p>
              
              <div id="basket" class="col-lg-12">
                <form method="get" action="shop-checkout1.html">
                  <div class="table-responsive">
                  <h4>◈ 사이트 이용안내</h4>
                    <br>
                    <div id="text-page">
                  <h2>베토디는 체육진흥투표권 공식 인터넷 발매상이트로서 발매되는<br>프로토 게임을 온라인으로 쉽게 참여할 수 있습니다.</h2>
                  <p>또한, 게임을 보다 재미있게 즐길 수 있도록, 경기분석을 위한 다양한 스포츠 경기정보 서비스와 분석정보를 공유할 수 있는 게시판 등 다양한 서비스를 제공해 드리고 있습니다. 다양하고 신뢰성 있는 베트맨 경기정보를 통해 종목별 대상경기에 대한 지식도 넓히고, 적중확률도 꾸준히 높여나갈 수 있습니다. </p>
                  <hr>
                </div>
                <br>
                <div id="text-page">
                  <h2>또 하나의 스포츠, 프로토</h2>
                  <p><strong>프로토는 가장 역동적인 드라마인 스포츠의 데이터를 근거로 과학적으로 분석하여 베팅하고,<br>적중의 즐거움을 느낄 수 있는 선진국형 레저스포츠 게임입니다.</strong></p>
                  <p>스포츠 관람과 함께 게임을 즐기고, 대상경기 분석을 통하여 지적 쾌감도 느낄 수 있습니다. 또한 적중되지 않더라도 프로토 게임에 참여하신 금액으로 조성된 기금을 통해 국민체육진흥기금조성 및 유소년체육 지원 등 국내 스포츠 발전에 쓰여지게 됩니다. </p>
                </div>
                    
                  </div>
                </form>
            </div>
            <hr>

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