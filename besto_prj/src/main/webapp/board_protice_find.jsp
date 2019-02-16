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
              <h1 class="h2">ID/PW 찾기</h1>
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
              <h4>◈ ID/PW 찾기</h4>
              <p><font size="2">아이디 또는 비밀번호를 찾으실 회원님께서는 아래의 인증 방법 중 하나를 선택해 주세요.</font></p>
           <div class="row">
            <div class="col-lg-6">
              <div class="box">
              <blockquote class="blockquote">
                <h2 class="text-uppercase">아이디 찾기</h2>
                <p>아이디는 가입 시 입력했던 이메일(e-mail)을 통해 확인하실 수 있습니다.</p>
              </blockquote>
                <p class="text-muted">※본인 인증 시 입력하신 정보는 베스토에서 직접수집하며, 인증 이외의 용도로 이용 또는 저장되지 않습니다.</p>
                <br>
                <form action="customer-orders.html" method="get">
                  
                  <div class="form-group">
                    <label for="email-login">이메일(Email)</label>
                    <input id="email-login" type="text" class="form-control">
                  </div>
                  
                  <div class="text-center">
                    <button type="submit" class="btn btn-template-outlined"><i class="fa fa-user-md"></i> 아이디 찾기</button>
                  </div>
                </form>
              </div>
            </div>
            
            
            <div class="col-lg-6">
              <div class="box">
              <blockquote class="blockquote">
                <h2 class="text-uppercase">비밀번호 찾기</h2>
                <p>본인의 아이디와 이메일(e-mail)을 통해 임시비밀번호를 발급받으실 수 있습니다.</p>
              </blockquote>
                <form action="customer-orders.html" method="get">
                  <div class="form-group">
                    <label for="id">아이디</label>
                    <input id="id" type="text" class="form-control">
                  </div>
                  <div class="form-group">
                    <label for="email">이메일(Email)</label>
                    <input id="email" type="text" class="form-control">
                  </div>
                  <div class="text-center">
                    <button type="submit" class="btn btn-template-outlined"><i class="fa fa-sign-in"></i> 임시비밀번호 발급</button>
                  </div>
                </form>
              </div>
            </div>
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