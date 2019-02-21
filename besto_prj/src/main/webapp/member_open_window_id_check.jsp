<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

<head>  
<!-- Header Include CSS START-->
<%@ include file="/include/header.jsp" %>
<!-- Header Include CSS END-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
	$("#idCheckBtn").click(function (){
		var uid = $("#cusersId").val();
		
		   $.ajax({ 
               url:"/jbcheck.do",
               type:"get",
               data:"uid="+uid,
               contentType: "application/x-www-form-urlencoded; charset=UTF-8",
               success:function(resObj){
                     console.log(resObj);
                     var htmlStr = "";
                     $("#cusersId").val(resObj);
                     if($("#cusersId").val()!=""){
	                     htmlStr = "<p><font color='black' style='text-align: center'>※ 사용 <b>가능</b>한 아이디입니다.</font></p>"            	 
                     }else{
	                     htmlStr = "<p><font color='red' style='text-align: center'>※ 이미 <b>사용중</b>이거나 <b>탈퇴</b>한 아이디입니다.</font></p>"                    	 
                     }
				   $(".row").html(htmlStr);
               }
            });
	   });
});

function setParentText(){
	var uid = $("#cusersId").val();
	if(uid != ""){
		opener.regform.usersId.value = checkid.cusersId.value;
		window.close();		
	}
}

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
                    <h4>아이디 중복체크</h4>
                  </div>
                  <form name="checkid" id="checkid">
	                    <div class="input-group">
	                      <input type="text" id="cusersId" name="cusersId" placeholder="아이디 중복체크" class="form-control"><span class="input-group-btn">
	                        <button type="button" id="idCheckBtn" class="btn btn-template-main"><i class="fa fa-search"></i></button></span>
	                    </div>
	                    <br>
	              		<div class="row">
	              		</div>
                  </form>
	              		<div class="col-lg-8 pull-right">
	                    <button type="button" class="btn btn-danger pull-right" onclick="window.close()">취소</button>
	                    <button type="submit" class="btn btn-primary pull-right" onclick="setParentText()">아이디 사용하기</button>
	                    </div>	                    	                    
                    
                    
     
                    
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