<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>


<head>  
<!-- Header Include CSS START-->
<%@ include file="/include/header.jsp" %>
<!-- Header Include CSS END-->
<script>
 

	$(document).ready(function() {

		$("#searchButton").click(function() {
			var text = $("input[name=search]").val();
			console.log(text);

			$.ajax({
				type : "GET",
				url : "/notice_serach.do",
				contentType: "application/x-www-form-urlencoded; charset=UTF-8",
				data : "b="+text,
				success : function(res) {
					
					console.log(res);
					var htmlStr = "";
					$.map(res, function(vv, idx){
						htmlStr += "<tr>";
						htmlStr += "<td style = 'text-align:center;'>"+vv.noticeSeq+"</td>";	
						htmlStr += "<td style = 'text-align:center;'><a href='/board_protice/"+vv.noticeSeq+".do'><font color='black'>"+vv.noticeTitle+"</font></a></td>";
						htmlStr += "<td style = 'text-align:center;'>관리자</td>";
						htmlStr += "<td style = 'text-align:center;'>"+vv.noticeRegdate+"</td>";
						htmlStr += "<td style = 'text-align:center;'>"+vv.noticeHits+"</td>";
						htmlStr += "</tr>";
					})
					
					$("#searchDetail").empty();
					$("#searchDetail").html(htmlStr);
					console.log(htmlStr);
					
					console.log("siri! 제대로 가고있어???? >>>>>>>>>>>>>>>>>" + text);
					
				}

			});
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
              <h1 class="h2">공지사항</h1>
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

<!-- Sidebar Include CSS START-->
<%@ include file="/include/sidebar_board_protice.jsp" %>
<!-- Sidebar Include CSS END--> 
              
            </div>
            
<!-- 게시판 메인부분 -->
            <div class="col-md-10">
              <p class="text-muted lead"><font size="2">남을 비방하는 글이나 욕설, 게시판 성격에 맞지 않거나 광고성 게시물은 사전 동의없이 삭제될 수 있습니다. 답변을 원하시는 건의 및 문의 사항은 고객센터 > 고객상담실을 이용하여 주시기 바랍니다. </font></p>
              
              <div id="basket" class="col-lg-12">
                <form method="get" action="shop-checkout1.html">
                  <div class="table-responsive">
                  <h4>◈ 공지사항</h4>
                    <table class="table">
                      <thead bgcolor="#EEEEEE">
                        <tr>
                          <th style = "text-align:center;">글번호</th>
                          <th style = "text-align:center;">제목</th>
                          <th style = "text-align:center;">작성자</th>
                          <th style = "text-align:center;">등록일</th>
                          <th style = "text-align:center;">조회수</th>
                        </tr>
                      </thead>
                      
                      <tbody id="searchDetail">
                      	<c:forEach var="noti" items="${KEY_NOTICE}" varStatus="status">
                        	<tr>
                          		<td style = "text-align:center;">${noti.noticeSeq}</td>
                          		<td style = "text-align:center;"><a href="/board_protice/${noti.noticeSeq}.do"><font color="black">${noti.noticeTitle}</font></a></td>
                          		<td style = "text-align:center;">관리자</td>
                          		<td style = "text-align:center;">${noti.noticeRegdate}</td>
                          		<td style = "text-align:center;">${noti.noticeHits}</td>
                        	</tr>
                        </c:forEach>
                      </tbody>
                    </table>
                  </div>
                </form>
            </div>
            <hr>
            
<!-- 검색바 -->
			<div class="col-md-10 pull-right">
              <div class="row pull-right">
              <div class="btn-group bootstrap-select bs-select ">
              	 <div class="dropdown-menu open" role="combobox" x-placement="bottom-start" style="position:absolute; align:right; will-change: transform; top:0px; left:50px;">
              	 </div>
					<select class="bs-select" tabindex="-98" style="width:50px;">
                      <option value="title">제목</option>
                     </select>
                 </div>
            	<div class="panel-body" >
                  <form role="search">
                    <div class="input-group">
                      <input type="text" placeholder="검색" class="form-control" id="search" name="search"> <span class="input-group-btn">
                        <button type="button" class="btn btn-template-main" id="searchButton" name="searchButton"><i class="fa fa-search"></i></button></span>
                    </div>
                  </form>
                </div>
            </div>
            </div>
            
<!-- 검색바 -->
<!-- 페이징하셈 -->
              <div class="pages" style="position:relative; left: 360px; top: 40px;">
                <nav aria-label="Page navigation example" class="d-flex justify-content-center">
                  <ul class="pagination">
                    <li class="page-item"><a href="#" class="page-link"> <i class="fa fa-angle-double-left"></i></a></li>
                    <li class="page-item active"><a href="#" class="page-link">1</a></li>
                    <li class="page-item"><a href="#" class="page-link">2</a></li>
                    <li class="page-item"><a href="#" class="page-link">3</a></li>
                    <li class="page-item"><a href="#" class="page-link">4</a></li>
                    <li class="page-item"><a href="#" class="page-link">5</a></li>
                    <li class="page-item"><a href="#" class="page-link"><i class="fa fa-angle-double-right"></i></a></li>
                  </ul>
                </nav>
              </div>
<!-- 페이징하셈 --> 
              
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