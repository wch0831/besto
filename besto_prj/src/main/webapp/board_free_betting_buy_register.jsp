<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

<head>  
<!-- Header Include CSS START-->
<%@ include file="/include/header.jsp" %>
<!-- Header Include CSS END-->
</head>


<script>
  	$(document).ready(function(){
  		$("#freeClick").click(function(){
  			var buyhistoryDiscussionTitle = $("#buyhistoryDiscussionTitle").val();
  			var buyhistoryDiscussionContent = $("#buyhistoryDiscussionContent").val();
  			if(buyhistoryDiscussionTitle == ""){
  				alert("제목을 입력하세용");
  				document.board.buyhistoryDiscussionTitle.focus();
  				return;
  			}
  			if(buyhistoryDiscussionContent == ""){
  				alert("내용을 입력하세용");
  				document.board.buyhistoryDiscussionContent.focus();
  				return;
  			}
  			document.board.submit();
  			
  		});
  		
  	});
  	
  	
  </script>
  
  

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
              <h1 class="h2">도전분석방 > 상세보기</h1>
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
                <form name="board"  method="post" action="shop-checkout1.html">
                  <div class="table-responsive">
                  <h4>◈ 베팅토론방 작성하기</h4>
                  <br>
                  <div class="col-md-13">
                  <div class="box-simple box-white same-height">
                    <div class="row">
                       <div class="table-responsive col-md-12">
                          
                <div class="btn-group bootstrap-select bs-select">
              	 <div class="dropdown-menu open" role="combobox" x-placement="bottom-start" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 37px, 0px);">
              		</div>
              	   		<h4>◈ 나의 구매내역</h4>
						<select class="bs-select" tabindex="-98">
                          <option value="match">구매내역이 없습니다</option>
                          <option value="match">8회차 [2월 24일 일요일 마감]</option>
                          <option value="history">8회차 [2월 24일 일요일 마감]</option>
                          <option value="history">8회차 [2월 24일 일요일 마감]</option>
                        </select>
                 </div>
                          
                  <div class="table-responsive col-md-12">
                  <p>현재 발매 중인 게임을 구매한 내역이 없습니다.<br>게임 구매 후 작성해주세요.</p>
                  <button type="button" class="btn btn-info">게임가능 게임 보러가기</button>
                  </div>        
                 
                         <br>
                       <br> 
            <!-- 승부 선택에서  기록식이라면 아래의 테이블을-->
                    <table class="table">
                    <h4>프로토 기록식 (19년 15회차)  <font size="2">- 구매일시 : 19.02.18 17:00</font></h4>
                    <p>기록식 가상투표용지</p>
                      <thead>
                        <tr>
                          <th bgcolor="#EEEEEE">번호</th>
                          <th bgcolor="#EEEEEE">예상</th>
                          <th bgcolor="#EEEEEE">배당률</th>
                          <th bgcolor="#EEEEEE">번호</th>
                          <th bgcolor="#EEEEEE">예상</th>
                          <th bgcolor="#EEEEEE">배당률</th>
                          <th bgcolor="#EEEEEE">번호</th>
                          <th bgcolor="#EEEEEE">예상</th>
                          <th bgcolor="#EEEEEE">배당률</th>
                          <th bgcolor="#EEEEEE">번호</th>
                          <th bgcolor="#EEEEEE">예상</th>
                          <th bgcolor="#EEEEEE">배당률</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td bgcolor="#EEEEEE">--</td>
                          <td>--</td>
                          <td>--<input type="checkbox"></td>
                          <td bgcolor="#EEEEEE">--</td>
                          <td>--</td>
                          <td>--<input type="checkbox"></td>
                          <td bgcolor="#EEEEEE">--</td>
                          <td>--</td>
                          <td>--<input type="checkbox"></td>
                          <td bgcolor="#EEEEEE">--</td>
                          <td>--</td>
                          <td>--<input type="checkbox"></td>
                        </tr>
                        <tr>
                          <td bgcolor="#EEEEEE">--</td>
                          <td>--</td>
                          <td>--<input type="checkbox"></td>
                          <td bgcolor="#EEEEEE">--</td>
                          <td>--</td>
                          <td>--<input type="checkbox"></td>
                          <td bgcolor="#EEEEEE">--</td>
                          <td>--</td>
                          <td>--<input type="checkbox"></td>
                          <td bgcolor="#EEEEEE">--</td>
                          <td>--</td>
                          <td>--<input type="checkbox"></td>
                        </tr>
                        <tr>
                          <td bgcolor="#EEEEEE">--</td>
                          <td>--</td>
                          <td>--<input type="checkbox"></td>
                          <td bgcolor="#EEEEEE">--</td>
                          <td>--</td>
                          <td>--<input type="checkbox"></td>
                          <td bgcolor="#EEEEEE">--</td>
                          <td>--</td>
                          <td>--<input type="checkbox"></td>
                          <td bgcolor="#EEEEEE">--</td>
                          <td>--</td>
                          <td>--<input type="checkbox"></td>
                        </tr>
                        <tr>
                          <td bgcolor="#EEEEEE">--</td>
                          <td>--</td>
                          <td>--<input type="checkbox"></td>
                          <td bgcolor="#EEEEEE">--</td>
                          <td>--</td>
                          <td>--<input type="checkbox"></td>
                          <td bgcolor="#EEEEEE">--</td>
                          <td>--</td>
                          <td>--<input type="checkbox"></td>
                          <td bgcolor="#EEEEEE">--</td>
                          <td>--</td>
                          <td>--<input type="checkbox"></td>
                        </tr>
                        <tr>
                          <td bgcolor="#EEEEEE">--</td>
                          <td>--</td>
                          <td>--<input type="checkbox"></td>
                          <td bgcolor="#EEEEEE">--</td>
                          <td>--</td>
                          <td>--<input type="checkbox"></td>
                          <td bgcolor="#EEEEEE">--</td>
                          <td>--</td>
                          <td>--<input type="checkbox"></td>
                          <td bgcolor="#EEEEEE">--</td>
                          <td>--</td>
                          <td>--<input type="checkbox"></td>
                        </tr>
                      </tbody>
                    </table>
                    <!-- 결과테이블 -->
                    <table class="table">
                      <thead bgcolor="#EEEEEE">
                        <tr>
                        <th>게임</th>
                        <th>번호</th>
                        <th>배당률</th>
                        <th>구매금액</th>
                        <th>예상 적중금액</th>
                        <th>적중결과</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td>A</td>
                          <td>2</td>
                          <td>7.5배</td>
                          <td>500 원</td>
                          <td>3,400 원</td>
                          <td><font color="red">[적중]</font></td>
                        </tr>
                        <tr>
                          <td>A</td>
                          <td>5</td>
                          <td>7.5배</td>
                          <td>500 원</td>
                          <td>3,400 원</td>
                          <td>적중안됨</td>
                        </tr>
                      </tbody>
                    </table>
                    <!-- 결과테이블 -->
