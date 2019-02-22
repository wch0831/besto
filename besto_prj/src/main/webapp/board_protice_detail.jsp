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
/* 	$("#button1").click(function(){
		
	}) */
	
})

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
              <h1 class="h2">도전분석방 > 상세보기</h1>
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
<%@ include file="/include/sidebar_board_protice.jsp" %>
<!-- Sidebar_Main Include CSS END-->
              
            </div>
            
<!-- 게시판 메인부분 -->
            <div class="col-md-10">
              <p class="text-muted lead"><font size="2">남을 비방하는 글이나 욕설, 게시판 성격에 맞지 않거나 광고성 게시물은 사전 동의없이 삭제될 수 있습니다. 답변을 원하시는 건의 및 문의 사항은 고객센터 > 고객상담실을 이용하여 주시기 바랍니다. </font></p>
              <div id="basket" class="col-lg-12">
                <form method="post" action="/protice_select/${KEY_DETAIL.noticeSeq}.do">
                  <h4>◈ 공지사항</h4>
                  <br>
                  <h5>${KEY_DETAIL.noticeTitle}</h5><hr>
                  <font size="2"><strong>작성자</strong> : 관리자 </font> &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                  						    <font size="2"> <strong>등록일</strong> : ${KEY_DETAIL.noticeRegdate}</font><br><br>
                    	<br>
                    <div class="form-group col-sm-10">
                    	${KEY_DETAIL.noticeContent}
                    </div>
                    <br>
                  <hr>
                
                
                <div class="col-md-12 pull-right">
                <br>
<!-- 세션비교 후 작성자만 보이게 설정하기 -->
                  <button type="button" class="btn btn-sm btn-danger pull-right" onclick="location.href='/protice_delete/${KEY_DETAIL.noticeSeq}.do'"><i class="fa fa-times-circle"> 삭제</i></button>
                  <button type="butoon" class="btn btn-sm btn-primary pull-right" ><i class="fa fa-save"> 수정</i></button>
<!-- 세션비교 후 작성자만 보이게 설정하기 -->
                  <br><br>
                  </div>
                  <br><br><br>
                  <div class="col-lg-12">
                  <br>
                  </div>
                </form>
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