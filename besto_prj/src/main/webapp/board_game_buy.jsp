<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

<head>  


<!-- Header Include CSS START-->
<%@ include file="/include/header.jsp" %>
<!-- Header Include CSS END-->

<script>








/* 새창띄우기 Script */
function openWindow_match(){  
    window.open("board_open_window_match.jsp", "승부식보기", "width=1310, height=750, location=no, toolbar=no, menubar=no, scrollbars=yes, resizable=yes" );  
}

function openWindow_history(){  
    window.open("board_open_window_history.jsp", "승부식보기", "width=1310, height=750, location=no, toolbar=no, menubar=no, scrollbars=yes, resizable=yes" );  
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
              <p class="text-muted lead"><font size="2">베스토의 구매가능 게임을 볼 수 있습니다.</font></p>
              
              <div id="basket" class="col-lg-12">
                <form method="get" action="shop-checkout1.html">
                  <div class="table-responsive">
                  <h4>◈ 구매가능 게임</h4>
                    <table class="table">
	                      <thead bgcolor="#EEEEEE">
	                        <tr>
	                          <th style = "text-align:center;">게임구분</th>
	                          <th style = "text-align:center;">회차</th>
	                          <th style = "text-align:center;">경기보기</th>
	                          <th style = "text-align:center;">회차 마감일시</th>
	                          <th style = "text-align:center;">게임구매</th>
	                        </tr>
	                      </thead>
	                      <tbody>
	                      	<c:forEach var="vv" items="${ALIST}">
	                        <tr>
	                        <c:choose>
	                        <c:when test="${vv.gameGubun=='v'}">
	                          <td style = "text-align:center;">승부식</td>
	                        </c:when>
	                         <c:when test="${vv.gameGubun=='r'}">
	                          <td style = "text-align:center;">기록식</td> 
	                        </c:when>
	                        </c:choose>
	                          <td style = "text-align:center;">19년 ${vv.gameRoundseq}회차</td>
	                          <td><button id="match_open" type="button" class="btn btn-sm btn-success" style="display: block; margin: 0 auto;">대상경기+</button></td>
	                          <td style = "text-align:center;">${vv.gameFinishdate}</td>
	                         <c:choose>
	                         <c:when test="${vv.gameGubun=='v'}">
	                         <td><button type="button" class="btn btn-sm btn-danger" style="display: block; margin: 0 auto;" onclick="javascript:openWindow_match();"> 구매하기> </button></td>
							</c:when>
							<c:when test="${vv.gameGubun=='r'}">
	                         <td><button type="button" class="btn btn-sm btn-danger" style="display: block; margin: 0 auto;" onclick="javascript:openWindow_history();"> 구매하기> </button></td>
							</c:when>
	                        </c:choose> 
	                         
	                        </tr>	    
	                        </c:forEach>                    
	                      </tbody>  
	                    </table>
                  </div>

                  
                  
                </form>
                
                <div class="table-responsive col-md-12">
                <hr>
             
<!-- c:if 기록식게임버튼클릭 -> 아래의 테이블 보이기 -->
                    <table id="game_history_view" class="table" >
	                      <thead bgcolor="#EEEEEE">
	                        <tr>
	                          <th style = "text-align:center;">게임</th>
	                          <th style = "text-align:center;">경기일</th>
	                          <th style = "text-align:center;">경기시간</th>
	                          <th style = "text-align:center;">게임주제</th>
	                          <th style = "text-align:center;">경기장소</th>
	                        </tr>
	                      </thead>
	                      <tbody>
	                        <tr>
	                          <td style = "text-align:center;">A</td>
	                          <td style = "text-align:center;">19.02.16</td>
	                          <td style = "text-align:center;">19:00</td>
	                          <td style = "text-align:center;">EPL 울버햄틴-뉴캐슬 점수</td>
	                          <td style = "text-align:center;">몰리뉴스타디움</td>
	                        </tr>
	                        <tr>
	                          <td style = "text-align:center;">B</td>
	                          <td style = "text-align:center;">19.02.16</td>
	                          <td style = "text-align:center;">19:00</td>
	                          <td style = "text-align:center;">EPL 울버햄틴-뉴캐슬 점수</td>
	                          <td style = "text-align:center;">몰리뉴스타디움</td>
	                        </tr>
	                        <tr>
	                          <td style = "text-align:center;">C</td>
	                          <td style = "text-align:center;">19.02.16</td>
	                          <td style = "text-align:center;">19:00</td>
	                          <td style = "text-align:center;">EPL 울버햄틴-뉴캐슬 점수</td>
	                          <td style = "text-align:center;">몰리뉴스타디움</td>
	                        </tr>
	                      </tbody>
	                    </table>
	                    
<!-- c:if 승부식게임버튼클릭 -> 아래의 테이블 보이기 -->
	                    <table id="game_match_view" class="table" >
	                      <thead bgcolor="#EEEEEE">
	                        <tr>
	                          <th style = "text-align:center;">경기</th>
	                          <th style = "text-align:center;">경기일</th>
	                          <th style = "text-align:center;">경기시간</th>
	                          <th style = "text-align:center;">대회명</th>
	                          <th style = "text-align:center;">유형</th>
	                          <th style = "text-align:center;">홈팀 <span class="badge badge-danger">VS</span> 원정팀</th>
	                          <th style = "text-align:center;">경기장소</th>
	                        </tr>
	                      </thead>
	                      <tbody>
	                        <tr>
	                          <td style = "text-align:center;">1</td>
	                          <td style = "text-align:center;">19.02.16</td>
	                          <td style = "text-align:center;">19:00</td>
	                          <td style = "text-align:center;">세리에A</td>
	                          <td style = "text-align:center;"><span class="badge badge-info">일반</span></td>
	                          <td style = "text-align:center;">유벤투스 <span class="badge badge-danger">VS</span> 프로시노</td>
	                          <td style = "text-align:center;">알리안츠스타디움</td>
	                        </tr>
	                        <tr>
	                          <td style = "text-align:center;">1</td>
	                          <td style = "text-align:center;">19.02.16</td>
	                          <td style = "text-align:center;">19:00</td>
	                          <td style = "text-align:center;">세리에A</td>
	                          <td style = "text-align:center;"><span class="badge badge-info">일반</span></td>
	                          <td style = "text-align:center;">유벤투스 <span class="badge badge-danger">VS</span> 프로시노</td>
	                          <td style = "text-align:center;">알리안츠스타디움</td>
	                        </tr>
	                        <tr>
	                          <td style = "text-align:center;">1</td>
	                          <td style = "text-align:center;">19.02.16</td>
	                          <td style = "text-align:center;">19:00</td>
	                          <td style = "text-align:center;">세리에A</td>
	                          <td style = "text-align:center;"><span class="badge badge-info">일반</span></td>
	                          <td style = "text-align:center;">유벤투스 <span class="badge badge-danger">VS</span> 프로시노</td>
	                          <td style = "text-align:center;">알리안츠스타디움</td>
	                        </tr>
	                      </tbody>
	                    </table>
	                    
	                    
	                    
	                    
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