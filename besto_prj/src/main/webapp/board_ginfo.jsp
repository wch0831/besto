<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

<head>  
<!-- Header Include CSS START--> 
<%@ include file="/include/header.jsp" %>
<!-- Header Include CSS END-->
<%@ include file="/include/header.jsp"%>
<!-- Header Include CSS END-->
<script>
$(document).ready(function() {
	
					//오늘의 경기 ajax
	            $.ajax({ 
	                  url:"http://localhost:8082/todayMatchRest.do",
	                  type:"get",
	                  success:function(jsonObj){
	                     	console.log("hi");
	                        console.log(jsonObj);    
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
	                        	$("#todaymatch").html(htmlStr);
	                  }
	         }); //end of ajax 
	         
	         
	         	//순위 정보 ajax
	            $.ajax({ 
	                  url:"http://localhost:8082/bestoapi/rankinfo.do",
	                  type:"get",
	                  success:function(jsonObj){
	                     	console.log("hi");
	                        console.log(jsonObj);     
	                        var htmlStr = "";

	                        $.each(jsonObj, function(index, vv){
	                        	htmlStr+="<tr>";
	                        	htmlStr+="<td style = 'text-align:center;'>"+vv.rank+"</td>";
	                        	htmlStr+="<td style = 'text-align:center;'>"+vv.team+"</td>";
	                        	htmlStr+="<td style = 'text-align:center;'>"+vv.matchcount+"</td>";
	                        	htmlStr+="<td style = 'text-align:center;'>"+vv.winpoint+"</td>";
	                        	htmlStr+="<td style = 'text-align:center;'>"+vv.win+"</td>";
	                        	htmlStr+="<td style = 'text-align:center;'>"+vv.tie+"</td>";
	                        	htmlStr+="<td style = 'text-align:center;'>"+vv.loss+"</td>";
	                        	 htmlStr+="<td style = 'text-align:center;'><font color='blue'>"+vv.goalall+"</td>";
	                        	 htmlStr+="<td style = 'text-align:center;'><font color='blue'>"+vv.goalavg+"</td>";
	                        	 htmlStr+="<td style = 'text-align:center;'><font color='red'>"+vv.lossall+"</td>";
	                        	 htmlStr+="<td style = 'text-align:center;'><font color='red'>"+vv.lossavg+"</td>";
	                        	 htmlStr+="<td style = 'text-align:center;'><font color='green'>"+vv.goaldifference+"</td>";
	                        	 htmlStr+="<td style = 'text-align:center;'>"+vv.recent10games+"</td>";	
		                        	htmlStr+="</tr>";
	                        });

	                        $("#rankinfo").html(htmlStr);
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
                  <h4>◈ 오늘의 경기</h4>
                  <br>
                  <table class='table'>
                  	<thead bgcolor='#EEEEEE'>
                  		<tr>
                  			<th style = 'text-align:center;'>리그</th>
                  			<th style = 'text-align:center;'>경기 시작시간</th>
         			         <th style = 'text-align:center;'>홈팀 <span class='badge badge-danger'>VS</span> 원정팀</th>
       			           <th style = 'text-align:center;'>구장정보</th>
              		    <th style = 'text-align:center;'>대상게임</th>
              	    </tr>
                  </thead >
                  <tbody id="todaymatch"></tbody>
                 </table>
                  

	                    <hr>
	                    <br>
                  </div>

                  <h4>◈ 순위정보</h4>
                  <table class='table'>
                 	 <thead bgcolor='#EEEEEE'>
              		    <tr>
              			    <th style = 'text-align:center;'>순위</th>
             			     <th style = 'text-align:center;'>팀명</th>
         			         <th style = 'text-align:center;'>경기수 </th>
       			           <th style = 'text-align:center;'>승점</th>
       			           <th style = 'text-align:center;'>승</th>
      			            <th style = 'text-align:center;'>무</th>
       			           <th style = 'text-align:center;'>패</th>
      			            <th style = 'text-align:center;'><font color='blue'>득점<br>전체</font></th>
        			          <th style = 'text-align:center;'><font color='blue'>득점<br>평균</font></th>
      			            <th style = 'text-align:center;'><font color='red'>실점<br>전체</font></th>
          			        <th style = 'text-align:center;'><font color='red'>실점<br>평균</font></th>
          			        <th style = 'text-align:center;'>득실차</th>
          			        <th style = 'text-align:center;'>최근<br>10경기</th>
            		      </tr>
            	      </thead>
            	      
              		    <tbody id="rankinfo"></tbody>
                  </table>
                  
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