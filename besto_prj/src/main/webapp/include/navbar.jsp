<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

	<header class="nav-holder make-sticky">
		<div id="navbar" role="navigation" class="navbar navbar-expand-lg">
          <div class="container"><a href="index.jsp" class="navbar-brand home"><img src="img/logo11.png" alt="Universal logo" class="d-none d-md-inline-block"><img src="img/logo-small.png" alt="Universal logo" class="d-inline-block d-md-none"><span class="sr-only">Universal - go to homepage</span></a>
            <button type="button" data-toggle="collapse" data-target="#navigation" class="navbar-toggler btn-template-outlined"><span class="sr-only">Toggle navigation</span><i class="fa fa-align-justify"></i></button>
            <div id="navigation" class="navbar-collapse collapse">
              <ul class="nav navbar-nav ml-auto">
                
                <li class="nav-item dropdown"><a href="board_game_buy.jsp" data-toggle="dropdown" class="dropdown-toggle">게임구매 <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                    <li class="dropdown-item"><a href="board_game_buy.jsp" class="nav-link">구매가능 게임</a></li>
                    <li class="dropdown-item"><a href="board_game_schedule.jsp" class="nav-link">게임 일정</a></li>
                    <li class="dropdown-item"><a href="board_game_hit_result.jsp" class="nav-link">적중 결과</a></li>
                  </ul>
                </li>
                
                <li class="nav-item dropdown"><a href="javascript: void(0)" data-toggle="dropdown" class="dropdown-toggle">경기정보 <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                    <li class="dropdown-item"><a href="board_ginfo.jsp" class="nav-link">경기정보</a></li>
                    <li class="dropdown-item"><a href="board_ginfo_schedule.jsp" class="nav-link">경기일정</a></li>
                    <li class="dropdown-item"><a href="board_ginfo_score.jsp" class="nav-link">맞대결전적</a></li>
                  </ul>
                </li>
                
                <li class="nav-item dropdown"><a href="javascript: void(0)" data-toggle="dropdown" class="dropdown-toggle">게시판 <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                    <li class="dropdown-item"><a href="board_free_betting.jsp" class="nav-link">베팅토론방</a></li>
                    <li class="dropdown-item"><a href="board_free_challenge.jsp" class="nav-link">도전분석방</a></li>
                    <li class="dropdown-item"><a href="board_free.jsp" class="nav-link">자유게시판</a></li>
                  </ul>
                </li>

                <li class="nav-item dropdown active"><a href="javascript: void(0)" data-toggle="dropdown" class="dropdown-toggle">마이페이지<b class="caret"></b></a>
                  <ul class="dropdown-menu">
                    <li class="dropdown-item"><a href="member_info.jsp" class="nav-link">개인정보</a></li>
                    <li class="dropdown-item"><a href="member_buy_info.jsp" class="nav-link">구매/적중내역</a></li>
                    <li class="dropdown-item"><a href="member_buy_score.jsp" class="nav-link">구매현황분석</a></li>
                    <li class="dropdown-item"><a href="member_cart.jsp" class="nav-link">쇼핑카트</a></li>
                    <li class="dropdown-item"><a href="member_cash_detail.jsp" class="nav-link">예치금</a></li>
                    <li class="dropdown-item"><a href="member_drop.jsp" class="nav-link">회원탈퇴</a></li>
                  </ul>
                </li>
                
                <li class="nav-item dropdown active"><a href="javascript: void(0)" data-toggle="dropdown" class="dropdown-toggle">고객센터<b class="caret"></b></a>
                  <ul class="dropdown-menu">
                    <li class="dropdown-item"><a href="board_protice.jsp" class="nav-link">공지사항</a></li>
                    <li class="dropdown-item"><a href="board_protice_faq.jsp" class="nav-link">FAQ</a></li>
                    <li class="dropdown-item"><a href="board_protice_use.jsp" class="nav-link">사이트이용안내</a></li>
                    <li class="dropdown-item"><a href="board_protice_find.jsp" class="nav-link">아이디/비밀번호 찾기</a></li>
                  </ul>
                </li>
                <!-- ========== Contact dropdown end ==================-->
              </ul>
            </div>
            
            <div id="search" class="collapse clearfix">
              <form role="search" class="navbar-form">
                <div class="input-group">
                  <input type="text" placeholder="Search" class="form-control"><span class="input-group-btn">
                    <button type="submit" class="btn btn-template-main"><i class="fa fa-search"></i></button></span>
                </div>
              </form>
            </div>
          </div>
        </div>
       </header>