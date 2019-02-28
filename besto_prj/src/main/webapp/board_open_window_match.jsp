<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

<head>  
<!-- Header Include CSS START-->
<%@ include file="/include/header.jsp" %>
<!-- Header Include CSS END-->
<script>
var idx=0;
var beadang=1;
var input_money=0;

$(document).ready(function() {
		//----------------------------------------------- 
		//@RestController에 ArrayList<RecordRateVO> 전송
		//List에 담을 RecordRateVO JSON 데이터 표기를 아래와 같이 표기  
		/*  var param = {}; 
			param['recordRateVOList[' + 0 +'].matchSeqList'] = '1-2' ;
			param['recordRateVOList[' + 0 +'].cashList'] = 1000; 
			
			param['recordRateVOList[' + 1 +'].matchSeqList'] = '2-0' ;
			param['recordRateVOList[' + 1 +'].cashList'] = 2000;  
		*/
		//-----------------------------------------------
		
		$("#buyButton").click(function(){
			var param = {};
			var loopCount = 1;
			var idx = 0;
			var pass = $("#passWord").val();
			console.log($("#rateForm").serializeArray());
			$("#rateForm").serializeArray().map(function(x){
				param['recordRateVOList[' + idx +'].'+x.name+''] = x.value ;
				loopCount++;
				if(loopCount%5 == 0) {
					idx++;
					loopCount=1;
				}
				
			}); 
			console.log(loopCount);
			console.log(param);
			$.ajax({ 
					type:"post",
			        url:"/passCheck2.do",
	                contentType : "application/x-www-form-urlencoded; charset=UTF-8", 
			        data : param,
					success:function(res){
							console.log(res);
							if(res == "fail"){
								alert("잘못된 비밀번호입니다.");
								$("#pass").val("");
							} else{
								alert("결제 되었습니다.");
								$(".trcl").remove();
								$("#pass").val("");
								opener.location.href="/buyhitlist.do"
								window.close();
							}
					}
			}); 
		});
		
	/* 	$("#buyButton").click(function(){
			var param = {};
			var loopCount = 1;
			var idx = 0;
			//var pass = $("password[name=pass]").val();
			var pass = $("#pass").val();
			
			$("#rateForm").serializeArray().map(function(x){
				param['recordRateVOList[' + idx +'].'+x.name+''] = x.value ;
				param['recordRateVOList[' + idx +'].passWord'] = pass;
				if(loopCount%5 == 0) idx++;
				loopCount++;
			}); 
			
			console.log(param);
			
			$.ajax({ 
					type:"post",
			        url:"/passCheck.do",
			        contentType : "application/x-www-form-urlencoded; charset=UTF-8", 
			        data : param, 
					success:function(res){
							console.log(res);
							if(res == "fail"){
								alert("잘못된 비밀번호입니다.");
								$("#pass").val("");
							} else{
								alert("결제 되었습니다.");
								$(".trcl").remove();
								$("#pass").val("");
							}
							
							
					}
			}); 
		}); */
		
		
		
		$("#cartButton").click(function(){
			var param = {};
			var loopCount = 1;
			var idx = 0;
			
			$("#rateForm").serializeArray().map(function(x){
				param['recordRateVOList[' + idx +'].'+x.name+''] = x.value ;
				if(loopCount%5 == 0) idx++;
				loopCount++;
			}); 
			
			console.log(param);
			
			$.ajax({ 
					type:"post",
			        url:"/cartInsert2.do",
			        contentType : "application/x-www-form-urlencoded; charset=UTF-8", 
			        data : param, 
					success:function(res){
							console.log(res);
							if(res == "fail"){
								alert("무언가 문제가??");
							} else{
								alert("카트에 추가되었습니다.");
								opener.location.href="/buycart.do"
								window.close();
							}
					}
			}); 
		});
		

		$(".rateCheckBox").click(function(){
			var htmlStr = "";
			var cnt = $(this).attr("name");
			var cnt1="";
			var cnt2="";
			if(cnt==1){
				cnt1="2";
				cnt2="3";	
			} else if(cnt==2){
				cnt1="1";
				cnt2="3";
			} else{
				cnt1="1";
				cnt2="2";
			}
			var arr = $(this).val().split("|");
			console.log($("#"+arr[0]+"checkB"+cnt).is(":checked"),$("#"+arr[0]+"checkB"+cnt1).is(":checked"),$("#"+arr[0]+"checkB"+cnt2).is(":checked"))
			if($("#"+arr[0]+"checkB"+cnt).is(":checked") && !$("#"+arr[0]+"checkB"+cnt1).is(":checked") && !$("#"+arr[0]+"checkB"+cnt2).is(":checked")){
				beadang=beadang*arr[2];
				$("#baedangsum").val(beadang.toFixed(2));
				var baedangr = $("#baedangsum").val();
				var batmoney= $("#inputCashList").val();
				var res=baedangr*batmoney;
				$("#yesang").val(res.toFixed(2));
				htmlStr += "<tr id='"+arr[0]+"newtd"+cnt+"'>";
				htmlStr += "<td>"+arr[0]+"</td><td>"+arr[1]+"</td><td>"+arr[2]+"</td>";
				htmlStr += "<td><a href='#'><i class='fa fa-trash-o' name='"+arr[0]+"-"+cnt+"'></i></a></td>";
				htmlStr += "</tr>";
				htmlStr += "<input type='hidden' class='"+arr[0]+"vava"+cnt+"' name='matchSeqList' value='"+arr[0]+"'>";
				htmlStr += "<input type='hidden' class='"+arr[0]+"vava"+cnt+"' name='scoreList' value='"+arr[1]+"'>";
				htmlStr += "<input type='hidden' class='"+arr[0]+"vava"+cnt+" recoderateList"+cnt+"' name='recoderateList' value='"+arr[2]+"'>";
				htmlStr += "<input type='hidden' class='"+arr[0]+"vava"+cnt+"' name='gameSeq' value='"+arr[3]+"'>";
		        $('#rateTbody').append(htmlStr);
			} else if($("#"+arr[0]+"checkB"+cnt).is(":checked")==false){
				var thisbaedang=$(".recoderateList"+cnt).val();
				beadang=beadang/thisbaedang;
				$("#baedangsum").val(beadang.toFixed(2));
				var baedangr = $("#baedangsum").val();
				var batmoney= $("#inputCashList").val();
				var res=baedangr*batmoney;
				$("#yesang").val(res.toFixed(2))
				$("#"+arr[0]+"newtd"+cnt).remove();
				$("."+arr[0]+"vava"+cnt).remove();
			} else{
				$("#"+arr[0]+"checkB"+cnt).prop("checked", false);
				$("#"+arr[0]+"newtd"+cnt).remove();
				$("."+arr[0]+"vava"+cnt).remove();
			}
		});
		
 		$("#inputCashList").change(function(){
			var baedangr = $("#baedangsum").val();
			var batmoney= $("#inputCashList").val();
			var res=baedangr*batmoney;
			   $("#yesang").val(res.toFixed(2));
		});

			
		
		$(document).on("click", '.fa.fa-trash-o', function() {
		   var arr = $(this).attr("name").split("-");
		   var thisbaedang=$(".recoderateList"+arr[1]).val();
		   beadang=beadang/thisbaedang;
		   console.log(arr[0],arr[1],beadang);
		   var baedangr = $("#baedangsum").val();
		   var batmoney= $("#inputCashList").val();
		   var res=baedangr*batmoney;
		   $("#yesang").val(res.toFixed(2));
		   $("#"+arr[0]+"checkB"+arr[1]).prop("checked", false);
		   $("#baedangsum").val(beadang.toFixed(2));
		   $("#"+arr[0]+"newtd"+arr[1]).remove();
		   $("."+arr[0]+"vava"+arr[1]).remove();
		   
		});
   
});


