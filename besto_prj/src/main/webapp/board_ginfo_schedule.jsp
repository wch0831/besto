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
					//오늘의 경기 ajax

	            $.ajax({ 
	                  url:"http://192.168.0.45:8087/matchRest.do",
	                  type:"get",
	                  success:function(jsonObj){
	                	  var arraystra=JSON.stringify (jsonObj);
	                     	console.log("hi");
	                        console.log(arraystra);    
	                        var htmlStr = "";
	                        	$.each(jsonObj, function(index, vv){
	                        		htmlStr+="<tr>"
	                        			htmlStr+="<td style = 'text-align:center;'>프리미어 리그</td>";
	                        			htmlStr+="<td style = 'text-align:center;'>"+vv.matchStarttime+"</td>";
	                        			htmlStr+="<td style = 'text-align:center;'>"+vv.matchHometeam+"<span class='badge badge-danger'>VS</span> "+vv.matchAwayteam+"</td>";
	                        			htmlStr+="<td style = 'text-align:center;'>"+vv.matchStadium+"</td>";
	                        			htmlStr+="<td style = 'text-align:center;'>"+vv.gameSeq+"</td>";
	                        			htmlStr+="</tr>"	
	        				 });	
	                        	$("#matchPlane").html(htmlStr);
	                  }
	         }); //end of ajax       
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
              <h1 class="h2">경기정보</h1>
            </div>
            <div class="col-md-5">
              <ul class="breadcrumb d-flex justify-content-end">
                <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                <li class="breadcrumb-item active">경기정보</li>
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
                  <h4>◈ 경기일정</h4>
                  <br>
                    <table class="table">
	                      <thead bgcolor="#EEEEEE">
	                        <tr>
	                          <th style = "text-align:center;">리그</th>
	                          <th style = "text-align:center;">경기 시작시간</th>
	                          <th style = "text-align:center;">홈팀 <span class="badge badge-danger">VS</span> 원정팀</th>
	                          <th style = "text-align:center;">구장정보</th>
	                          <th style = "text-align:center;">대상게임</th>
	                          <th style = "text-align:center;">비고</th>
	                        </tr>
	                      </thead>
	                      <tbody id="matchPlane">
	                       
	                      </tbody>
	                    </table>
                  </div>
                </form>
            </div>
            <hr>
            
            
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