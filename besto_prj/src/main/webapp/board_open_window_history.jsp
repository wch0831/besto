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
			$("#rateForm").serializeArray().map(function(x){
				param['recordRateVOList[' + idx +'].'+x.name+''] = x.value ;
				if(loopCount%4 == 0) idx++;
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
		
		
		$(".rateCheckBox").click(function(){
			var htmlStr = "";
			var arr = $(this).val().split("|");
			htmlStr += "<tr>";
			htmlStr += "<td>"+arr[0]+"</td><td>"+arr[1]+"</td><td>"+arr[2]+"</td>";
			htmlStr += "<td><input class='input_cash' name='inputCashList' type='text' size='5.5%'><strong>&nbsp;<font color='black'>원</font></strong></td>";
			htmlStr += "<td><a href='#'><i class='fa fa-trash-o'></i></a></td>";
			htmlStr += "</tr>";
			htmlStr += "<input type='hidden' name='matchSeqList' value='"+arr[0]+"'>";
			htmlStr += "<input type='hidden' name='scoreList' value='"+arr[1]+"'>";
			htmlStr += "<input type='hidden' name='recoderateList' value='"+arr[2]+"'>";
	        $('#rateTbody').append(htmlStr);
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
                  <!-- <!--  -->
                <div class="card">
                  <div id="headingOne" role="tab" class="card-header">
                    <h5 class="mb-0"><a data-toggle="collapse" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne" class="">맨유 vs 맨시티</a></h5>
                  </div>
                  <div id="collapseOne" role="tabpanel" aria-labelledby="headingOne" data-parent="#accordion" class="collapse show" style="">
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
                          <td style="font-size:10px; text-align:center;"> &nbsp&nbsp<input type="checkbox" class="rateCheckBox" value="1번|1-0|10.5"></td>
                          <td style="font-size:10px; text-align:center;">6번</td>
                          <td style="font-size:10px; text-align:center;">3-2</td>
                          <td style="font-size:10px; text-align:center;"> &nbsp&nbsp<input type="checkbox" class="rateCheckBox" value="6번|3-2|20.4"></td>
                          <td style="font-size:10px; text-align:center;">11번</td>
                          <td style="font-size:10px; text-align:center;">3-3</td>
                          <td style="font-size:10px; text-align:center;"> &nbsp&nbsp<input type="checkbox" class="rateCheckBox" value="11번|3-3|20.5"></td>
                          <td style="font-size:10px; text-align:center;">16번</td>
                          <td style="font-size:10px; text-align:center;">0-3</td>
                          <td style="font-size:10px; text-align:center;"> &nbsp&nbsp<input type="checkbox" class="rateCheckBox" value="16번|0-3|33.5"></td>
                        </tr>
                        <tr>
                          <td style="font-size:10px; text-align:center;">2번</td>
                          <td style="font-size:10px; text-align:center;">2-0</td>
                          <td style="font-size:10px; text-align:center;"> &nbsp&nbsp<input type="checkbox"></td>
                          <td style="font-size:10px; text-align:center;">7번</td>
                          <td style="font-size:10px; text-align:center;">기타승</td>
                          <td style="font-size:10px; text-align:center;"> &nbsp&nbsp<input type="checkbox"></td>
                          <td style="font-size:10px; text-align:center;">12번</td>
                          <td style="font-size:10px; text-align:center;">기타무</td>
                          <td style="font-size:10px; text-align:center;"> &nbsp&nbsp<input type="checkbox"></td>
                          <td style="font-size:10px; text-align:center;">17번</td>
                          <td style="font-size:10px; text-align:center;">1-3</td>
                          <td style="font-size:10px; text-align:center;"> &nbsp&nbsp<input type="checkbox"></td>
                        </tr>
                        <tr>
                          <td style="font-size:10px; text-align:center;">3번</td>
                          <td style="font-size:10px; text-align:center;">2-1</td>
                          <td style="font-size:10px; text-align:center;"> &nbsp&nbsp<input type="checkbox"></td>
                          <td style="font-size:10px; text-align:center;">8번</td>
                          <td style="font-size:10px; text-align:center;">0-0</td>
                          <td style="font-size:10px; text-align:center;"> &nbsp&nbsp<input type="checkbox"></td>
                          <td style="font-size:10px; text-align:center;">13번</td>
                          <td style="font-size:10px; text-align:center;">0-1</td>
                          <td style="font-size:10px; text-align:center;"> &nbsp&nbsp<input type="checkbox"></td>
                          <td style="font-size:10px; text-align:center;">18번</td>
                          <td style="font-size:10px; text-align:center;">2-3</td>
                          <td style="font-size:10px; text-align:center;"> &nbsp&nbsp<input type="checkbox"></td>
                        </tr>
                        <tr>
                          <td style="font-size:10px; text-align:center;">4번</td>
                          <td style="font-size:10px; text-align:center;">3-0</td>
                          <td style="font-size:10px; text-align:center;"> &nbsp&nbsp<input type="checkbox"></td>
                          <td style="font-size:10px; text-align:center;">9번</td>
                          <td style="font-size:10px; text-align:center;">1-1</td>
                          <td style="font-size:10px; text-align:center;"> &nbsp&nbsp<input type="checkbox"></td>
                          <td style="font-size:10px; text-align:center;">14번</td>
                          <td style="font-size:10px; text-align:center;">0-2</td>
                          <td style="font-size:10px; text-align:center;"> &nbsp&nbsp<input type="checkbox"></td> 
                          <td style="font-size:10px; text-align:center;">19번</td>
                          <td style="font-size:10px; text-align:center;">기타패</td>
                          <td style="font-size:10px; text-align:center;"> &nbsp&nbsp<input type="checkbox"></td>
                        </tr>                       
                        <tr>
                          <td style="font-size:10px; text-align:center;">5번</td>
                          <td style="font-size:10px; text-align:center;">3-1</td>
                          <td style="font-size:10px; text-align:center;"> &nbsp&nbsp<input type="checkbox"></td>
                          <td style="font-size:10px; text-align:center;">10번</td>
                          <td style="font-size:10px; text-align:center;">2-2</td>
                          <td style="font-size:10px; text-align:center;">&nbsp&nbsp<input type="checkbox"></td>
                          <td style="font-size:10px; text-align:center;">15번</td>
                          <td style="font-size:10px; text-align:center;">1-2</td>
                          <td style="font-size:10px; text-align:center;">&nbsp&nbsp<input type="checkbox"></td> 
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
                
                <div class="card">
                  <div id="headingTwo" role="tab" class="card-header">
                    <h5 class="mb-0"><a data-toggle="collapse" href="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo" class="">맨유2 vs 맨시티2</a></h5>
                  </div>
                  <div id="collapseTwo" role="tabpanel" aria-labelledby="headingTwo" data-parent="#accordion" class="collapse show" style="">
                    <div class="card-body">
                      <div class="row">
                          <div class="table-responsive col-md-30">
                    <table class="table">
                      <thead>
                        <tr>
                          <th bgcolor="#EEEEEE" >번호</th>
                          <th bgcolor="#EEEEEE" >예상</th>
                          <th bgcolor="#EEEEEE" >배당률</th>
                          <th bgcolor="#EEEEEE" >번호</th>
                          <th bgcolor="#EEEEEE" >예상</th>
                          <th bgcolor="#EEEEEE" >배당률</th>
                          <th bgcolor="#EEEEEE" >번호</th>
                          <th bgcolor="#EEEEEE" >예상</th>
                          <th bgcolor="#EEEEEE" >배당률</th>
                          <th bgcolor="#EEEEEE" >번호</th>
                          <th bgcolor="#EEEEEE" >예상</th>
                          <th bgcolor="#EEEEEE" >배당률</th>
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
                  </div>
                      </div>
                    </div>
                  </div>
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
                  	<button type="button" class="btn btn-sm btn-default">카트담기</button>
                  	<button type="button" class="btn btn-sm btn-info">카트가기</button>
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