<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="panel panel-default sidebar-menu">
                <div class="panel-heading">
                  <h3 class="h4 panel-title">마이페이지</h3>
                </div>
                <div class="panel-body">
                  <ul class="nav nav-pills flex-column text-sm">
                    <li class="nav-item"><a href="member_info.jsp" class="nav-link"><span><font color="black">개인정보</font></span></a></li>
                    <li class="nav-item"><a href="/buyhitlist.do" class="nav-link"><span><font color="black">구매/적중내역</font></span></a></li>
                    <li class="nav-item"><a href="/buyanalsys.do" class="nav-link"><span><font color="black">구매현황분석</font></span></a></li>
                    <li class="nav-item"><a href="/buyanalsys.do" class="nav-link"><span><font color="black">쇼핑카트</font></span></a></li>
                  </ul>
                </div>
                
                <br>
              <div class="panel-heading">
                  <h3 class="h4 panel-title">예치금</h3>
                </div>
                <div class="panel-body">
                  <ul class="nav nav-pills flex-column text-sm">
                    <li class="nav-item"><a href="/selectSearch.do" class="nav-link"><span><font color="black">내역보기</font></span></a></li>
                    <li class="nav-item"><a href="member_cash_charge.jsp" class="nav-link"><span><font color="black">충전하기</font></span></a></li>
                    <li class="nav-item"><a href="member_cash_output.jsp" class="nav-link"><span><font color="black">출금</font></span></a></li>
                  </ul>
                </div>
                <br>
                
                <div class="panel-heading">
                  <h3 class="h4 panel-title">회원탈퇴</h3>
                </div>
                <div class="panel-body">
                <ul class="nav nav-pills flex-column text-sm">
                    <li class="nav-item"><a href="member_drop.jsp" class="nav-link"><span><font color="black">탈퇴하기</font></span></a></li>
                  </ul>
                </div>
                
                
              </div>