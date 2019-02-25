<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<!-- Header Include CSS START-->
<%@ include file="/include/header.jsp" %>
<!-- Header Include CSS END-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	function autoHypenPhone(str){
		   
	    str = str.replace(/[^0-9]/g, '');
	    var tmp = '';
	    if( str.length < 4){
	      return str;
	    }else if(str.length < 7){
	      tmp += str.substr(0, 3);
	      tmp += '-';
	      tmp += str.substr(3);
	      return tmp;
	    }else if(str.length < 11){
	      tmp += str.substr(0, 3);
	      tmp += '-';
	      tmp += str.substr(3, 3);
	      tmp += '-';
	      tmp += str.substr(6);
	      return tmp;
	    }else{        
	      tmp += str.substr(0, 3);
	      tmp += '-';
	      tmp += str.substr(3, 4);
	      tmp += '-';
	      tmp += str.substr(7);
	      return tmp;
	    }
	    return str;
	}

$(document).ready(function(){
	
	$("#usersPhone").keyup(function() {
	    event = event || window.event;
	      var _val = this.value.trim();
	      this.value = autoHypenPhone(_val) ;
	    
	 });
	
	
	$("#updateBtn").click(function(){
        var pw = regform.usersPw.value;
        var pw2 = regform.usersPw2.value;
        var phone = regform.usersPhone.value;
        var email = regform.usersEmail.value;
        if(pw == ""){
           alert("비밀번호를 입력해주세요.");
           $("#usersPw").focus();
           return false;
        }
        if(pw != pw2){
           alert("비밀번호가 다릅니다.");
           $("#usersPw").focus();
           return false;
        }if(phone == ""){
            alert("전화번호를 입력해주세요.");
            $("#usersPhone").focus();
            return false;
        }if(email == ""){
            alert("이메일을 입력해주세요.");
            $("#usersEmail").focus();
            return false;
        }
        $("#updateform").submit();
    });
	
	$("#canBtn").click(function() {
		location.href = 'index.jsp';
	});
});
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
                <form id="updateform" method="post" action="/updateuinfo.do">
                  <div class="row">
                    <div class="col-md-6">
                      <div class="form-group">
                        <label for="id">아이디<font size="2" color="red">(변경불가)</font></label>
                        <input id="usersId" name="usersId" type="text" class="form-control" readonly="readonly" value="${MDETAIL.usersId}">
                      </div>
                    <br><br>
                    </div>
                  </div>
                  
                  <div class="row">
                    <div class="col-md-6">
                      <div class="form-group">
                        <label for="password_1">변경할 비밀번호<font size="2" color="green"></font></label>
                        <input id="usersPw" name="usersPw" type="password" class="form-control" value="${MDETAIL.usersPw}">
                      </div>
                      <br><br>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group">
                        <label for="password_2">비밀번호 재확인<font size="2" color="green"></font></label>
                        <input id="usersPw2" type="password" class="form-control" value="${MDETAIL.usersPw}">
                      </div>
                    </div>
                  </div>
                  
                  <div class="row">
                    <div class="col-md-6 col-lg-3">
                      <div class="form-group">
                        <label for="city">이름<font size="2" color="red">(변경불가)</font></label>
                        <input id="usersName" name="usersName" type="text" class="form-control" readonly="readonly" value="${MDETAIL.usersName}">
                      </div>
                      <br><br>
                    </div>
                    <div class="col-md-6 col-lg-3">
                      <div class="form-group">
                        <label for="zip">전화번호<font size="2" color="green"></font></label>
                        <input id="usersPhone" name="usersPhone" type="text" class="form-control" value="${MDETAIL.usersPhone}">
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group">
                        <label for="phone">이메일<font size="2" color="green"></font></label>
                        <input id="usersEmail" name="usersEmail" type="text" class="form-control" value="${MDETAIL.usersEmail}">
                      </div>
                    </div>
                    </div>
                   
                    
                    <div class="row">
                    <div class="col-md-2">
                    	<div id="postcodify" name="postcodify" class="form-group">
                    	</div>
                    </div>
                    <div class="col-md-5">
                      <div class="form-group">
                        <label for="email_account">주소</label>
                        <input id="usersAddress" name="usersAddress" type="text" class="form-control" value="${MDETAIL.usersAddress}">
                      </div>
                    </div>
                    <div class="col-md-5">
                      <div class="form-group">
                        <label for="account_addres">상세주소</label>
                        <input id="usersDetailAddress" name="usersDetailAddress" type="text" class="form-control" value="${MDETAIL.usersDetailAddress}">
                      </div>
                    <br><br><br>
                    </div>
                    
                  </div>
                    <div class="col-md-12 text-center">
                    <hr>
                    <button id="updateBtn" type="submit" class="btn btn-template-outlined"><i class="fa fa-save"></i> 개인정보 변경 </button>
                    <button type="canBtn" class="btn btn-template-outlined">취소 </button>
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
	
<script src="https://d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
<script>
$(function() {
	$("#postcodify").postcodify({
	    insertPostcode5 : "",
	    insertAddress : "#usersAddress",
	    insertDetails : "#usersDetailAddress",
	    insertExtraInfo : "",
	    insertJibeonAddress : "",
	    insertEnglishAddress : "",
	    hideOldAddresses : false,
	    forceDisplayPostcode5 : true,
	    focusKeyword : false,
	    afterSelect : function() {
	        $("#postcodify").find(".postcodify_search_result,.postcodify_search_status").remove();
	    },
	    onReady: function() {
	        $("#guide_content div.section input.keyword").each(function() {
	            $(this).width($(this).parents("div.section").width() - 130);
	        });
	    }
	});
});
</script>

  </body>
</html>