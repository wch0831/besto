<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

<head>  
<!-- Header Include CSS START-->
<%@ include file="/include/header.jsp" %>
<!-- Header Include CSS END-->


</head>
<!-- <div class="col-md-6"> -->
  <body>
    <div id="all">
      <div id="content">
        <div class="container">
        <br><br>
          <div class="table-responsive">
                  <div class="col-md-4">
                  <div class="heading">
                    <h4>비밀번호 찾기</h4>
                  </div>
                    <h5>가입시 입력했던 아이디와 이메일을 입력해주세요.</h5>
                    <form role=idcheck>
                    <div class="input-group">
                      <input type="text" placeholder="아이디를 입력해주세요." class="form-control">
                    </div><br>
                    <div class="input-group">
                      <input type="text" placeholder="이메일을 입력해주세요." class="form-control">
                    </div>
                    <br>
            <!-- if 정보 불일치시에 디브영역 그리기 -->
              		<div class="row">
              		<p><font color="red" style="text-align: center">※ 정보가 일치하지 않습니다.</font></p>
              		</div>
            <!-- if 정보 불일치시에 디브영역 그리기 -->  		
              		<div class="col-lg-8 pull-right">
                    <button type="button" class="btn btn-danger pull-right">취소</button>
                    <button type="submit" class="btn btn-primary pull-right">임시비밀번호 발급</button>
                    </div>
                  </form>
                </div>
                </div>
          </div>
        </div>
      </div>

<!-- Script Include CSS START-->
<%@ include file="/include/script.jsp" %>
<!-- Script Include CSS END-->
    
    
  </body>
</html>