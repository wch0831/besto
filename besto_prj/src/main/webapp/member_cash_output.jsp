<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

<head>  
<!-- Header Include CSS START-->
<%@ include file="/include/header.jsp" %>
<!-- Header Include CSS END-->
<script type="text/javascript">
$(document).ready(function(){
	$("#refundBtn").click(function(){
		alert("출금신청 들어갑니다.");
		$('#refund').submit(function() { 
			alert("출금 되었습니다."); 
		});
	});
	
	/* $("#refundBtn").click(function(){
		var pointChange = $("#pointChange").val();
		alert(pointChange);
		$.ajax({
			url:"/refund.do",
			type:"GET",
			data:"pointChange="+pointChange,
			success:function(res){
				if(res == 1) {
					alert("환급이 완료되었습니다.");
					location.href("member_cash_output.jsp");
				} else {
					alert("환급이 실패하였습니다.");
					return false;
				}
			}
		})
	}) */
	function timer_test(){
		alert("예치금 내역보기 페이지로 이동합니다.");
		}
	
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
              <h1 class="h2">예치금 > 출금</h1>
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
<%@ include file="/include/sidebar_member.jsp" %>
<!-- Sidebar_Main Include CSS END-->
              
            </div>
            
<!-- 게시판 메인부분 -->
            <div class="col-md-10">
              <div id="basket" class="col-lg-12">
                <form method="get" action="/refund.do" id="refund" name="refund">
                  <div class="table-responsive">
                    <h4>◈ 예치금 > 출금</h4>
                  		<p class="text-muted lead"><font size="2">상세내용을 보시려면 <strong>게임종류, 구매일시, 상태</strong>를 클릭해 주세요.</font></p>
                    <div class="table-responsive">
                    
                    <p><strong>·본인 명의의 은행계좌</strong>로 출금이 가능합니다.</p>
                    <p><font size="2">예치금 출금 시에는 결제대행 수수료가 부과되며 예치금 충전 방법에 따라 다르게 부과됩니다.</font></p>
                    <p><font size="2">단, 적중금과 경기취소 및 구매오류로 인한 환불금은 수수료 없이 출금 가능합니다.</font></p>
                    
                    <br>
                    <div role="alert" class="alert alert-success">※ 현재 예치금 잔액 : <strong>${SESS_POINT} 원		 &emsp;&emsp;&emsp;&nbsp;&nbsp;</strong>
                    <input type="text" placeholder="금액을 적어주세요." class="form-control" id="pointChange" name="pointChange">
                    <button type="submit" class="btn btn-link" id="refundBtn">출금신청</button>
                    </div>
                    <p> <font size="2">- 예치금은 출금신청 시간에 따라 당일 혹은 익일에 입금됩니다.</font></p>
                  <table class="table">
                    <thead bgcolor="#EEEEEE">
                      <tr>
                        <th bgcolor="#EEEEEE">예치금 출금신청 시간</th>
                        <th bgcolor="#EEEEEE">입금시간</th>
                      </tr>
                    </thead>
                    <tbody>  
                      <tr>
                        <td>0시부터 8시까지</td>
                        <td>당일 9시 30분부터 14시까지</td>
                      </tr>
                      <tr>
                        <td>8시부터 16시까지</td>
                        <td>당일 14시부터 18시까지</td>
                      </tr>
                      <tr>
                        <td>16시부터 24시까지</td>
                        <td>익일 9시 30분부터 14시까지</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
                <hr>
               </div>
               <br>
                </form>
            </div>
            <br>
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