<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

<head>  
<!-- Header Include CSS START-->
<%@ include file="/include/header.jsp" %>
<!-- Header Include CSS END-->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script>
$(document).ready(function(){

	$(document).on("click", ".fa.fa-trash-o", function(){
		 var name = $(this).attr("name");
		 var matchseq = $("#hidden"+name).val();
		 var gameseq = $("#game"+name).val();
		 var jsonData = {"matchSeq":matchseq, "gameSeq":gameseq};
		 
		 console.log(jsonData);
		 
        $.ajax({
	          url:"/match_deadline_check.do",
	          type:"get",
	          contentType: "application/x-www-form-urlencoded; charset=UTF-8", 
	          data : jsonData,
	          success : function(resObj){
	        	  console.log(resObj);
	        	  alert("마감처리 되었습니다.");
	        	  
	                var htmlStr = "";
	                var cnt = 0;
	                $.map(resObj, function(vv,idx){
		                
		                cnt++;
		                htmlStr += "<tr>";
		                htmlStr += "<td style = 'text-align:center;'>"+vv.homeTeamName+"<span class='badge badge-danger'>VS</span>"+vv.awayTeamName+"</td>";
		                htmlStr += "<td style = 'text-align:center;'>"+vv.gameMno+"</td>";
		                htmlStr += "<td style = 'text-align:center;'>"+vv.matchStarttime+"&nbsp&nbsp [10분전 마감]</td>";
		                htmlStr += "<td style = 'text-align:center;'>"+vv.mrVO.matchScore+"</td>";
	                         if(vv.mrVO.matchVs == 'l'){
	                        	 htmlStr += "<td style = 'text-align:center;'><font color='blue'>패</font></td>";
	                         } else if(vv.mrVO.matchVs == 'd'){
	                        	 htmlStr += "<td style = 'text-align:center;'><font color='blue'>패</font></td>";
	                         } else{
	                        	 htmlStr += "<td style = 'text-align:center;'><font color='red'>승</font></td>";
	                         }
	                         
	                         if(vv.matchStatus == 'f'){
	                        	 htmlStr += "<td style = 'text-align:center;'>발매마감</td>";
	                         } else if(vv.matchStatus == 'p'){
	                        	 htmlStr += "<td style = 'text-align:center;'>발매중</td>";
	                         }
	                         if(vv.matchStatus == 'p'){
		                        htmlStr += "<td><a href='#'><i class='fa fa-trash-o'name='"+cnt+"'></i></a></td>";
		 		                htmlStr += "<input type='hidden' id='hidden"+cnt+"' value='"+vv.matchSeq+"' />";
		 		                htmlStr += "<input type='hidden' id='game"+cnt+"' value='"+vv.gameSeq+"' />";
	                         }
	 		                htmlStr += "</tr>";
	                          
	                });
	                
	               	$("#cbody").empty();
	               	$("#cbody").html(htmlStr);
	          }
		 });
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
              <h1 class="h2">관리자 > 게임마감</h1>
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
<%@ include file="/include/sidebar_member.jsp" %>
<!-- Sidebar_Main Include CSS END-->
              
            </div>
            
<!-- 게시판 메인부분 -->
            <div class="col-md-10">
              <div id="basket" class="col-lg-12">
                <form method="get" action="shop-checkout1.html">
                  <div class="table-responsive">
                    <h4>◈ 마감처리</h4>
                    <div class="table-responsive">
                  <table class="table" id ="cart">
                    <thead bgcolor="#EEEEEE">
                      <tr>
                        <th style = "text-align:center;">매치번호</th>
                        <th style = "text-align:center;">해당경기</th>
                        <th style = "text-align:center;">마감시간</th>
                        <th style = "text-align:center;">매치스코어</th>
                        <th style = "text-align:center;">매치결과</th>
                        <th style = "text-align:center;">경기상태</th>
                        <th style = "text-align:center;">경기마감하기</th>
                      </tr>
                    </thead>
                    <tbody id="cbody">
                    <c:forEach var="vv" items="${DLIST}" varStatus="status">
                      <tr>
                          <td style = "text-align:center;">${vv.homeTeamName}<span class='badge badge-danger'>VS</span>${vv.awayTeamName}</td>
	                          <td style = "text-align:center;">${vv.gameMno}	</td>
	                          <td style = "text-align:center;">${vv.matchStarttime} &nbsp&nbsp [10분전 마감]</td>
	                          <td style = "text-align:center;">${vv.mrVO.matchScore}</td>
	                          
	                        <c:choose>
							<c:when test="${vv.mrVO.matchVs=='l'}">
	                        <td style = "text-align:center;"><font color="blue">패</font></td>
							</c:when>
							<c:when test="${vv.mrVO.matchVs=='d'}">
	                        <td style = "text-align:center;">무</td>
							</c:when>
							<c:when test="${vv.mrVO.matchVs=='w'}">
	                        <td style = "text-align:center;"><font color="red">승</font></td>
							</c:when>
	                        </c:choose>
	                          
	                        <c:choose>
							<c:when test="${vv.matchStatus=='f'}">
	                        <td style = "text-align:center;">발매마감</td>
							</c:when>
							<c:when test="${vv.matchStatus=='p'}">
	                        <td style = "text-align:center;">발매중</td>
							</c:when>
	                        </c:choose>
	                          
	                         <c:choose>
	                          <c:when test="${vv.matchStatus=='p'}">
		                        <td style = "text-align:center;"><a href="#"><i class="fa fa-trash-o" name="${status.index}"></i></a></td>
		                        <input type="hidden" id="hidden${status.index}" value="${vv.matchSeq}" />
		                        <input type="hidden" id="game${status.index}" value="${vv.gameSeq}" />
	                          </c:when>
	                          </c:choose>
                      </tr>
                    </c:forEach>
                    
                    </tbody>
                  </table>
                </div>
                <hr>
               </div>
               <!--  <button type="button" id="btn-empty"  class="btn btn-sm btn-danger pull-right"><i class="fa fa-trash-o"></i>카트 비우기</button>
                  <button type="button" class="btn btn-outline-primary" style="display:block; margin:0 auto;">결제하기</button> -->
                </form>
            </div>
            <br>
            
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