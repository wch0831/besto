<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>
<!-- Header Include CSS START-->
<%@ include file="/include/header.jsp"%>
<!-- Header Include CSS END-->
<script>
$(document).ready(function() {
   
       $("#vsBtn").click(function(){         
              var team1 = $("#teamId1").val();
              var team2 = $("#teamId2").val();
              console.log(team1);
              console.log(team2);
              
              if(team1 != team2){
               $.ajax({ 
                     url:"http://localhost:80/bestoapi/vs.do",
                     type:"get",
                     contentType: "application/x-www-form-urlencoded; charset=UTF-8",
                     //data: { "team1" : team1, "team2" : team2 },
                     data: "team1="+team1+"&team2="+team2,
                     success:function(vv){
                           var htmlStr = "";
                                   htmlStr += "<tr>";
                                   htmlStr += "<td style = 'text-align:center;' bgcolor='#EEEEEE' id='h2'>"+vv.homeSeasonrecord+"</td>";
                                   htmlStr += "<td style = 'text-align:center;' id='s1'>시즌성적</td>";
                                   htmlStr += "<td style = 'text-align:center;' bgcolor='#EEEEEE' id='a2'>"+vv.awaySeasonrecord+"</td>";
                                   htmlStr += "</tr>";
                                   htmlStr += "<tr>";
                                   htmlStr += "<td style = 'text-align:center;' bgcolor='#EEEEEE' id='h3'>"+vv.homeMatchhistory+"</td>";
                                   htmlStr += "<td style = 'text-align:center;'>맞대결 전적/승점</td>";
                                   htmlStr += "<td style = 'text-align:center;' bgcolor='#EEEEEE' id='a3'>"+vv.awayMatchhistory+"</td>";
                                   htmlStr += "</tr>";
                                   htmlStr += "<tr>";
                                   htmlStr += "<td style = 'text-align:center;' bgcolor='#EEEEEE' id='h4'>"+vv.homeRecentrecord+"</td>";
                                   htmlStr += "<td style = 'text-align:center;'>최근 맞대결 전적</td>";
                                   htmlStr += "<td style = 'text-align:center;' bgcolor='#EEEEEE' id='a4'>"+vv.awayRecentrecord+"</td>";
                                   htmlStr += "</tr>";
                                   htmlStr += "<tr>";
                                   htmlStr += "<td style = 'text-align:center;' bgcolor='#EEEEEE' id='h5'>"+vv.homeGoalandloss+"</td>";
                                   htmlStr += "<td style = 'text-align:center;'>득점/실점</td>";
                                   htmlStr += "<td style = 'text-align:center;' bgcolor='#EEEEEE' id='a5'>"+vv.awayGoalandloss+"</td>";
                                   htmlStr += "</tr>";
                                   htmlStr += "<tr>";
                                   htmlStr += "<td style = 'text-align:center;' bgcolor='#EEEEEE' id='h6'>"+vv.homeGoalavg+"</td>";
                                   htmlStr += "<td style = 'text-align:center;'>평균득점/득실차</td>";
                                   htmlStr += "<td style = 'text-align:center;' bgcolor='#EEEEEE' id='a6'>"+vv.awayGoalavg+"</td>";
                                   htmlStr += "</tr>";
                                  $("#ranklist").empty();
                                  $("#ranklist").html(htmlStr);
                                  $("#h1").text(vv.homeTeam);
                                  $("#a1").text(vv.awayTeam);
                     }
            }); //end of ajax 
              } else{
            	  alert("서로 다른팀을 선택해 주세요");
              }
         });
   });
</script>
</head>

