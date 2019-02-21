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
              <h1 class="h2">회원탈퇴</h1>
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
                <form method="post" action="/Passwordhg.do">
                  <div class="table-responsive">
                    <h4>◈ 회원탈퇴</h4>
                  		<p class="text-muted lead"><font size="2" color="red">※ 비밀번호 확인이 이루어지면 즉시 탈퇴되며, 예치금은 소멸됩니다.</font></p>
                    <div class="table-responsive">
                    <h5>▶ 본인확인</h5>
                  
                  <div class="col-md-4 pull-center">
                  <br>
                    <h5>※ 비밀번호 확인</h5>
                    <input id="usersPw" name="usersPw" type="password" class="form-control">
                    <br>
                    <button type="submit" class="btn btn-template-outlined" style="display: block; margin: 0 auto;">탈퇴하기</button>
                    <input id="checkm" name="checkm" type="hidden" value="2">
                    <br>
                    
                </div>
                </div>
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