</script>
</head>

  <body>
    <div id="all">

      
      
      
      <div id="content">
        <div class="container">
          <div class="row bar">
            
<!-- 게시판 메인부분 -->
              <div class="heading">
                <h2>구매투표용지</h2>
              </div>
              <div id="basket" class="col-lg-13">
                  <div class="table-responsive">
                  
<!-- c:if 승부식이면 아래 테이블 띄우기-->
                    <div class="row bar col-lg-12">
            <div class="col-lg-12">
                  <h4>▶ 프로토 승부식</h4>
            </div>
            <div id="basket" class="col-lg-8">
                  <!-- <!--  -->
                  
                  
                  <div class="table-responsive col-md-30">
                 
                    <table class="table">
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
       <c:forEach var="gvolist" items="${KEY_GVO.matchlist}">
                      

                        <tr>
                          <td> ${gvolist.matchSeq}번</td>
                          <td>마감일시 뽑아야함</td>
                          <td>프리미어 리그</td>
                          <td><span class="badge badge-info">일반</span></td>
                          <td>${gvolist.homeTeamName} <span class="badge badge-danger">VS</span> ${gvolist.awayTeamName} </td>
                          <td><font color="red">승</font>${gvolist.vicVO.victoryrateWin}<input type="checkbox" id="${gvolist.matchSeq}checkB1" name="1" class="rateCheckBox"value="${gvolist.matchSeq}|1|${gvolist.vicVO.victoryrateWin}|${KEY_GVO.gameSeq}"></td>
                          <td>무${gvolist.vicVO.victoryrateDraw}<input type="checkbox" id="${gvolist.matchSeq}checkB2" name="2" class="rateCheckBox"value="${gvolist.matchSeq}|2|${gvolist.vicVO.victoryrateDraw}|${KEY_GVO.gameSeq}"></td>
                          <td><font color="blue">패</font>${gvolist.vicVO.victoryrateLose}<input type="checkbox" id="${gvolist.matchSeq}checkB3" name="3" class="rateCheckBox"value="${gvolist.matchSeq}|3|${gvolist.vicVO.victoryrateLose}|${KEY_GVO.gameSeq}"></td>
                          <td>--</td>
                        </tr>
                       </c:forEach>
                      </tbody>
                    </table>
                    
                  </div>
                  
            </div>