<body>
   <div id="all">

      <!-- Topbar Include CSS START-->
      <%@ include file="/include/topbar.jsp"%>
      <!-- Topbar Include CSS END-->

      <!-- Navbar Include CSS START-->
      <%@ include file="/include/navbar.jsp"%>
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
                  <%@ include file="/include/sidebar_board_main.jsp"%>
                  <!-- Sidebar_Main Include CSS END-->
               </div>

               <!-- 게시판 메인부분 -->
               <div class="col-md-10">
                  <p class="text-muted lead">
                     <font size="2">남을 비방하는 글이나 욕설, 게시판 성격에 맞지 않거나 광고성 게시물은 사전
                        동의없이 삭제될 수 있습니다. 답변을 원하시는 건의 및 문의 사항은 고객센터 > 고객상담실을 이용하여 주시기
                        바랍니다. </font>
                  </p>
                  <div id="basket" class="col-lg-12">
                     <form method="get" action="shop-checkout1.html">
                        <div class="table-responsive">
                           <h4>◈ 맞대결 전적</h4>
                        </div>
                        <table class="table" id="vstable">
                           <thead>
                              <tr>
                                 <th>HOME: <select style="width: 115px;" name="teamId1"
                                    id="teamId1">
                                       <option value="4087">뉴캐슬</option>
                                       <option value="4693">레스터</option>
                                       <option value="4075">리버풀</option>
                                       <option value="4222">맨체스C</option>
                                       <option value="4080">맨체스U</option>
                                       <option value="4486">번리</option>
                                       <option value="102706">본머스</option>
                                       <option value="100050">브라이턴</option>
                                       <option value="4874">사우샘프</option>
                                       <option value="4007">아스널</option>
                                       <option value="4047">에버턴</option>
                                       <option value="4970">왓포드</option>
                                       <option value="4211">울버햄턴</option>
                                       <option value="4144">웨스트햄</option>
                                       <option value="4034">첼시</option>
                                       <option value="4491">카디프</option>
                                       <option value="100094">크리스탈</option>
                                       <option value="4129">토트넘</option>
                                       <option value="102785">풀럼</option>
                                       <option value="100092">허더즈필</option>
                                 </select></th>
                                 <th><input type="button" id="vsBtn" value="VS"></th>
                                 <th>AWAY: <select style="width: 115px;" name="teamId2"
                                    id="teamId2">
                                       <option value="4087">뉴캐슬</option>
                                       <option value="4693">레스터</option>
                                       <option value="4075">리버풀</option>
                                       <option value="4222">맨체스C</option>
                                       <option value="4080">맨체스U</option>
                                       <option value="4486">번리</option>
                                       <option value="102706">본머스</option>
                                       <option value="100050">브라이턴</option>
                                       <option value="4874">사우샘프</option>
                                       <option value="4007">아스널</option>
                                       <option value="4047">에버턴</option>
                                       <option value="4970">왓포드</option>
                                       <option value="4211">울버햄턴</option>
                                       <option value="4144">웨스트햄</option>
                                       <option value="4034">첼시</option>
                                       <option value="4491">카디프</option>
                                       <option value="100094">크리스탈</option>
                                       <option value="4129">토트넘</option>
                                       <option value="102785">풀럼</option>
                                       <option value="100092">허더즈필</option>
                                 </select></th>
                              <tr />
                              <tr>
                                 <th style="text-align: center;"><div>
                                       <img src="img/person-1.jpg" alt=""
                                          class="img-fluid rounded-circle">
                                    </div>
                                    <p id="h1">강원FC</p></th>
                                 <th style="text-align: center;">팀명[리그순위]</th>
                                 <th style="text-align: center;"><div>
                                       <img src="img/person-1.jpg" alt=""
                                          class="img-fluid rounded-circle">
                                    </div>
                                    <p id="a1">서울FC</p></th>
                              </tr>
                           </thead>

                           <tbody id="ranklist">
                              <tr>
                                 <td style="text-align: center;" bgcolor='#EEEEEE' id="h2">----</td>
                                 <td style="text-align: center;" id="s1">시즌성적</td>
                                 <td style="text-align: center;" bgcolor='#EEEEEE' id="a2">----</td>
                              </tr>
                              <tr>
                                 <td style="text-align: center;" bgcolor='#EEEEEE' id="h3">----</td>
                                 <td style="text-align: center;">맞대결 전적/승점</td>
                                 <td style="text-align: center;" bgcolor='#EEEEEE' id="a3">----</td>
                              </tr>
                              <tr>
                                 <td style="text-align: center;" bgcolor='#EEEEEE' id="h4">----</td>
                                 <td style="text-align: center;">최근 맞대결 전적</td>
                                 <td style="text-align: center;" bgcolor='#EEEEEE' id="a4">----</td>
                              </tr>
                              <tr>
                                 <td style="text-align: center;" bgcolor='#EEEEEE' id="h5">----</td>
                                 <td style="text-align: center;">득점/실점</td>
                                 <td style="text-align: center;" bgcolor='#EEEEEE' id="a5">----</td>
                              </tr>
                              <tr>
                                 <td style="text-align: center;" bgcolor='#EEEEEE' id="h6">----</td>
                                 <td style="text-align: center;">평균득점/득실차</td>
                                 <td style="text-align: center;" bgcolor='#EEEEEE' id="a6">----</td>
                              </tr>
                           </tbody>

                           
                        </table>
                        <hr>
                        <br>

                        <h4>◈ 구매가능게임</h4>
                        <table class="table">
                           <thead bgcolor="#EEEEEE">
                              <tr>
                                 <th style="text-align: center;">대상게임</th>
                                 <th style="text-align: center;">홈 <span
                                    class="badge badge-danger">VS</span> 원정
                                 </th>
                                 <th style="text-align: center;">경기일시</th>
                                 <th style="text-align: center;">구매하기</th>

                              </tr>
                           </thead>
                           <tbody>
                              <tr>
                                 <td style="text-align: center;">----</td>
                                 <!-- 실점 전체 -->
                                 <td style="text-align: center;">----</td>
                                 <!-- 실점 평균 -->
                                 <td style="text-align: center;">----</td>
                                 <!-- 득실차 -->
                                 <td style="text-align: center;">----</td>
                                 <!-- 연속 -->
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
   <%@ include file="/include/footer.jsp"%>
   <!-- Footer Include CSS END-->

   <!-- Script Include CSS START-->
   <%@ include file="/include/script.jsp"%>
   <!-- Script Include CSS END-->


</body>
</html>