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
              <h1 class="h2">FAQ</h1>
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
                  <h4>◈ FAQ</h4>
                  
                  
                  <div id="accordion" role="tablist" class="mb-5">
                <div class="card">
                  <div id="headingOne" role="tab" class="card-header">
                    <h5 class="mb-0"><a data-toggle="collapse" href="#collapseOne" aria-expanded="false" aria-controls="collapseOne" class="collapsed">회차당 1인 구매한도가 있나요?</a></h5>
                  </div>
                  <div id="collapseOne" role="tabpanel" aria-labelledby="headingOne" data-parent="#accordion" class="collapse" style="">
                    <div class="card-body">
                      <div class="row">
                        <div class="col-md-8">
                          <p>응. 있어.</p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="card">
                  <div id="headingTwo" role="tab" class="card-header">
                    <h5 class="mb-0"><a data-toggle="collapse" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo" class="collapsed">경기가 끝났는데 왜 환급이 안 되나요?</a></h5>
                  </div>
                  <div id="collapseTwo" role="tabpanel" aria-labelledby="headingTwo" data-parent="#accordion" class="collapse">
                    <div class="card-body">
                      <div class="row">
                        <div class="col-md-8">
                          <p>아마 안될거야</p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="card">
                  <div id="headingThree" role="tab" class="card-header">
                    <h5 class="mb-0"><a data-toggle="collapse" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree" class="collapsed">FAQ</a></h5>
                  </div>
                  <div id="collapseThree" role="tabpanel" aria-labelledby="headingThree" data-parent="#accordion" class="collapse">
                    <div class="card-body">FAQ</div>
                  </div>
                </div>
              </div>

                  </div>
                </form>
            </div>
            <hr>
            
<!-- 검색바 -->
              <div class="col-md-3 pull-right">
            <div class="panel-body">
                  <form role="search">
                    <div class="input-group">
                      <input type="text" placeholder="Search" class="form-control"><span class="input-group-btn">
                        <button type="submit" class="btn btn-template-main"><i class="fa fa-search"></i></button></span>
                    </div>
                  </form>
                </div>
            </div>
            <br>
<!-- 검색바 -->

<!-- 페이징하셈 -->
              <div class="pages">
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