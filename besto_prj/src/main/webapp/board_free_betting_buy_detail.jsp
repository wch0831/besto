<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

<head>  
<!-- Header Include CSS START-->
<%@ include file="/include/header.jsp" %>
<!-- Header Include CSS END-->

<script>


$(document).ready(function(){
	console.log("여기는 오니?");
	var dd = "${BVO.code}";

	console.log(dd);
	
	$("#board_del").on("click", function(){
		if (confirm("정말 게시글을 삭제하시겠습니까?") == true){
			location = "/board_delete?boardSeq=${BVO.boardSeq}&code=${BVO.code}";
		} else{   //취소
		     alert("게시글 삭제가 취소되었습니다.");
		 }
	});
	
	
	$("#board_update").on("click", function(){
		if (confirm("게시글을 수정하시겠습니까?") == true){
			/* location = "/boardUpdate"; */
			$("#boardUpdate").submit();
		} else{   //취소
		     alert("게시글 수정이 취소되었습니다.");
		 }
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
              <h1 class="h2">베팅토론방 > 구매내역토론방 > 상세보기</h1>
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
                <form method="get" id="boardUpdate" action="/board_free_betting_buy_detail/${KEY_BVO.postSeq}.do">
                <input type="hidden" name="postSeq" value="${KEY_BVO.postSeq}"/>
                <input type="hidden" value="b" name="gubun">
                  <div class="table-responsive">
                  <h4>◈ 베팅토론방<font size="3"> - 구매내역토론방</font> </h4>
                  <br>
                  <h5>${KEY_BVO.buyhistoryDiscussionTitle}</h5><hr>
                  <font size="2"><strong>작성자</strong> : ${KEY_BVO.usersName} </font> &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                                        <font size="2"> <strong>등록일</strong> : ${KEY_BVO.buyhistoryDiscussionRegdate}</font><br><br>
                  <div class="col-md-13">
                  <div class="box-simple box-white same-height">
                    <div class="row">
                          <div class="table-responsive col-md-30">
                          
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
                  <h4>◈ 나의 의견</h4>
                       <br>
                  <div class="col-sm-10">
                    <div class="form-group">
                    	  ${KEY_BVO.buyhistoryDiscussionContent}
                    </div>
                    <br>
                    </div>
                  <hr>
                
                
                <div class="col-md-12 pull-right">
                <br>
<!-- 세션비교 후 작성자만 보이게 설정하기 -->
                  <button type="button" class="btn btn-sm btn-danger pull-right"><i class="fa fa-times-circle"> 삭제</i></button>
                  <button type="button" id="board_update" class="btn btn-sm btn-primary pull-right"><i class="fa fa-save"> 수정</i></button>
<!-- 세션비교 후 작성자만 보이게 설정하기 -->
                  <br><br>
                  </div>
                  <br><br><br>
                  <div class="col-lg-12">
                  <div role="alert" class="alert alert-info">※ 분석정보는 베팅시 <font color="red"><b>참고용</b></font>으로 사용해 주시기 바랍니다.</div>
                  <br>
                  </div>
<!-- 댓글  영역-->                 
                <h4><i class="fa fa-quote-left"></i> 댓글(3)</h4>
                <br>
                
             <div class="col-sm-12">
                
                
   <!-- 댓글 루프돌릴 div영역 -->
                <div class="col-sm-12">
                <i class="fa fa-quote-left"></i> 송은규(sek****) &emsp;<b>:</b>&emsp; 댓글1입니다.&emsp;&emsp;2019.02.17 17:34&emsp;&emsp;
                   <a href="#"><i class="fa fa-check"></i></a>&emsp; <!-- 수정 아이콘 -->
                   <a href="#"><i class="fa fa-times"></i></a> <!-- 삭제 아이콘 -->
                <hr>
                </div>
   <!-- 댓글 루프돌릴 div영역 -->
                <div class="col-sm-12">
                <i class="fa fa-quote-left"></i> 송은규(sek****) &emsp;<b>:</b>&emsp; 댓글1입니다.&emsp;&emsp;2019.02.17 17:34&emsp;&emsp;
                   <a href="#"><i class="fa fa-check"></i></a>&emsp; <!-- 수정 아이콘 -->
                   <a href="#"><i class="fa fa-times"></i></a> <!-- 삭제 아이콘 -->
                <hr>
                </div>
   <!-- 댓글 루프돌릴 div영역 -->
                <div class="col-sm-12">
                <i class="fa fa-quote-left"></i> 송은규(sek****) &emsp;<b>:</b>&emsp; 댓글1입니다.&emsp;&emsp;2019.02.17 17:34&emsp;&emsp;
                   <a href="#"><i class="fa fa-check"></i></a>&emsp; <!-- 수정 아이콘 -->
                   <a href="#"><i class="fa fa-times"></i></a> <!-- 삭제 아이콘 -->
                <hr>
                </div>
   <!-- 댓글 루프돌릴 div영역 -->
                
           <br>
           <!-- 댓글입력폼-->
                 <div class="row">
                    <div class="col-md-8">
                    <textarea id="message" class="form-control" placeholder="댓글을 입력하세요" style="margin-top: 0px; margin-bottom: 0px; height: 48px; width: 775px;"> </textarea>
                    </div>
                    <div class="col-md-4">
                    <button type="button" class="btn btn-lg btn-primary pull-right"><font size="3">입력</font></button>
                    </div>
                    <br>
                 </div>
              </div>
<!-- 댓글영역 -->


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