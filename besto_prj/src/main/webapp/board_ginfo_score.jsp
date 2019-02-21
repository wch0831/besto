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
                  <h4>◈ 맞대결 전적</h4>
                  <br>
            	  </div>
            	  <div class="col-lg-12">
            	  <table class="table">
	                 <thead>
	                   <tr>
	                   <th>
								<select class="bs-select" >
		                          <option value="match">레알 마드리드</option>
		                          <option value="match">레알 마드리드</option>
		                          <option value="history">레알 마드리드</option>
		                          <option value="history">레알 마드리드</option>
		                          <option value="history">레알 마드리드</option>
		                          <option value="history">레알 마드리드</option>
		                          <option value="history">레알 마드리드</option>
		                          <option value="history">레알 마드리드</option>
		                          <option value="history">레알 마드리드</option>
		                          <option value="history">레알 마드리드</option>
		                          <option value="history">레알 마드리드</option>
		                          <option value="history">레알 마드리드</option>
		                          <option value="history">레알 마드리드</option>
                        		</select>
                        		<br>
                       </th>
	                   <th> <button type="button" class="btn btn-outline-primary d-block mr-5 ml-auto" style="center: 5;">전적 조회</button> </th>
	                   <th>
	                   			<div class="pull-right">
									<select class="bs-select" tabindex="-98" style="position:right;">
			                          <option value="match">FC바르셀로나</option>
			                          <option value="match">FC바르셀로나</option>
			                          <option value="history">FC바르셀로나</option>
			                          <option value="history">FC바르셀로나</option>
	                        		</select>
	                        		</div>
	                   </th>
	                   </tr>
	                 </thead>
	              </table>
	              </div>
            	  
                    <table class="table">
	                      <thead>
	                        <tr>
	                          <th style = "text-align:center;"><div><img src="img/person-1.jpg" alt="" class="img-fluid rounded-circle"></div><a href="#">강원FC</a><br>[8위]</th>
	                          <th style = "text-align:center;">팀명<br>[리그순위]</th>
	                          <th style = "text-align:center;"><div><img src="img/person-1.jpg" alt="" class="img-fluid rounded-circle"></div><a href="#">서울FC</a><br>[7위]</th>
	                        </tr>
	                      </thead>
	                      <tbody>
	                        <tr>
	                          <td style = "text-align:center;" bgcolor='#EEEEEE'>----</td>
	                          <td style = "text-align:center;">18`시즌성적</td>
	                          <td style = "text-align:center;" bgcolor='#EEEEEE'>----</td>
	                        </tr>
	                        <tr>
	                          <td style = "text-align:center;" bgcolor='#EEEEEE'>----</td>
	                          <td style = "text-align:center;">맞대결 전적/승점</td>
	                          <td style = "text-align:center;" bgcolor='#EEEEEE'>----</td>
	                        </tr>
	                        <tr>
	                          <td style = "text-align:center;" bgcolor='#EEEEEE'>----</td>
	                          <td style = "text-align:center;">득점/실점</td>
	                          <td style = "text-align:center;" bgcolor='#EEEEEE'>----</td>
	                        </tr>
	                        <tr>
	                          <td style = "text-align:center;" bgcolor='#EEEEEE'>----</td>
	                          <td style = "text-align:center;">평균득점/평균실점</td>
	                          <td style = "text-align:center;" bgcolor='#EEEEEE'>----</td>
	                        </tr>
	                        <tr>
	                          <td style = "text-align:center;" bgcolor='#EEEEEE'>----</td>
	                          <td style = "text-align:center;">경고/퇴장</td>
	                          <td style = "text-align:center;" bgcolor='#EEEEEE'>----</td>
	                        </tr>
	                      </tbody>
	                    </table>
	                    <hr>
	                    <br>
                  
                  <h4>◈ 구매가능게임</h4>
                  <table class="table">
	                      <thead bgcolor="#EEEEEE">
	                        <tr>
	                          <th style = "text-align:center;">대상게임</th>
	                          <th style = "text-align:center;">홈 <span class="badge badge-danger">VS</span> 원정</th>
	                          <th style = "text-align:center;">경기일시</th>
	                          <th style = "text-align:center;">구매하기</th>
	                          
	                        </tr>
	                      </thead>
	                      <tbody>
	                        <tr>
	                          <td style = "text-align:center;">----</td> <!-- 실점 전체 -->
	                          <td style = "text-align:center;">----</td> <!-- 실점 평균 -->
	                          <td style = "text-align:center;">----</td> <!-- 득실차 -->
	                          <td style = "text-align:center;">----</td> <!-- 연속 -->
	                        </tr>
	                      </tbody>
	                    </table>
	              <br>
	          </form>
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