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
                    <h4>아이디 중복체크</h4>
                  </div>
                    <form role=idcheck>
                    <div class="input-group">
                      <input type="text" placeholder="아이디 중복체크" class="form-control"><span class="input-group-btn">
                        <button type="submit" class="btn btn-template-main"><i class="fa fa-search"></i></button></span>
                    </div>
                    <br>
            <!-- if 사용가능한 아이디라면 -->
              		<div class="row">
              		<p><font color="black" style="text-align: center">※ 사용 <b>가능</b>한 아이디입니다.</font></p>
              		</div>
            <!-- if 사용불가 아이디라면 -->
              		<div class="row">
              		<p><font color="red" style="text-align: center">※ 이미 <b>사용중</b>이거나 <b>탈퇴</b>한 아이디입니다.</font></p>
              		</div>
              		<div class="col-lg-8 pull-right">
                    <button type="button" class="btn btn-danger pull-right">취소</button>
                    <button type="submit" class="btn btn-primary pull-right">아이디 사용하기</button>
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