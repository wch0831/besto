<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

<head>  
<!-- Header Include CSS START-->
<%@ include file="/include/header.jsp" %>
<!-- Header Include CSS END-->

  <script>
  	$(document).ready(function(){
  		$("#freeClick").click(function(){
  			var freeBoardTitle = $("#freeBoardTitle").val();
  			var freeBoardContent = $("#freeBoardContent").val();
  			if(freeBoardTitle == ""){
  				alert("제목을 입력하세용");
  				document.board.freeBoardTitle.focus();
  				return;
  			}
  			if(freeBoardContent == ""){
  				alert("내용을 입력하세용");
  				document.board.freeBoardContent.focus();
  				return;
  			}
  			document.board.submit();
  			
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
              <h1 class="h2">자유게시판 > 수정하기</h1>
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
                  <h4>◈ 자유게시판<font size="3"> - 수정하기</font> </h4><br>
                </div>
 
                <form name = "board" method="post" action="/board_free_register.do">
                  <div class="col-sm-10">
                    <div class="form-group">
                    
                    <input name = "freeBoardTitle" id="freeBoardTitle" class="form-control" type="text" placeholder="${param.freeBoardContent}" style="width:875px;"><br>
                    
                    <textarea name = "freeBoardContent"  id="freeBoardContent" class="form-control" placeholder="내용을 입력하세요" style="margin-top: 0px; margin-bottom: 0px; height: 240px; width: 875px;"></textarea>
                    </div>
                    </div>
                  <button type="button" class="btn btn-danger pull-right">취소</button>
                  <button name="freeClick" id="freeClick" type="button" class="btn btn-primary pull-right">작성</button>
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
    </div>
    
<!-- Script Include CSS START-->
<%@ include file="/include/script.jsp" %>
<!-- Script Include CSS END-->
    
    
  </body>
  
  

</html>