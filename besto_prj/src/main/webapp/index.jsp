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
      
     
      <section style="background: url(img/backGG.jpg) center top no-repeat; background-size: cover;" class="bar no-mb color-white text-center bg-fixed relative-positioned">
        <div class="dark-mask"></div>
        <div class="container">
          <br><br><div class="icon icon-outlined icon-lg"><i class="fa fa-users"></i></div>
          <br>
          <h1>B E S T O</h1>
          <br>
          <font size="3"><b>최고의 기쁨과 즐거움을 선사해드립니다.</b></font>
          <br><br><br><br>
          
          <div class="row showcase text-center">
            <div class="col-md-3 col-sm-6">
              <div class="item">
                <div class="icon-outlined icon-sm icon-thin"><i class="fa fa-file-code-o"></i></div>
                <h3><span class="h1 counter">45</span><br>총 경기</h3>
              </div>
            </div>
            <div class="col-md-3 col-sm-6">
              <div class="item">
                <div class="icon-outlined icon-sm icon-thin"><i class="fa fa-align-justify"></i></div>
                <h3><span class="h1 counter">30</span><br>오늘 경기</h3>
              </div>
            </div>
            <div class="col-md-3 col-sm-6">
              <div class="item">
                <div class="icon-outlined icon-sm icon-thin"><i class="fa fa-copy"></i></div>
                <h3><span class="h1 counter">74,605,300</span><br>최고 적중금액</h3>
              </div>
            </div>
            <div class="col-md-3 col-sm-6">
              <div class="item">
                <div class="icon-outlined icon-sm icon-thin"><i class="fa fa-font"></i></div>
                <h3><span class="h1 counter">923</span><br>???</h3>
              </div>
            </div>
          </div>
          
          
          
        </div>
      </section>
      

      
<section style="background: url(img/backGG2.jpg) center top no-repeat; background-size: cover;" class="bar no-mb color-white text-center bg-fixed relative-positioned">
        <div class="dark-mask"></div>
        <div class="container">
        </div>
      </section>




      <section id="packages" class="bar no-mb">
        <div data-animate="fadeInUp" class="container">
          <div class="row">
            <div class="col-md-12">
              <div class="heading text-center">
                <h2>자주 이용하는 메뉴</h2>
              </div>
              <!-- Packages Start-->
              <div class="row packages">
              <!-- / END FIRST PACKAGE-->
                
                
                
<!-- 4개만 넣을것 -->
                <div class="col-md-3">
                  <div class="best-value">
                    <div class="package">
                      <div class="package-header bg-primary color-white">
                        <div class="content">
                          <h5>공지사항</h5>
                        </div>
                      </div>
                      <ul class="list-unstyled">
                        <li>공지사항 알려드립니다...</li>
                        <li>공지사항 알려드립니다...</li>
                        <li>공지사항 알려드립니다...</li>
                        <li>공지사항 알려드립니다...</li>
                        <li>공지사항 알려드립니다...</li>
                      </ul><a href="#" class="btn btn-template-outlined">+더보기</a>
                    </div>
                  </div>
                </div>
                
                <div class="col-md-3">
                  <div class="best-value">
                    <div class="package">
                      <div class="package-header bg-primary color-white">
                        <div class="content">
                          <h5>베팅토론방</h5>
                        </div>
                      </div>
                      <ul class="list-unstyled">
                        <li>어디다 걸까요...</li>
                        <li>어디다 걸까요...</li>
                        <li>어디다 걸까요...</li>
                        <li>어디다 걸까요...</li>
                        <li>어디다 걸까요...</li>
                      </ul><a href="#" class="btn btn-template-outlined">+더보기</a>
                    </div>
                  </div>
                </div>
                
                <div class="col-md-3">
                  <div class="best-value">
                    <div class="package">
                      <div class="package-header bg-primary color-white">
                        <div class="content">
                          <h5>도전분석방</h5>
                        </div>
                      </div>
                      <ul class="list-unstyled">
                        <li>저 이렇게 갑니다...</li>
                        <li>저 이렇게 갑니다...</li>
                        <li>저 이렇게 갑니다...</li>
                        <li>저 이렇게 갑니다...</li>
                        <li>저 이렇게 갑니다...</li>
                      </ul><a href="#" class="btn btn-template-outlined">+더보기</a>
                    </div>
                  </div>
                </div>
                
                <div class="col-md-3">
                  <div class="best-value">
                    <div class="package">
                      <div class="package-header bg-primary color-white">
                        <div class="content">
                          <h5>자유게시판</h5>
                        </div>
                      </div>
                      <ul class="list-unstyled">
                        <li>저 다 날렸어요...</li>
                        <li>저 다 날렸어요...</li>
                        <li>저 다 날렸어요...</li>
                        <li>저 다 날렸어요...</li>
                        <li>저 다 날렸어요...</li>
                      </ul><a href="#" class="btn btn-template-outlined">+더보기</a>
                    </div>
                  </div>
                </div>
                
                
                
              </div>
              <!-- Packages End-->
            </div>
          </div>
        </div>
      </section>
      
<!-- Footer Include CSS START-->
<%@ include file="/include/footer.jsp" %>
<!-- Footer Include CSS END-->
      
    </div>
    
    <!-- Script Include CSS START-->
	<%@ include file="/include/script.jsp" %>
	<!-- Script Include CSS END-->
    
  </body>
</html>