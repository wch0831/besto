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
              <h1 class="h2">적중결과</h1>
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
              
              <div id="basket" class="col-lg-12">
                <form method="get" action="shop-checkout1.html">
                  <div class="table-responsive">
                  <h4>◈ 현재 진행 중 게임</h4>
                  
                    <table class="table">
                         <thead bgcolor="#EEEEEE">
                           <tr>
                             <th style = "text-align:center;">게임명</th>
                             <th style = "text-align:center;">게임마감일</th>
                             <th style = "text-align:center;">게임상태</th>
                           </tr>
                         </thead>
                         <tbody>
                         <c:forEach var="vv" items="${GLIST}">
                           <tr>
                           
                           <c:choose>
	                        <c:when test="${vv.gameGubun=='v'}">
	                          <td style = "text-align:center;"><a href="game_manager_deadline_detail.do?gameSeq=${vv.gameSeq}"><font color="green">프로토 승부식  ${vv.gameRoundseq}회차</font></a></td>
	                        </c:when>
	                        <c:when test="${vv.gameGubun=='r'}">
	                          <td style = "text-align:center;"><a href="game_manager_deadline_detail.do?gameSeq=${vv.gameSeq}"><font color="green">프로토 기록식  ${vv.gameRoundseq}회차</font></a></td>
	                        </c:when>
	                        </c:choose>
	                        
                              <td style = "text-align:center;">${vv.gameFinishdate} ~ 경기별 10분전까지 마감 선택</td>
                              
                              <c:choose>
							<c:when test="${vv.gameStatus=='f'}">
	                        <td style = "text-align:center;">발매마감</td>
							</c:when>
							<c:when test="${vv.gameStatus=='p'}">
	                        <td style = "text-align:center;">발매중</td>
							</c:when>
	                        </c:choose>
                           </tr>
                         </c:forEach>
                         </tbody>
                       </table>
                  </div>
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