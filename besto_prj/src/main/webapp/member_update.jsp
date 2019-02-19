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
              <h1 class="h2">마이페이지 > 개인정보 > 개인정보 수정</h1>
            </div>
            <div class="col-md-5">
              <ul class="breadcrumb d-flex justify-content-end">
                <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                <li class="breadcrumb-item active">My Account</li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      
      
      
      <div id="content">
        <div class="container">
          <div class="row bar">
            <div id="customer-account" class="col-lg-12 clearfix">

              <hr>
              <div class="bo3">
                <div class="heading">
                  <h3 class="text-uppercase">개인정보 수정</h3>
                </div>
                  <br>
                <form>
                  <div class="row">
                    <div class="col-md-6">
                      <div class="form-group">
                        <label for="id">아이디<font size="2" color="red">(변경불가)</font></label>
                        <input id="id" type="text" class="form-control" readonly="readonly">
                      </div>
                    <br><br>
                    </div>
                  </div>
                  
                  <div class="row">
                    <div class="col-md-6">
                      <div class="form-group">
                        <label for="password_1">변경할 비밀번호<font size="2" color="green"></font></label>
                        <input id="password_1" type="password" class="form-control">
                      </div>
                      <br><br>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group">
                        <label for="password_2">비밀번호 재확인<font size="2" color="green"></font></label>
                        <input id="password_2" type="password" class="form-control">
                      </div>
                    </div>
                  </div>
                  
                  <div class="row">
                    <div class="col-md-6 col-lg-3">
                      <div class="form-group">
                        <label for="city">이름<font size="2" color="red">(변경불가)</font></label>
                        <input id="city" type="text" class="form-control" readonly="readonly">
                      </div>
                      <br><br>
                    </div>
                    <div class="col-md-6 col-lg-3">
                      <div class="form-group">
                        <label for="zip">전화번호<font size="2" color="green"></font></label>
                        <input id="zip" type="text" class="form-control">
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group">
                        <label for="phone">이메일<font size="2" color="green"></font></label>
                        <input id="phone" type="text" class="form-control">
                      </div>
                    </div>
                    </div>
                   
                    
                    <div class="row">
                    <div class="col-md-6">
                      <div class="form-group">
                        <label for="email_account">주소</label>
                        <input id="email_account" type="text" class="form-control"><button type="button" class="btn btn-template-main pull-right">주소검색</button>
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group">
                        <label for="account_addres">상세주소</label>
                        <input id="account_addres" type="text" class="form-control">
                      </div>
                    <br><br><br>
                    </div>
                    
                  </div>
                    <div class="col-md-12 text-center">
                    <hr>
                      <button type="submit" class="btn btn-template-outlined"><i class="fa fa-save"></i> 개인정보 변경 </button>
                    <button type="button" class="btn btn-template-outlined">취소 </button>
                    <br>
                    </div>
                </form>
              </div>
              <br>
            </div>
            
            
            
<!-- ------ -->
            
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