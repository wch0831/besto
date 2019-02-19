<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

<head>  


<!-- Header Include CSS START-->
<%@ include file="/include/header.jsp" %>
<!-- Header Include CSS END-->

<script>








/* 새창띄우기 Script */
/* function openWindow_match(){  
    window.open("board_open_window_match.jsp", "승부식보기", "width=1310, height=750, location=no, toolbar=no, menubar=no, scrollbars=yes, resizable=no" );  
}

function openWindow_history(){  
    window.open("board_open_window_history.jsp", "승부식보기", "width=1310, height=750, location=no, toolbar=no, menubar=no, scrollbars=yes, resizable=no" );  
} */
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
              <h1 class="h2">구매가능 게임</h1>
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
              <p class="text-muted lead"><font size="2">베스토의 구매가능 게임을 볼 수 있습니다.</font></p>
              
              <div id="basket" class="col-lg-12">
                <form method="get" action="board_manager_game_create.jsp">
                  <div class="table-responsive">
                  <h4>◈ 구매가능 게임</h4>
                    <table class="table">
	                      <thead bgcolor="#EEEEEE">
	                        <tr>
	                          <th style = "text-align:center;">게임구분</th>
	                          <th style = "text-align:center;">등록</th>
	                        </tr>
	                      </thead>
	                      <tbody>
	                        <tr>
	                          <td style = "text-align:center;">승부식</td>
	                          <td><input type="submit" class="btn btn-sm btn-danger" style="display: block; margin: 0 auto;" value=" 등록하기 "></td>
	                        </tr>
	                        <tr>
	                          <td style = "text-align:center;">기록식</td>
	                          <td><button type="button" class="btn btn-sm btn-danger" style="display: block; margin: 0 auto;" onclick="javascript:openWindow_history();"> 등록하기> </button></td>
	                        </tr>
	                      </tbody>
	                    </table>
                  </div>

                  
                  
                </form>
            </div>
            <hr>
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