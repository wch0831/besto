<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

<head>  
<!-- Header Include CSS START-->
<%@ include file="/include/header.jsp" %>
<!-- Header Include CSS END-->

<script src="https://code.jquery.com/jquery-3.3.1.js"></script>

<script>
$(document).ready(function() {

		//@Controller에 ArrayList<RecordRateVO> 전송
		$("#buyButton3").click(function(){
			var param = {};
			var paramList = [];
			var loopCount = 1;
			$("#rateForm").serializeArray().map(function(x){
				param[x.name] = x.value;
				if(loopCount%4 == 0) {
					paramList.push(param);
					param = {};	
				}
				loopCount++;
			}); 
			console.log(param);
			 
			$.ajax({ 
					type:"post",
					url:"/buyCtl.do",
			        contentType : 'application/json; charset=UTF-8',
			        data : JSON.stringify(paramList),
			        success:function(res){
						console.log(res);
					}
			}); 
		});
		
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
			
		});
		
		
		
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
			        url:"/cartInsert.do",
			        contentType : "application/x-www-form-urlencoded; charset=UTF-8", 
			        data : param, 
					success:function(res){
							console.log(res);
							if(res == "fail"){
								alert("무언가 문제가??");
							} else{
								alert("카트에 추가되었습니다.");
							}
					}
			}); 
		});
		
		
		$(".rateCheckBox").click(function(){
		   var cnt = $(this).attr("name");
			console.log($("#checkB"+cnt).is(":checked"));
			if($("#checkB"+cnt).is(":checked")){
				var htmlStr = "";
				var arr = $(this).val().split("|");
				htmlStr += "<tr id='newtd"+cnt+"' class='trcl'>";
				htmlStr += "<td>"+arr[0]+"</td><td>"+arr[1]+"</td><td>"+arr[2]+"</td>";
				htmlStr += "<td><input class='input_cash' id='inputCashList' name='inputCashList' type='text' size='5.5%'><strong>&nbsp;<font color='black'>원</font></strong></td>";
				htmlStr += "<td><a href='#'><i class='fa fa-trash-o' name='"+cnt+"'></i></a></td>";
				htmlStr += "</tr>";
				htmlStr += "<input type='hidden' class='vv"+cnt+"' name='matchSeqList' value='"+arr[0]+"'>";
				htmlStr += "<input type='hidden' class='vv"+cnt+"' name='scoreList' value='"+arr[1]+"'>";
				htmlStr += "<input type='hidden' class='vv"+cnt+"' name='recoderateList' value='"+arr[2]+"'>";
				htmlStr += "<input type='hidden' class='vv"+cnt+"' name='gameSeq' value='"+arr[3]+"'>";
		        $('#rateTbody').append(htmlStr);
			} else{
				 $("#newtd"+cnt).remove();
				 $(".vv"+cnt).remove();
			}
			
		});
		
		$(document).on("click", '.fa.fa-trash-o', function() {
			var cnt = $(this).attr("name");
		   var checkcnt = $('.rateCheckBox').attr("name"); //번호가 하나만 저장된다?....안되네.. 멀 누르는지 모르니깐...
		   console.log($("#checkB"+cnt).prop("checked", true));
		   //if($("#checkB"+cnt).prop("checked", true)){
			   $("#checkB"+cnt).prop("checked", false);
		  // }
		   $("#newtd"+cnt).remove();
		   $(".vv"+cnt).remove();
		});
		
		
   
});



</script>




