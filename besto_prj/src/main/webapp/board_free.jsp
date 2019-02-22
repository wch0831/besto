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
              <h1 class="h2">자유게시판</h1>
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
                <form method="get" action="/register">
                  <div class="table-responsive">
                  <h4>◈ 자유게시판</h4>
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
                      <tbody>
                      <c:forEach var="a" items="${KEY_RESULT}">
                        <tr>    
                          <td style = "text-align:center;">${a.postSeq}</td>
                          <td style = "text-align:center;">
                          
                         <%--  <a href="/board_free_detail.do?postSeq=${a.postSeq}"><font color="black">${a.freeBoardTitle}</font></a> --%>
                          <a href="/board_free_detail/${a.postSeq}.do"><font color="black">${a.freeBoardTitle}</font></a>
                          
                          </td>
                          
                          
                          <td style = "text-align:center;">${a.usersName}</td>
                          <td style = "text-align:center;">${a.freeBoardRegdate}</td>
                          <td style = "text-align:center;">${a.freeBoardHits}</td>
                        </tr>
                      </c:forEach>
     
                      </tbody>
                    </table>
                    <br>
                  <button type="button" class="btn btn-primary pull-right" onclick="location.href='board_free_register.jsp'">글쓰기</button>
                  </div>
                </form>
            </div>
            <hr>
            
<!-- style = "vertical-align:right;" -->
<!-- 검색바 -->
			<div class="col-md-10 pull-right">
              <div class="row pull-right">
              <div class="btn-group bootstrap-select bs-select ">
              	 <div class="dropdown-menu open" role="combobox" x-placement="bottom-start" style="position:absolute; align:right; will-change: transform; top:0px; left:50px;">
              	 </div>
					<select class="bs-select" tabindex="-98" style="width:50px;">
                      <option value="title">제목</option>
                      <option value="user">작성자</option>
                     </select>
                 </div>
            	<div class="panel-body" >
                  <form role="search">
                    <div class="input-group">
                      <input type="text" placeholder="검색" class="form-control"><span class="input-group-btn">
                        <button type="submit" class="btn btn-template-main"><i class="fa fa-search"></i></button></span>
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