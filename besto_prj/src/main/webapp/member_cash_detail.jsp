<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>

<head>  
<!-- Header Include CSS START-->
<%@ include file="/include/header.jsp" %>
<!-- Header Include CSS END-->
<script type="text/javascript">
$(document).ready(function(){
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
              <h1 class="h2">예치금 > 내역보기</h1>
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
                <form method="get" action="shop-checkout1.html">
                  <div class="table-responsive">
                    <h4>◈ 예치금 > 내역보기</h4>
                  		<p class="text-muted lead"><font size="2">상세내용을 보시려면 <strong>게임종류, 구매일시, 상태</strong>를 클릭해 주세요.</font></p>
                    <div class="table-responsive">
                    <div role="alert" class="alert alert-success">※ 현재 예치금 잔액 : <strong>${SESS_POINT} 원	 &emsp;&emsp;&emsp;&nbsp;&nbsp;</strong>
                    <button type="button" class="btn btn-link" onClick="location.href='member_cash_charge.jsp'">충전하기</button>
                    <button type="button" class="btn btn-link" onClick="location.href='member_cash_output.jsp'">출금하기</button>
                    </div>
                    
                  <table class="table">
                    <thead bgcolor="#EEEEEE">
                      <tr>
                        <th>구분</th>
                        <th>거래일자/시간</th>
                        <th>금액</th>
                        <th>비고</th>
                      </tr>
                    </thead>
                    <!-- 뿌려주는 곳  -->
                    <tbody id = "selectAll">
                    		<c:forEach items="${list}" var="point">
                      			<tr>
                      				<td><font color="pink"><strong>${point.POINT_GUBUN}</strong></font></td>
                      				<td>${point.POINT_REGDATE}</td>
                      				<td>${point.POINT_CHANGE}<strong>원</strong></td>
                      				<td>-</td>
                     	 		</tr>
                     		</c:forEach>              
                    </tbody>
                  </table>
                </div>
                <hr>
               </div>
                </form>
<!-- 페이징하셈 -->
             
<!-- 페이징하셈 --> 
            </div>
                 <div class="pages" style="position:relative; left: 0px;">
                <nav aria-label="Page navigation example" class="d-flex justify-content-center">
                  <ul class="pagination">
                  
                    <c:if test="${pageMaker.prev}">
                    <li class="page-item">
                    <a href='<c:url value="/selectSearch.do?page=${pageMaker.startPage-1 }"/>' class="page-link"><i class="fa fa-angle-double-left"></i></a></li>
                    </c:if>
                    
                    <c:if test="${pageMaker.startPage > 0}">
                    	<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var = "idx"> 
                    	<li class="page-item"><a href="/selectSearch.do?page=${idx}" class="page-link">${idx}</a></li>
                    	</c:forEach>
                    </c:if>
                    <c:if test="${pageMaker.startPage <= 0}">
                    	<c:forEach begin="1" end="${pageMaker.endPage}" var = "idx"> 
                    	<li class="page-item"><a href="/selectSearch.do?page=${idx}" class="page-link">${idx}</a></li>
                    	</c:forEach>
                    </c:if>
                    <c:if test="${pageMaker.next && pageMaker.endPage >0}">
                    <li class="page-item"><a href='<c:url value="/selectSearch.do?page=${pageMaker.endPage+1 }"/>' class="page-link"><i class="fa fa-angle-double-right"></i></a></li>
                    </c:if>
                  </ul>
                </nav>
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