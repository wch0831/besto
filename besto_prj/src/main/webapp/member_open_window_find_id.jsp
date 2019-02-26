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

	$("#findIdBtn").click(function(){
        var name = idfindform.usersName.value;
        var email = idfindform.usersEmail.value;
        
        if(name == ""){
            alert("이름를 입력해주세요.");
            $("#usersName").focus();
            return false;
        }if(email == ""){
            alert("이메일을 입력해주세요.");
            $("#usersEmail").focus();
            return false;
        }
        var params = $("#idfindform").serialize();
        $.ajax({
	          url:"/finduid.do",
	          type:"get",
	          contentType: "application/x-www-form-urlencoded; charset=UTF-8", 
	          data : params,
	          success : function(resObj){
	                var htmlStr = "";
	                if(resObj != null){
	                	htmlStr += "<p><font color='black' style='text-align: center'>※ 회원님의 아이디는 "+resObj+"입니다.</font></p>";
	                }else{
	                   	htmlStr += "<p><font color='red' style='text-align: center'>※ 해당하는 유저의 정보가 없습니다.</font></p>";	                	
	                }
	               	$("#fiddiv").empty();
	               	$("#fiddiv").html(htmlStr);
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
                    <h4>아이디 찾기</h4>
                  </div>
                    <h5>가입시 입력했던 이름과 이메일을 입력해주세요.</h5>
                    <form id="idfindform" name="idfindform" role=idcheck>
                    <div class="input-group">
                      <input id="usersName" name="usersName" type="text" placeholder="이름을 입력해주세요." class="form-control">
                    </div><br>
                    <div class="input-group">
                      <input id="usersEmail" name="usersEmail" type="text" placeholder="이메일을 입력해주세요." class="form-control">
                    </div>
                    <br>
              		<div id="fiddiv" class="row">
            <!-- if 이름과 이메일이 불일치 하면 -->
              		
              		</div>
              		<div class="col-lg-8 pull-right">
                    <button type="button" class="btn btn-danger pull-right" onclick="window.close()">취소</button>
                    <button id="findIdBtn" name="findIdBtn" type="button" class="btn btn-primary pull-right">아이디 찾기</button>
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