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
              <h1 class="h2">구매가능 게임</h1>
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
<%@ include file="/include/sidebar_board_main.jsp" %>
<!-- Sidebar_Main Include CSS END-->
              
            </div>
            
<!-- 게시판 메인부분 -->
            <div class="col-md-10">
              <p class="text-muted lead"><font size="2">남을 비방하는 글이나 욕설, 게시판 성격에 맞지 않거나 광고성 게시물은 사전 동의없이 삭제될 수 있습니다. 답변을 원하시는 건의 및 문의 사항은 고객센터 > 고객상담실을 이용하여 주시기 바랍니다. </font></p>
              
              <div id="basket" class="col-lg-12">
                <form method="get" action="shop-checkout1.html">
                  <div class="table-responsive">
                  <h4>◈ 구매가능 게임</h4>
                    <table class="table">
	                      <thead>
	                        <tr>
	                          <th style = "text-align:center;">게임구분</th>
	                          <th style = "text-align:center;">회차</th>
	                          <th style = "text-align:center;">경기보기</th>
	                          <th style = "text-align:center;">회차 마감일시</th>
	                          <th style = "text-align:center;">게임구매</th>
	                        </tr>
	                      </thead>
	                      <tbody>
	                        <tr>
	                          <td style = "text-align:center;">승부식</td>
	                          <td style = "text-align:center;">19.3회차</td>
	                          <td><button type="button" class="btn btn-sm btn-success" style="display: block; margin: 0 auto;">대상경기+</button></td>
	                          <td style = "text-align:center;">2019.02.12 09:20</td>
	                          <td><button type="button" class="btn btn-sm btn-danger" style="display: block; margin: 0 auto;"  
	                          			  data-toggle="modal" data-target="#login-modal"> 구매하기> </button></td>
	                        </tr>
	                        <tr>
	                          <td style = "text-align:center;">기록식</td>
	                          <td style = "text-align:center;">19.3회차</td>
	                          <td><button type="button" class="btn btn-sm btn-success" style="display: block; margin: 0 auto;">대상경기+</button></td>
	                          <td style = "text-align:center;">2019.02.12 09:20</td>
	                          <td><button type="button" class="btn btn-sm btn-danger" style="display: block; margin: 0 auto;">구매하기></button></td>
	                        </tr>
	                      </tbody>
	                    </table>
                  </div>
                  
              
              
              
                  
 <!-- if 승부식이라면  -->
       <!--<div id="#login-modal" tabindex="" role="dialog" aria-labelledby="game_vs" aria-hidden="true" class="modal fade">
        <div role="document" class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h4 id="game_vs" class="modal-title">프로토 승부식</h4>
              <button type="button" data-dismiss="modal" aria-label="Close" class="close"><span aria-hidden="true">×</span></button>
            </div>
            
            <div class="modal-body">
				
            </div>
            
          </div>
        </div>
      </div>
                  
                  
if 기록식이라면 
      <div id="#login-modal" tabindex="" role="dialog" aria-labelledby="login-modalLabel" aria-hidden="true" class="modal fade">
        <div role="document" class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h4 id="login-modalLabel" class="modal-title">프로토 기록식</h4>
              <button type="button" data-dismiss="modal_1" aria-label="Close" class="close"><span aria-hidden="true">X</span></button>
            </div>
            
            <div class="modal-body">
                <div class="form-group">
                  <input id="email_modal" type="text" placeholder="ID" class="form-control">
                </div>
                
                <p class="text-center"><button class="btn btn-template-outlined"><i class="fa fa-sign-in"></i> 로그인</button>
                </p>
              <p class="text-center text-muted">아직 회원이 아니세요?</p>
              <p class="text-center text-muted"><a href="member_register.jsp"><strong>회원가입 하기</strong></a></p>
            </div>
            
          </div>
        </div>
      </div>     
-->       
                  
                  
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