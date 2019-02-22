<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<head>  


<!-- Header Include CSS START-->
<%@ include file="/include/header.jsp" %>
<!-- Header Include CSS END-->

<script>

$(document).ready(function() {
var jsonData;
/* selectVS matchviewBtn data:jsonData,*/
  $("#matchviewBtnV").click("change", function(){
	  			console.log("경기목록 보기 버튼 클릭");
			  $.ajax({ 
						url:"http://localhost:8087/bestoapi/alist.do",
						type:"get",
						contentType: "application/json; charset=UTF-8", 
						resultType: "json",
						success:function(jsonObj){
								//console.log(jsonObj);		//[{"rseq":1 , "reply":"aa"} , {}]
								var htmlStr = "";
								jsonData = jsonObj;
								console.log(jsonData);
					 			$.map(jsonObj, function(vv, idx){
					 				
		                        htmlStr += "<tr>";
		                        htmlStr += "<td style = 'text-align:center;'>"+vv.matchSeq+"</td>";
		                        htmlStr += "<td style = 'text-align:center;'>"+vv.matchStarttime+"</td>";
		                        htmlStr += "<td style = 'text-align:center;'>챔피언스리그</td>";
		                        htmlStr += "<td style = 'text-align:center;'><span class='badge badge-info'>일반</span></td>";
		                        htmlStr += "<td style = 'text-align:center;'>"+vv.matchHometeam+"<span class='badge badge-danger'>VS</span>"+vv.matchAwayteam+"</td>";
		                        htmlStr += "<td style = 'text-align:center;'><font color='red'>승</font>"+vv.vicVO.victoryrateWin+"</td>";
		                        htmlStr += "<td style = 'text-align:center;'><font color='gray'>무</font>"+vv.vicVO.victoryrateDraw+"</td>";
		                        htmlStr += "<td style = 'text-align:center;'><font color='blue'>패</font>"+vv.vicVO.victoryrateLose+"</td>";
		                        htmlStr += "<td style = 'text-align:center;'>"+vv.matchStadium+"</td>";
		                        htmlStr += "</tr>";
						  		
						  	});
						  	
						  	//div는 남겨두고 기존 댓글 내용만 지우기
						  	$("#gameListV").empty();
						  	$("#gameListV").html(htmlStr);
						}
			}); //end of ajax 
		});
		
		
  $("#matchviewBtnR").click("change", function(){
		console.log("경기목록 보기 버튼 클릭");
	  $.ajax({ 
				url:"http://localhost:8087/bestoapi/alist.do",
				type:"get",
				contentType: "application/json; charset=UTF-8", 
				resultType: "json",
				success:function(jsonObj){
						//console.log(jsonObj);		//[{"rseq":1 , "reply":"aa"} , {}]
						var htmlStr = "";
						jsonData = jsonObj;
						console.log(jsonData);
			 			$.map(jsonObj, function(vv, idx){
			 				
                      htmlStr += "<tr>";
                      htmlStr += "<td style = 'text-align:center;'>"+vv.matchSeq+"</td>";
                      htmlStr += "<td style = 'text-align:center;'>"+vv.matchStarttime+"</td>";
                      htmlStr += "<td style = 'text-align:center;'>챔피언스리그</td>";
                      htmlStr += "<td style = 'text-align:center;'><span class='badge badge-info'>일반</span></td>";
                      htmlStr += "<td style = 'text-align:center;'>"+vv.matchHometeam+"<span class='badge badge-danger'>VS</span>"+vv.matchAwayteam+"</td>";
                      htmlStr += "<td style = 'text-align:center;'>"+vv.matchStadium+"</td>";
                      htmlStr += "</tr>";
				  		
				  	});
				  	
				  	//div는 남겨두고 기존 댓글 내용만 지우기
				  	$("#gameListR").empty();
				  	$("#gameListR").html(htmlStr);
				}
	}); //end of ajax 
});
		
   $("#registerBtnV").click("change", function(){
		var name = $(this).attr("name");
		console.log(name);
		console.log(jsonData);
		
	  $.ajax({ 
				url:"/game_insert_rest.do",
				type:"post",
				contentType: "application/x-www-form-urlencoded; charset=UTF-8", 
				resultType: "json",
				data:"matchlist="+JSON.stringify(jsonData)+"&gameGubun="+name+"&gamefinishdate="+$("#finishTimeV").val(),
				success:function(jsonObj){
					
				}
	}); //end of ajax 
	
});
   
   
   $("#registerBtnR").click("change", function(){
		console.log("등록하기 버튼 클릭");
		var name = $(this).attr("name");
		console.log(name);
	  $.ajax({ 
				url:"/game_insert_rest.do",
				type:"post",
				contentType: "application/x-www-form-urlencoded; charset=UTF-8",
				resultType: "json",
				data:"matchlist="+JSON.stringify(jsonData)+"&gameGubun="+name+"&gamefinishdate="+$("#finishTimeR").val(),
				success:function(jsonObj){
					
				}
	}); //end of ajax 
	
});
  
		
		
});






