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
                          <th bgcolor="#EEEEEE" ><font size="2">번호</font></th>
                          <th bgcolor="#EEEEEE" ><font size="2">홈팀</font></th>
                          <th bgcolor="#EEEEEE" ><font size="2">배당률</font></th>
                          <th bgcolor="#EEEEEE" ><font size="2">삭제</font></th>
                        </tr>
                      </thead>
                    <tbody>
                      <tr>
                        <td><font color="black">7</font></td>
                        <td><font color="black">대한항공</font></td>
                        <td><font color="black">2.70</font></td>
                        <td><a href="#"><i class="fa fa-trash-o"></i></a></td>
                      </tr>
                    </tbody>
						<tr>
						</tr>                    	
                  </table>
                  	<p>▷ 예상 적중 배당률 : 2.7 <b>배</b></p>
                  <hr>
                 	<p>▷ 베팅금액 : <input id="input_cash" type="text" size="10.5%"> <strong>원</strong></p>
                  <hr>
                  	<p>▷ 예상적중금 : 7,500 <strong>원</strong>입니다.</p>
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
                    
                    
                    
                    
                    
                    
                    
                    
                    
<!-- c:if 기록식이면 아래 테이블 -->






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