</head>


  <body>
    <div id="all">
      <div id="content">
        <div class="container">
          <div class="row bar">
              <div class="heading">
                <h2>구매투표용지</h2>
              </div>
              <div id="basket" class="col-lg-13">
                  <div class="table-responsive">
                  
                    <div class="row bar col-lg-12">
            <div class="col-lg-12">
                  <h4>▶ 프로토 기록식</h4>
            </div>
            <div id="basket" class="col-lg-8"> 
           <div Role="tablist">
        <c:forEach var="gvolist" items="${KEY_GVO.matchlist}" varStatus="status"> 
         
                <div class="card" >
                  <div role="tab" class="card-header">
                    <h5 class="mb-0"><a data-toggle="collapse" href="#collapseOne${status.index}" aria-expanded="true" aria-controls="collapseOne" class="">${gvolist.homeTeamName} vs ${gvolist.awayTeamName}</a></h5>
                  </div>
                  <div id="collapseOne${status.index}" role="tabpanel" aria-labelledby="headingOne" data-parent="#accordion" class="collapse show" style="">
                    <div class="card-body">
                      <div class="row">
                          <div class="table-responsive col-md-30">
                    <table class="table">
                      <thead>
                        <tr>
                          <th style="text-align:center;" width=70 bgcolor="#EEEEEE" >번호</th>
                          <th style="text-align:center;"width=70 bgcolor="#EEEEEE" >예상</th>
                          <th style="text-align:center;"width=90 bgcolor="#EEEEEE" >배당률</th>
                          <th style="text-align:center;"width=65 bgcolor="#EEEEEE" >번호</th>
                          <th style="text-align:center;" width=70 bgcolor="#EEEEEE" >예상</th>
                          <th style="text-align:center;" width=90 bgcolor="#EEEEEE" >배당률</th>  
                          <th style="text-align:center;" width=65 bgcolor="#EEEEEE" >번호</th>
                          <th style="text-align:center;" width=70 bgcolor="#EEEEEE" >예상</th>
                          <th style="text-align:center;" width=90 bgcolor="#EEEEEE" >배당률</th>  
                          <th style="text-align:center;" width=65 bgcolor="#EEEEEE" >번호</th>  
                          <th style="text-align:center;" width=70 bgcolor="#EEEEEE" >예상</th>
                          <th style="text-align:center;" width=90 bgcolor="#EEEEEE" >배당률</th>       
                         
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td style="font-size:10px; text-align:center;">1번</td>
                          <td style="font-size:10px; text-align:center;">1-0</td>
                          <td style="font-size:10px; text-align:center;"> ${gvolist.recVO.recoderate10} &nbsp&nbsp<input type="checkbox" id="checkB1" name="1" class="rateCheckBox" value="1번|1-0|${gvolist.recVO.recoderate10}|${KEY_GVO.gameSeq}"></td>
                          <td style="font-size:10px; text-align:center;">6번</td>
                          <td style="font-size:10px; text-align:center;">3-2</td>
                          <td style="font-size:10px; text-align:center;"> &nbsp&nbsp<input type="checkbox" id="checkB6" name="6" class="rateCheckBox" value="6번|3-2|20.4|${KEY_GVO.gameSeq}"></td>
                          <td style="font-size:10px; text-align:center;">11번</td>
                          <td style="font-size:10px; text-align:center;">3-3</td>
                          <td style="font-size:10px; text-align:center;"> &nbsp&nbsp<input type="checkbox" id="checkB11" name="11" class="rateCheckBox" value="11번|3-3|20.5|${KEY_GVO.gameSeq}"></td>
                          <td style="font-size:10px; text-align:center;">16번</td>
                          <td style="font-size:10px; text-align:center;">0-3</td>
                          <td style="font-size:10px; text-align:center;"> &nbsp&nbsp<input type="checkbox" id="checkB16" name="16" class="rateCheckBox" value="16번|0-3|33.5|${KEY_GVO.gameSeq}"></td>
                        </tr>
                        <tr>
                          <td style="font-size:10px; text-align:center;">2번</td>
                          <td style="font-size:10px; text-align:center;">2-0</td>
                          <td style="font-size:10px; text-align:center;"> ${gvolist.recVO.recoderate20} &nbsp&nbsp<input type="checkbox" id="checkB2" name="2" class="rateCheckBox" value="2번|2-0|${gvolist.recVO.recoderate20}|${KEY_GVO.gameSeq}"></td>
                          <td style="font-size:10px; text-align:center;">7번</td>
                          <td style="font-size:10px; text-align:center;">기타승</td>
                          <td style="font-size:10px; text-align:center;"> &nbsp&nbsp<input type="checkbox" id="checkB7" name="7" class="rateCheckBox" value="7번|기타승|999|${KEY_GVO.gameSeq}"></td>
                          <td style="font-size:10px; text-align:center;">12번</td>
                          <td style="font-size:10px; text-align:center;">기타무</td>
                          <td style="font-size:10px; text-align:center;"> &nbsp&nbsp<input type="checkbox" id="checkB12" name="12" class="rateCheckBox" value="12번|기타무|999|${KEY_GVO.gameSeq}"></td>
                          <td style="font-size:10px; text-align:center;">17번</td>
                          <td style="font-size:10px; text-align:center;">1-3</td>
                          <td style="font-size:10px; text-align:center;"> &nbsp&nbsp<input type="checkbox" id="checkB17" name="17" class="rateCheckBox" value="17번|1-3|20.4|${KEY_GVO.gameSeq}"></td>
                        </tr>
                        <tr>
                          <td style="font-size:10px; text-align:center;">3번</td>
                          <td style="font-size:10px; text-align:center;">2-1</td>
                          <td style="font-size:10px; text-align:center;"> &nbsp&nbsp<input type="checkbox" id="checkB3" name="3" class="rateCheckBox" value="3번|2-1|12.4|${KEY_GVO.gameSeq}"></td>
                          <td style="font-size:10px; text-align:center;">8번</td>
                          <td style="font-size:10px; text-align:center;">0-0</td>
                          <td style="font-size:10px; text-align:center;"> ${gvolist.recVO.recoderate00} &nbsp&nbsp<input type="checkbox" id="checkB8" name="8" class="rateCheckBox" value="8번|0-0|${gvolist.recVO.recoderate00}|${KEY_GVO.gameSeq}"></td>
                          <td style="font-size:10px; text-align:center;">13번</td>
                          <td style="font-size:10px; text-align:center;">0-1</td>
                          <td style="font-size:10px; text-align:center;"> ${gvolist.recVO.recoderate01} &nbsp&nbsp<input type="checkbox" id="checkB13" name="13" class="rateCheckBox" value="13번|0-1|${gvolist.recVO.recoderate01}|${KEY_GVO.gameSeq}"></td>
                          <td style="font-size:10px; text-align:center;">18번</td>
                          <td style="font-size:10px; text-align:center;">2-3</td>
                          <td style="font-size:10px; text-align:center;"> &nbsp&nbsp<input type="checkbox" class="rateCheckBox" id="checkB18" name="18" value="18번|2-3|30|${KEY_GVO.gameSeq}"></td>
                        </tr>
                        <tr>
                          <td style="font-size:10px; text-align:center;">4번</td>
                          <td style="font-size:10px; text-align:center;">3-0</td>
                          <td style="font-size:10px; text-align:center;"> &nbsp&nbsp<input type="checkbox" class="rateCheckBox" id="checkB4" name="4" value="4번|3-0|17.4|${KEY_GVO.gameSeq}"></td>
                          <td style="font-size:10px; text-align:center;">9번</td>
                          <td style="font-size:10px; text-align:center;">1-1</td>
                          <td style="font-size:10px; text-align:center;"> ${gvolist.recVO.recoderate11} &nbsp&nbsp<input type="checkbox" id="checkB9" name="9" class="rateCheckBox" value="9번|1-1|${gvolist.recVO.recoderate11}|${KEY_GVO.gameSeq}"></td>
                          <td style="font-size:10px; text-align:center;">14번</td>
                          <td style="font-size:10px; text-align:center;">0-2</td>
                          <td style="font-size:10px; text-align:center;"> ${gvolist.recVO.recoderate02} &nbsp&nbsp<input type="checkbox" id="checkB14" name="14" class="rateCheckBox" value="14번|0-2|${gvolist.recVO.recoderate02}|${KEY_GVO.gameSeq}"></td> 
                          <td style="font-size:10px; text-align:center;">19번</td>
                          <td style="font-size:10px; text-align:center;">기타패</td>
                          <td style="font-size:10px; text-align:center;"> &nbsp&nbsp<input type="checkbox" id="checkB19" name="19" class="rateCheckBox" value="19번|기타패|999|${KEY_GVO.gameSeq}"></td>
                        </tr>                       
                        <tr>
                          <td style="font-size:10px; text-align:center;">5번</td>
                          <td style="font-size:10px; text-align:center;">3-1</td>
                          <td style="font-size:10px; text-align:center;"> &nbsp&nbsp<input type="checkbox" id="checkB5" name="5" class="rateCheckBox" value="5번|3-1|25.4|${KEY_GVO.gameSeq}"></td>
                          <td style="font-size:10px; text-align:center;">10번</td>
                          <td style="font-size:10px; text-align:center;">2-2</td>
                          <td style="font-size:10px; text-align:center;"> ${gvolist.recVO.recoderate22} &nbsp&nbsp<input type="checkbox" id="checkB10" name="10" class="rateCheckBox" value="10번|2-2|${gvolist.recVO.recoderate22}|${KEY_GVO.gameSeq}"></td>
                          <td style="font-size:10px; text-align:center;">15번</td>
                          <td style="font-size:10px; text-align:center;">1-2</td>
                          <td style="font-size:10px; text-align:center;">&nbsp&nbsp<input type="checkbox" id="checkB15" name="15" class="rateCheckBox" value="15번|1-2|7.4|${KEY_GVO.gameSeq}"></td> 
                          <td style="font-size:10px; text-align:center;"></td>
                          <td></td>
                          <td></td>
                        </tr>                        
                      </tbody>
                    </table>
                  </div>
                      </div>
                    </div>
                  </div>
                </div>
                
         </c:forEach>
           </div> 
            <div class="card"  style="visibility:hidden">
             <table class="table">
                      <thead>
                        <tr>
                          <th style="text-align:center;" width=70 bgcolor="#EEEEEE" >번호</th>
                          <th style="text-align:center;"width=70 bgcolor="#EEEEEE" >예상</th>
                          <th style="text-align:center;"width=90 bgcolor="#EEEEEE" >배당률</th>
                          <th style="text-align:center;"width=65 bgcolor="#EEEEEE" >번호</th>
                          <th style="text-align:center;" width=70 bgcolor="#EEEEEE" >예상</th>
                          <th style="text-align:center;" width=90 bgcolor="#EEEEEE" >배당률</th>  
                          <th style="text-align:center;" width=65 bgcolor="#EEEEEE" >번호</th>
                          <th style="text-align:center;" width=70 bgcolor="#EEEEEE" >예상</th>
                          <th style="text-align:center;" width=90 bgcolor="#EEEEEE" >배당률</th>  
                          <th style="text-align:center;" width=65 bgcolor="#EEEEEE" >번호</th>  
                          <th style="text-align:center;" width=70 bgcolor="#EEEEEE" >예상</th>
                          <th style="text-align:center;" width=90 bgcolor="#EEEEEE" >배당률</th>       
                         
                        </tr>
                      </thead>
             </table>
            </div>
                
                
                
            </div>
