<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

<head>  
<!-- Header Include CSS START-->
<%@ include file="/include/header.jsp" %>
<!-- Header Include CSS END-->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script>
$(document).ready(function(){

	$("#findPwBtn").click(function(){
        var id = pwfindform.usersId.value;
        var email = pwfindform.usersEmail.value;
        
        if(id == ""){
            alert("아이디를 입력해주세요.");
            $("#usersName").focus();
            return false;
        }if(email == ""){
            alert("이메일을 입력해주세요.");
            $("#usersEmail").focus();
            return false;
        }
        var params = $("#pwfindform").serialize();

        $.ajax({
	          url:"/findupw.do",
	          type:"get",
	          contentType: "application/x-www-form-urlencoded; charset=UTF-8", 
	          data : params,
	          success : function(resObj){
	                var htmlStr = "";
	                if(resObj != ""){
	                	htmlStr += "<p><font color='black' style='text-align: center'>※ 회원님의 임시비밀번호는 "+resObj+"입니다.</font></p>";
	                }else{
	                   	htmlStr += "<p><font color='red' style='text-align: center'>※ 정보가 일치하지 않습니다.</font></p>";	                	
	                }
	               	$("#fpwdiv").empty();
	               	$("#fpwdiv").html(htmlStr);
	          }
		 });
    });

});
</script>

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
                    <form id="pwfindform" name="pwfindform" role=idcheck>
                    <div class="input-group">
                      <input id="usersId" name="usersId" type="text" placeholder="아이디를 입력해주세요." class="form-control">
                    </div><br>
                    <div class="input-group">
                      <input id="usersEmail" name="usersEmail" type="text" placeholder="이메일을 입력해주세요." class="form-control">
                    </div>
                    <br>
            <!-- if 정보 불일치시에 디브영역 그리기 -->
              		<div id="fpwdiv" class="row">
              		
              		</div>
            <!-- if 정보 불일치시에 디브영역 그리기 -->  		
              		<div class="col-lg-8 pull-right">
                    <button type="button" class="btn btn-danger pull-right" onclick="window.close()">취소</button>
                    <button id="findPwBtn" type="button" class="btn btn-primary pull-right">임시비밀번호 발급</button>
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