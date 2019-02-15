<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="top-bar">
        <div class="container">
          <div class="row d-flex align-items-center">
            <div class="col-md-6 d-md-block d-none">
              <p>도박은 금물</p>
            </div>
            
            <div class="col-md-6">
              <div class="d-flex justify-content-md-end justify-content-between">
                <ul class="list-inline contact-info d-block d-md-none">
                  <li class="list-inline-item"><a href="#"><i class="fa fa-phone"></i></a></li>
                  <li class="list-inline-item"><a href="#"><i class="fa fa-envelope"></i></a></li>
                </ul>
                <div class="login"><a href="#" data-toggle="modal" data-target="#login-modal_top" class="login-btn">
                <i class="fa fa-sign-in"></i><span class="d-none d-md-inline-block">로그인</span></a>
                
                <a href="member_register.jsp" class="signup-btn"><i class="fa fa-user"></i>
                <span class="d-none d-md-inline-block">회원가입</span></a></div>
                
              </div>
            </div>
          </div>
        </div>
      </div>
      
<!-- TOPBAR -->
      <div id="login-modal_top" tabindex="-1" role="dialog" aria-labelledby="login-modalLabel" aria-hidden="true" class="modal fade">
        <div role="document" class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h4 id="login-modalLabel" class="modal-title">회원 로그인</h4>
              <button type="button" data-dismiss="modal" aria-label="Close" class="close"><span aria-hidden="true">×</span></button>
            </div>
            <div class="modal-body">
              <form action="customer-orders.jsp" method="get">
                <div class="form-group">
                  <input id="id_modal" type="text" placeholder="ID" class="form-control">
                </div>
                <div class="form-group">
                  <input id="password_modal" type="password" placeholder="Password" class="form-control">
                </div>
                <p class="text-center">
                  <button class="btn btn-template-outlined"><i class="fa fa-sign-in"></i> 로그인</button>
                </p>
              </form>
              <p class="text-center text-muted">아직 회원이 아니세요?</p>
              <p class="text-center text-muted"><a href="member_register.jsp"><strong>회원가입 하기</strong></a></p>
            </div>
          </div>
        </div>
      </div>

      