<!-- 합계 -->
            <div class="col-lg-4">
              <div id="order-summary" class="box mt-0 mb-4 p-0">
                <div class="box-header mt-0">
                  <h3>구입내역 확인</h3>
                </div>
                
                
                <!--  -->
                <div class="table-responsive">
                  <form id="rateForm">
                  <table class="table">
                  <thead>
                        <tr>
                          <th bgcolor="#EEEEEE" ><font size="2">게임</font></th>
                          <th bgcolor="#EEEEEE" ><font size="2">예상</font></th>
                          <th bgcolor="#EEEEEE" ><font size="2">배당률</font></th>
                          <th bgcolor="#EEEEEE" ><font size="2">구매금액</font></th>
                          <th bgcolor="#EEEEEE" ><font size="2">삭제</font></th>
                        </tr>
                      </thead>
                    <tbody id="rateTbody">
                    <!--  배당률 선택 시 보여질 영역 -->
                    </tbody>
						<tr>
						</tr>                    	
                  </table>
                 <p>▷ 총 구매금액 : 3,000 <strong>원</strong>입니다.</p>
                  <hr>
                  <p>※ 구매가능 금액은 <font color="red">50,000 </font><strong>원</strong> 입니다.</p>
                  <p>※ 비밀번호를 입력하세요 <input class="input_cash pull-right" id="pass" name="pass" type="password" size="10.5%"> </p>
                  	<button type="button" id="cartButton" class="btn btn-sm btn-default">카트담기</button>
                  	<button type="button" onclick="location.href='/buycart.do'" class="btn btn-sm btn-info">카트가기</button>
                  	<button type="button" id="buyButton" class="btn btn-sm btn-danger pull-right">바로구매</button>
                </form>
                </div>
                <!--  -->
                
                
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