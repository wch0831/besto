<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

<head>  


<!-- Header Include CSS START-->
<%@ include file="/include/header.jsp" %>
<!-- Header Include CSS END-->

<script>
$(document).ready(function() {
	var cnt
	$(document).on("click", ".btn.btn-sm.btn-success", function() {
	seq = $(this).attr("name");
	console.log(seq);
	
	var jsonData = {"gameSeq":seq};
	console.log(jsonData);
	
	$.ajax({
			type:"post",
	        url:"/board_game_schedule.do",
	        contentType : "application/x-www-form-urlencoded; charset=UTF-8", 
	        data : jsonData, 
			success:function(jsonObj){
					console.log(jsonObj);
					var htmlStr = "";
		 			htmlStr += "<table class='table' >";
		 			htmlStr += "<thead bgcolor='#EEEEEE'>";
		 			htmlStr += "<tr>";
		 			htmlStr += "<th style = 'text-align:center;'>경기</th>";
		 			htmlStr += "<th style = 'text-align:center;'>경기일</th>";
		 			htmlStr += "<th style = 'text-align:center;'>대회명</th>";
		 			htmlStr += "<th style = 'text-align:center;'>유형</th>";
		 			htmlStr += "<th style = 'text-align:center;'>홈팀 <span class='badge badge-danger'>VS</span> 원정팀</th>";
		 			htmlStr += "<th style = 'text-align:center;'>경기장소</th>";
		 			htmlStr += "</tr>";
		 			htmlStr += "</thead>";
		 			
		 			$.map(jsonObj, function(vv, idx){
		 			htmlStr += "<tbody>";
			  		htmlStr += "<tr>";
			  		htmlStr += "<td style = 'text-align:center;'>"+vv.gameMno+"</td>";
			  		htmlStr += "<td style = 'text-align:center;'>"+vv.matchStarttime+"</td>";
			  		htmlStr += "<td style = 'text-align:center;'>프리미어리그</td>";
			  		htmlStr += "<td style = 'text-align:center;'><span class='badge badge-info'>일반</span></td>";
			  		htmlStr += "<td style = 'text-align:center;'>"+vv.homeTeamName+"<span class='badge badge-danger'>VS</span>"+vv.awayTeamName+"</td>";
			  		htmlStr += "<td style = 'text-align:center;'>"+vv.matchStadium+"</td>";
			  		htmlStr += "</tr>"
		 			htmlStr += "</tbody>";
			  	});
		 			htmlStr += "</table>"; 
		 			$("#match_schedule").empty();
				  	$("#match_schedule").html(htmlStr);
					
			}
		});
	});
	


});






/* 새창띄우기 Script */
function openWindow_match(seq){  
    window.open("/board_game_victory/"+seq+".do", "승부식보기", "width=1310, height=750, location=no, toolbar=no, menubar=no, scrollbars=yes, resizable=yes" );  
}

function openWindow_history(seq){  
	console.log(seq);
    window.open("/board_game_record/"+seq+".do", "승부식보기", "width=1310, height=750, location=no, toolbar=no, menubar=no, scrollbars=yes, resizable=yes" );  
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
	                          <td style = "text-align:center;">19년 ${vv.gameRoundseq}회차</td>  <!-- "/board_game_record/"+seq+".do" -->
	                          <td><button id="match_open" type="button" class="btn btn-sm btn-success" name="${vv.gameSeq}" style="display: block; margin: 0 auto;">대상경기+</button></td>
	                          <td style = "text-align:center;">${vv.gameFinishdate}</td>
	                          
	                         <c:choose>
	                         <c:when test="${vv.gameGubun=='v'}">
	                         <td><button type="button" class="btn btn-sm btn-danger" style="display: block; margin: 0 auto;" onclick="javascript:openWindow_match(${vv.gameSeq});"> 구매하기> </button></td>
							</c:when>
							<c:when test="${vv.gameGubun=='r'}">
	                         <td><button type="button" class="btn btn-sm btn-danger" style="display: block; margin: 0 auto;" onclick="javascript:openWindow_history(${vv.gameSeq});"> 구매하기> </button></td>
							</c:when>
	                        </c:choose>
	                        </tr>
	                        
	                        <tr>
	                        <div id="match_schedule">
	                        
	                        </div>
	                        </tr>
	                        
	                        </c:forEach>                    
	                      </tbody>  
	                    </table>
                  </div>

                  
                  
                </form>
                
                <div class="table-responsive col-md-12">
                <hr>
	                    
<!-- c:if 승부식게임버튼클릭 -> 아래의 테이블 보이기 -->
	                    
	                    
	                    
	                    
	                    
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