<!-- 합계 -->
            <div class="col-lg-4">
              <div id="order-summary" class="box mt-0 mb-4 p-0">
                <div class="box-header mt-0">
                  <h3>구입내역 확인</h3>
                </div>
                <div class="table-responsive">
                 <form id="rateForm">
                  <table class="table" id="buylist">
                  <thead>
                        <tr>
                          <th bgcolor="#EEEEEE" ><font size="2">번호</font></th>
                          <th bgcolor="#EEEEEE" ><font size="2">예상</font></th>
                          <th bgcolor="#EEEEEE" ><font size="2">배당률</font></th>
                          <th bgcolor="#EEEEEE" ><font size="2">삭제</font></th>
                        </tr>
                      </thead>
                      
                    <tbody id="rateTbody">
                    <!--  배당률 선택 시 보여질 영역 -->
                    </tbody>
						                    	
                  </table>
                  	<p>▷ 예상 적중 배당률 : <input id="baedangsum" name="baedangsum"class="lmk" type="text" size="10.5%" readonly><b>배</b></p>
                  <hr>
                 	<p>▷ 베팅금액 : <input id="inputCashList" name="inputCashList" class="lmk" type="text" size="10.5%"> <strong>원</strong></p>
                  <hr>
                  	<p>▷ 예상적중금 : <input id="yesang" type="text" size="10.5%" readonly><strong>원</strong>입니다.</p>
                  <hr>
                  	
                  <p>※ 구매가능 금액은 <font color="red">50,000 </font><strong>원</strong> 입니다.</p>
                  <p>※ 비밀번호를 입력하세요 <input class="input_cash pull-right" id="passWord" name="passWord" type="password" size="10.5%"> </p>
                  	<button type="button" id="cartButton" class="btn btn-sm btn-default">카트담기</button>
                  	<button type="button" id="buyButton" class="btn btn-sm btn-danger pull-right">바로구매</button>
                </form>
                </div>
                
                
              </div>
            </div>
          </div>
<!-- 합계 -->           
                    <br>
                  </div>
            </div>
            <hr>
            </div>
          </div>
        </div>
      </div>
    
<!-- Script Include CSS START-->
<%@ include file="/include/script.jsp" %>
<!-- Script Include CSS END-->
    
    
  </body>
</html>