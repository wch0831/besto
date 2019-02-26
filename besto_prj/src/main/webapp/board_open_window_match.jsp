<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

<head>  
<!-- Header Include CSS START-->
<%@ include file="/include/header.jsp" %>
<!-- Header Include CSS END-->
<script>
var mon=0;
var idx=0;
var beadang=1;
var input_money=0;
function money_Sum(){  
	idx=0;
	mon=0;


/* 	var listmap=$('#rateTbody').find('tr');
	console.log(listmap); */
	
	$('#rateTbody').find('tr').each(function(i, e){
		input_money=0;
		
		idx=idx+1;
		console.log(idx);
		input_money=$(this).find(".input_cash").val()*1; 
		console.log('인풋머니:  '+input_money);
		
		
		console.log('----');
		console.log("구매금액   "+$(this).find(".input_cash").val());
		console.log('----');
		
		
		
		mon=mon+input_money;
		console.log(mon);
});
	
	
	$("#input_cash").val(mon);
	
	
	
	
	var baedangr = $("#baedang").val();
	   var batmoney= $("#input_cash").val();
	   var res=baedangr*batmoney;
	   $("#yesang").val(res)

	   
}
function money_Delete(money){  
	money*=1;
	mon=mon-money
	$("#input_cash").val(mon);
	console.log(mon);
    
}
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
			$("#rateForm").serializeArray().map(function(x){
				param['victoryRateVOList[' + idx +'].'+x.name+''] = x.value ;
				if(loopCount%5 == 0) idx++;
				loopCount++;
			}); 
			console.log(param);
			
			$.ajax({ 
					type:"post",
			        url:"/buyRestCtl.do",
			        contentType : "application/x-www-form-urlencoded; charset=UTF-8", 
			        data : param, 
					success:function(res){
							console.log(res);
					}
			}); 
		});
		
		


		var clicknum = 0;
		$(".rateCheckBox").click(function(){
			clicknum++;
			var htmlStr = "";
			var arr = $(this).val().split("|");
			console.log(beadang);
			beadang=beadang*arr[2];
			console.log(beadang);
			$("#baedang").val(beadang);
			htmlStr += "<tr id='newtd"+clicknum+"'>";
			htmlStr += "<td>"+arr[0]+"</td><td>"+arr[1]+"</td><td>"+arr[2]+"</td>";
			htmlStr += "<td><input id='input_cashm"+clicknum+"' class='input_cash m"+clicknum+"' name='inputCashList' type='text' size='5.5%' onchange='javascript:money_Sum();'><strong>&nbsp;<font color='black'>원</font></strong></td>";
			htmlStr += "<td><a href='#'><i class='fa fa-trash-o' name='"+clicknum+"'></i></a></td>";
			htmlStr += "</tr>";
			htmlStr += "<input type='hidden' class='vava"+clicknum+" matchSeqList"+clicknum+"' name='matchSeqList' value='"+arr[0]+"'>";
			htmlStr += "<input type='hidden' class='vava"+clicknum+" scoreList"+clicknum+"' name='scoreList' value='"+arr[1]+"'>";
			htmlStr += "<input type='hidden' class='vava"+clicknum+" recoderateList"+clicknum+"' name='recoderateList' value='"+arr[2]+"'>";
			htmlStr += "<input type='hidden' class='vava"+clicknum+" gseq"+clicknum+"' name='gseq' value='"+arr[3]+"'>";
	        $('#rateTbody').append(htmlStr);
		});
		
/* 		$('.lmk').change(function(){
			console.log('qq');
			 var baedangr = $("#baedang").val();
			   var batmoney= $("#input_cash").val();
			   var res=baedangr*batmoney;
			   $("#yesang").val(res)
			}); */


		
		$(document).on("click", '.fa.fa-trash-o', function() {
		   var cnt = $(this).attr("name");
		   var mon= $(".m"+cnt).val();
		   var thisbaedang=$(".recoderateList"+cnt).val();
		   beadang=beadang/thisbaedang;
			$("#baedang").val(beadang);
		   console.log(mon);
		   money_Delete(mon);
		   $("#newtd"+cnt).remove();
		   $(".vava"+cnt).remove();
		   
		   
		   idx=0;
		   mon=0;
			$('#rateTbody').find('tr').each(function(i, e){
				input_money=0;
				
				idx=idx+1;
				console.log(idx);
				input_money=$(this).find(".input_cash").val()*1; 
				console.log('인풋머니:  '+input_money);
				
				
				console.log('----');
				console.log("구매금액   "+$(this).find(".input_cash").val());
				console.log('----');
				
				
				
				mon=mon+input_money;
				console.log(mon);
		});
			$("#input_cash").val(mon);

		   var baedangr = $("#baedang").val();
		   var batmoney= $("#input_cash").val();
		   var res=baedangr*batmoney;
		  
		   $("#yesang").val(res)
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
                          <td><font color="red">승</font>${gvolist.vicVO.victoryrateWin}<input type="checkbox"  name="13" class="rateCheckBox"value="${gvolist.matchSeq}번|승|${gvolist.vicVO.victoryrateWin}|${KEY_GVO.gameSeq}"></td>
                          <td>무${gvolist.vicVO.victoryrateDraw}<input type="checkbox"  name="13" class="rateCheckBox"value="${gvolist.matchSeq}번|무|${gvolist.vicVO.victoryrateDraw}|${KEY_GVO.gameSeq}"></td>
                          <td><font color="blue">패</font>${gvolist.vicVO.victoryrateLose}<input type="checkbox"  name="13" class="rateCheckBox"value="${gvolist.matchSeq}번|패|${gvolist.vicVO.victoryrateLose}|${KEY_GVO.gameSeq}"></td>
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
                  <table class="table" id="buylist">
                  <thead>
                        <tr>
                          <th bgcolor="#EEEEEE" ><font size="2">번호</font></th>
                          <th bgcolor="#EEEEEE" ><font size="2">예상</font></th>
                          <th bgcolor="#EEEEEE" ><font size="2">배당률</font></th>
                          <th bgcolor="#EEEEEE" ><font size="2">구매금액</font></th>
                          <th bgcolor="#EEEEEE" ><font size="2">삭제</font></th>
                        </tr>
                      </thead>
                      
                    <tbody id="rateTbody">
                    <!--  배당률 선택 시 보여질 영역 -->
                    </tbody>
						                    	
                  </table>
                  	<p>▷ 예상 적중 배당률 : <input id="baedang" class="lmk" type="text" size="10.5%" readonly><b>배</b></p>
                  <hr>
                 	<p>▷ 베팅금액 : <input id="input_cash" class="lmk" type="text" size="10.5%" readonly> <strong>원</strong></p>
                  <hr>
                  	<p>▷ 예상적중금 : <input id="yesang" type="text" size="10.5%" readonly><strong>원</strong>입니다.</p>
                  <hr>
                  <p>※ 구매가능 금액은 <font color="red">50,000 </font><strong>원</strong> 입니다.</p>
                  	<button type="button" class="btn btn-sm btn-default">카트담기</button>
                  	<button type="button" class="btn btn-sm btn-info">카트가기</button>
                  	<button type="button" id="buyButton" class="btn btn-sm btn-danger pull-right">바로구매</button>
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