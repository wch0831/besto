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

      
      
      
      <div id="content">
        <div class="container">
          <div class="row bar">
            
<!-- 게시판 메인부분 -->
              <div class="heading">
                <h2>구매투표용지</h2>
              </div>
              <div id="basket" class="col-lg-12">
                  <div class="table-responsive">
                  
<!-- c:if 승부식이면 아래 테이블 띄우기-->
                    <div class="row bar">
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
                
                <div class="table-responsive">
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
                    <tbody>
                      <tr>
                        <td>--</td>
                        <td>--</td>
                        <td>--</td>
                        <td><input id="input_cash" type="text" size="5.5%"><strong>&nbsp;<font color="black">원</font></strong></td>
                        <td><a href="#"><i class="fa fa-trash-o"></i></a></td>
                      </tr>
                    </tbody>
						<tr>
						</tr>                    	
                  </table>
                  
                 <p>▷ 총 구매금액 : 3,000 <strong>원</strong>입니다.</p>
                  <hr>
                  <p>※ 구매가능 금액은 <font color="red">50,000 </font><strong>원</strong> 입니다.</p>
                  	<button type="button" class="btn btn-sm btn-default">카트담기</button>
                  	<button type="button" class="btn btn-sm btn-info">카트가기</button>
                  	<button type="button" class="btn btn-sm btn-danger pull-right">바로구매</button>
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