/* 새창띄우기 Script */
/* function openWindow_match(){  
    window.open("board_open_window_match.jsp", "승부식보기", "width=1310, height=750, location=no, toolbar=no, menubar=no, scrollbars=yes, resizable=no" );  
}

function openWindow_history(){  
    window.open("board_open_window_history.jsp", "승부식보기", "width=1310, height=750, location=no, toolbar=no, menubar=no, scrollbars=yes, resizable=no" );  
} */
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
              <p class="text-muted lead"><font size="2">관리자 페이지</font></p>
              
              
              
              
              <div id="basket" class="col-lg-13">
                <form method="get" action="/game_insert_rest.do">
                
                <div class="row pull-right">
                <div class="btn-group bootstrap-select bs-select">
              	 <div class="dropdown-menu open" role="combobox" x-placement="bottom-start" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 37px, 0px);">
              	</div>
              	
              	<button id="matchviewBtnV" name="matchviewBtnV" type="button" class="btn btn-sm btn-danger pull-right"><i class="fa fa-times-circle"> 경기목록 보기</i></button>
              	
						<select class="bs-select" id="finishTimeV" tabindex="-98">
						  <option value="" selected disabled hidden>시간을 선택하세요</option>
                          <option value="02/15/2019 10:00">02/15/2019 10:00</option>
                          <option value="02/15/2019 09:00">02/15/2019 09:00</option>
                          <option value="02/15/2019 08:00">02/15/2019 08:00</option>
                        </select>
                        
                        
                        </div>
                        </div>
                        
                <!-- 승부식 (관리자)-->
                  		<table id="game_match_view" class="table" >
                  		<h4>◈ 승부식(관리자)</h4>
	                      <thead bgcolor="#EEEEEE">
	                        <tr>
	                          <th style = "text-align:center;">경기</th>
	                          <th style = "text-align:center;">경기일</th>
	                          <th style = "text-align:center;">대회명</th>
	                          <th style = "text-align:center;">유형</th>
	                          <th style = "text-align:center;">홈팀 <span class="badge badge-danger">VS</span> 원정팀</th>
	                          <th style = "text-align:center;"></th>
	                          <th style = "text-align:center;">배당률</th>
	                          <th style = "text-align:center;"></th>
	                          <th style = "text-align:center;">경기장소</th>
	                          <th style = "text-align:center;">체크</th>
	                        </tr>
	                      </thead>
	                      
<!--  ************************************************************************************  -->
	                      <tbody id="gameListV">
	                       
	                      </tbody>
	                    </table>
	                    <hr>
	                    <button type="button" class="btn btn-sm btn-danger pull-right"><i class="fa fa-times-circle"> 취소하기</i></button>
	                    <button type="button" id="registerBtnV" name="v" class="btn btn-sm btn-primary pull-right"><i class="fa fa-save"> 등록하기</i></button>
	                    <br><br><br><br><hr><br>
	                    
	           </form>
	                    
	           <form method="get" action="/game_insert_rest.do">  
	               <!-- 기록식(관리자) -->
	               <div class="row pull-right">
                <div class="btn-group bootstrap-select bs-select">
              	 <div class="dropdown-menu open" role="combobox" x-placement="bottom-start" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 37px, 0px);">
              	</div>
						<button id="matchviewBtnR" name="matchviewBtnR" type="button" class="btn btn-sm btn-danger pull-right"><i class="fa fa-times-circle"> 경기목록 보기</i></button>
              	
						<select class="bs-select" id="finishTimeR" tabindex="-98">
						  <option value="" selected disabled hidden>시간을 선택하세요</option>
                          <option value="02/15/2019 10:00">02/15/2019 10:00</option>
                          <option value="02/15/2019 09:00">02/15/2019 09:00</option>
                          <option value="02/15/2019 08:00">02/15/2019 08:00</option>
                        </select>
                        </div>
                        </div>
	               
	               
	                    <table id="game_match_view" class="table" >
	                    <h4>◈ 기록식(관리자)</h4>
	                      <thead bgcolor="#EEEEEE">
	                        <tr>
	                          <th style = "text-align:center;">경기</th>
	                          <th style = "text-align:center;">경기일</th>
	                          <th style = "text-align:center;">대회명</th>
	                          <th style = "text-align:center;">유형</th>
	                          <th style = "text-align:center;">홈팀 <span class="badge badge-danger">VS</span> 원정팀</th>
	                          <th style = "text-align:center;">경기장소</th>
	                        </tr>
	                      </thead>
	                      <tbody id="gameListR">
	                        
	                      </tbody>
	                    </table>
	                    <hr>
	                    <button type="button" class="btn btn-sm btn-danger pull-right"><i class="fa fa-times-circle"> 취소하기</i></button>
	                    <button type="button" id="registerBtnR" name="r" class="btn btn-sm btn-primary pull-right"><i class="fa fa-save"> 등록하기</i></button>
                </form>
            </div>
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