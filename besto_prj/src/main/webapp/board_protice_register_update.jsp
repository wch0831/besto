<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

<head>  
<!-- Header Include CSS START-->
<%@ include file="/include/header.jsp" %>
<!-- Header Include CSS END-->
<script>
/* $(document).ready(function(){
	$("#button").click(function(){
		submit();
	});
}); */

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
              <h1 class="h2">공지사항 > 등록하기(관리자)</h1>
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
                  <div class="table-responsive">
                  <h4>◈ 공지사항<font size="3"> - 작성하기</font> </h4><br>
                </div>
                <form method="post" action="/protice_update/${KEY_SELET.noticeSeq}.do">
                  <div class="col-sm-10">
                    <div class="form-group">
                    <input class="form-control" type="text" style="width:875px;" id="noticeTitle" name="noticeTitle" value="${KEY_SELET.noticeTitle}">  <br>
                    <textarea class="form-control" style="margin-top: 0px; margin-bottom: 0px; height: 240px; width: 875px;" id="noticeContent" name="noticeContent">${KEY_SELET.noticeContent}</textarea>
                    </div>
                    </div><!-- onclick="location.href='/board_protice_register.do'" -->
                  <button type="button" class="btn btn-danger pull-right"><a href="/board_protice.do">취소</a></button>
                  <button type="submit" class="btn btn-primary pull-right">수정</button>
                </form>
                  </div>
            </div>
            </div>
          </div>
        </div>
      </div>
      
<!-- Footer Include CSS START-->
<%@ include file="/include/footer.jsp" %>
<!-- Footer Include CSS END-->
    
<!-- Script Include CSS START-->
<%@ include file="/include/script.jsp" %>
<!-- Script Include CSS END-->
    
    
  </body>
</html>