<!-- 승부식이라면 아래의 테이블을 보여야함 -->
                    <table class="table">
                    <h4>프로토 승부식 (19년 15회차)  <font size="2">- 구매일시 : 19.02.18 17:00</font></h4>
                    <p>승부식 가상투표용지</p>
                      <thead>
                        <tr>
                          <th bgcolor="#EEEEEE" >번호</th>
                          <th bgcolor="#EEEEEE" >마감일시</th>
                          <th bgcolor="#EEEEEE" >대회명</th>
                          <th bgcolor="#EEEEEE" >유형</th>
                          <th bgcolor="#EEEEEE" >홈팀  <span class="badge badge-danger">VS</span>  원정팀</th>
                          <th bgcolor="#EEEEEE" ></th>
                          <th bgcolor="#EEEEEE" >배당률</th>
                          <th bgcolor="#EEEEEE" ></th>
                          <th bgcolor="#EEEEEE" >비고</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td>1</td>
                          <td>02-15(금)<br>15:50</td>
                          <td>--</td>
                          <td><span class="badge badge-info">일반</span></td>
                          <td>--</td>
                          <td><font color="red">승</font>1.34 <input type="checkbox"></td>
                          <td>무 1.50 <input type="checkbox"></td>
                          <td><font color="blue">패</font>2.55 <input type="checkbox"></td>
                          <td>--</td>
                        </tr>
                        <tr>
                          <td>1</td>
                          <td>02-15(금)<br>15:50</td>
                          <td>--</td>
                          <td><span class="badge badge-info">일반</span></td>
                          <td>--</td>
                          <td><font color="red">승</font>1.34 <input type="checkbox"></td>
                          <td>무 1.50 <input type="checkbox"></td>
                          <td><font color="blue">패</font>2.55 <input type="checkbox"></td>
                          <td>--</td>
                        </tr>
                      </tbody>
                    </table>
                    <!-- 결과테이블 -->
                    <table class="table">
                      <thead bgcolor="#EEEEEE">
                        <tr>
                        <th>선택 경기수</th>
                        <th>배당률</th>
                        <th>구매금액</th>
                        <th>적중 예상금액</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td>7</td>
                          <td>387,300.4 배</td>
                          <td>100원</td>
                          <td>38,784,500 원</td>
                        </tr>
                      </tbody>
                    </table>
                    <!-- 결과테이블 -->
                  </div>
                      </div>
                  </div>
                </div>
                </div>
                <br>
                <hr>
                <br>  
                  <h4>◈ 나의 분석</h4>
                    	<br>
                  <div class="col-sm-10">
                    <div class="form-group">
                    <input name = "buyhistoryDiscussionTitle" id="buyhistoryDiscussionTitle" class="form-control" type="text" placeholder="제목을 입력하세요" style="width:875px;"><br>
                    <textarea name = "buyhistoryDiscussionContent" id="buyhistoryDiscussionContent" class="form-control" placeholder="내용을 입력하세요" style="margin-top: 0px; margin-bottom: 0px; height: 240px; width: 875px;"></textarea>
                    </div>
                    </div>
                  <button type="button" class="btn btn-danger pull-right">취소</button>
                  <button name="freeClick" id="freeClick"  type="button" class="btn btn-primary pull-right">작성</button>
                </form>
                  </div>

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