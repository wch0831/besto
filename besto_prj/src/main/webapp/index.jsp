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
      
      <section class="no-mb relative-positioned">
        <!--
        *** JUMBOTRON ***
        _________________________________________________________
        -->
        <div style="background: url('img/photogrid.jpg') center center repeat; background-size: cover;" class="jumbotron relative-positioned color-white text-md-center">
          <div class="dark-mask mask-primary"></div>
          <div class="container">
            <div class="row mb-small">
              <div class="col-md-12 text-center">
                <h1 class="text-uppercase">Universal is great</h1>
                <h2 class="text-uppercase">Last week more than 100 companies signed up to help them in their projects.</h2>
              </div>
            </div>
            <div class="row">
              <div class="col-md-6 mb-small"><img src="img/template-mac.png" alt="..." class="img-fluid"></div>
              <div class="col-md-6 text-center-sm">
                <p class="text-uppercase text-bold">Business. Corporate. Agency.<br>Portfolio. Blog. E-commerce.<br>We have covered everything.</p>
                <p class="no-letter-spacing">See our current packages comparison<br>to choose the right one for you.</p>
                <p><a href="#packages" class="scroll-to btn btn-template-outlined-white">See packages</a></p>
              </div>
            </div>
          </div>
        </div>
        <!-- *** JUMBOTRON END ***-->
      </section>
      

      <section class="bar bg-gray no-mb padding-big text-center-sm">
        <div class="container">
          <div class="row">
            <div class="col-md-6">
              <h2 class="text-uppercase">Easy to customize</h2>
              <p class="mb-small">We have made this template with focus on future client customization. You get <strong>40+ prepared HTML templates</strong>, many <strong>reusable components</strong> and <strong>LESS files</strong> for even easier template customization.</p>
              <p><a href="#" class="btn btn-template-main">Read more</a></p>
            </div>
            <div class="col-md-6 text-center"><img src="img/template-easy-customize.png" alt="" class="img-fluid"></div>
          </div>
        </div>
      </section>
      <section id="packages" class="bar no-mb">
        <div data-animate="fadeInUp" class="container">
          <div class="row">
            <div class="col-md-12">
              <div class="heading text-center">
                <h2>Packages we offer</h2>
              </div>
              <p class="lead">Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>
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