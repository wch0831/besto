<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<!-- Header Include CSS START-->
<%@ include file="/include/header.jsp" %>
<!-- Header Include CSS END-->

<script>
function member_idCheck(){  
    window.open("member_open_window_id_check.jsp", "아이디 중복체크", "width=630, height=350, location=no, toolbar=no, menubar=no, scrollbars=yes, resizable=no" );  
}
</script>

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
              <h1 class="h2">회원가입</h1>
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

			<blockquote class="blockquote">
			<p><h3>이용약관</h3></p>
                    <p><h4>여러분을 환영합니다.</h4>베스토(BESTO) 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 베스토(BESTO) 서비스의 이용과 관련하여 베스토(BESTO) 서비스를 제공하는 베스토(BESTO) 주식회사(이하 ‘베토디’)와 이를 이용하는 베스토(BESTO) 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 베스토(BESTO) 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.</p>
            </blockquote>
              <div class="checkbox">
                <label>
                   <input type="checkbox"><span class="colour white"></span> 베토디 이용약관 동의 <font size="2" color="green">(필수)</font>
                </label>
              </div>
              
              <hr>
              <div class="bo3">
                <div class="heading">
                  <h3 class="text-uppercase">회원가입</h3>
                </div>
                <form>
                  <div class="row">
                    <div class="col-md-6">
                      <div class="form-group">
                        <label for="firstname">아이디<font size="2" color="green">(필수)</font></label>
                        <input id="firstname" type="text" class="form-control">
                        <button type="button" class="btn btn-template-main pull-right" onclick="javascript:member_idCheck();">중복확인</button>
                      </div>
                    <br><br>
                    </div>
                  </div>
                  
                  <div class="row">
                    <div class="col-md-6">
                      <div class="form-group">
                        <label for="company">비밀번호<font size="2" color="green">(필수)</font></label>
                        <input id="company" type="text" class="form-control">
                      </div>
                      <br><br>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group">
                        <label for="street">비밀번호 재확인<font size="2" color="green">(필수)</font></label>
                        <input id="street" type="text" class="form-control">
                      </div>
                    </div>
                  </div>
                  
                  <div class="row">
                    <div class="col-md-6 col-lg-3">
                      <div class="form-group">
                        <label for="city">이름<font size="2" color="green">(필수)</font></label>
                        <input id="city" type="text" class="form-control">
                      </div>
                      <br><br>
                    </div>
                    <div class="col-md-6 col-lg-3">
                      <div class="form-group">
                        <label for="zip">전화번호<font size="2" color="green">(필수)</font></label>
                        <input id="zip" type="text" class="form-control">
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group">
                        <label for="phone">이메일<font size="2" color="green">(필수)</font></label>
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
                      <button type="submit" class="btn btn-template-outlined"><i class="fa fa-save"></i> 가입하기 </button>
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