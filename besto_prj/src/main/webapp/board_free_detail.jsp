<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

<head>  
<!-- Header Include CSS START-->
<%@ include file="/include/header.jsp" %>
<!-- Header Include CSS END-->
<script>		
$(document).ready(function(){
	
	

	console.log("여기는 오니?");

	
	
	$("#replyUpdate").on("click", function(){
		if (confirm("정말 게시글을 수정하시겠습니까?") == true){
			
			location = "/board_free_delete/${KEY_BVO.postSeq}.do";
		} else{   //취소
		     alert("게시글 삭제가 취소되었습니다.");
		 }
	});
	
	$("#boardDel").on("click", function(){
		if (confirm("정말 게시글을 삭제하시겠습니까?") == true){
			location = "/board_free_delete/${KEY_BVO.postSeq}.do";
		} else{   //취소
		     alert("게시글 삭제가 취소되었습니다.");
		 }
	});
	
	$("#boardUpdate").on("click", function(){
		if (confirm("게시글을 수정하시겠습니까?") == true){
			//location = "/board_free_detail/${KEY_BVO.postSeq}.do";
			$("#board_Update_form").submit();
		} else{   //취소
		     alert("게시글 수정이 취소되었습니다.");
		 }
	});
	
	$("#replyInsert").on("click", function(){
		if (confirm("댓글을 등록하시겠습니까?") == true){
			var text = $("#message").val();
			//location = "/board_free_reply_insert/${KEY_BVO.postSeq}/.do?/replyContent="+text;
			//$("#message").submit();
		}
	});
	
	
	
	
	$(".fa.fa-check").on("click",function(){ 
		console.log('asd');
		var index = $(this).attr("name");
		console.log(index);
		var useq = $("#l"+index+"").val();
		console.log(useq);
		var rseq = $("#m"+index+"").val();
		console.log(rseq);
		var pseq = $("#k"+index+"").val();
		console.log(pseq);
		var sendData = {"replySeq":rseq,"postSeq":pseq};
		console.log(sendData);
		//alert(name);
		$.ajax({ 
			type:"post",
			url:"/board_free_reply_delete.do",
			contentType : "application/x-www-form-urlencoded; charset=UTF-8", 
	        data : sendData,
			
			
	        success:function(res){
				console.log(res);
				var htmlStr = "";

	 			$.map(res, function(vv, idx){
		 				htmlStr+="<div class='col-sm-12'>";
		 				htmlStr+="<i class='fa fa-quote-left'></i> "+vv.usersName+" &emsp;<b>:</b>&emsp;"+vv.replyContent+"&emsp;&emsp;"+vv.replyRegdate+"&emsp;&emsp;";	 				
						if(${sessionScope.SESS_SEQ}==vv.usersSeq){
			 				htmlStr+="<button type='button' class='fa fa-check' id='replyDelete' >삭제하기</button>";
			 				htmlStr+="<button type='button' class='fa fa-times' id='replyUpdate' >수정하기</button>";
						}
		 				htmlStr+="<hr>";
		 				htmlStr+="</div>";
			});
	 			
	 			$("#replyarea").html(htmlStr);
	        }	
			
			
			}); //ajax
			

		});
	
	
});

</script>



</head>

  <body>
    <div id="all">
    
<!-- Topbar Include CSS START-->
<%@ include file="/include/topbar.jsp" %>
<!-- Topbar Include CSS END-->
      
<!-- Navbar Include CSS START-->
<%@ include file="/include/navbar.jsp" %>
<!-- Navbar Include CSS END-->      
      
      <div id="heading-breadcrumbs">
        <div class="container">
          <div class="row d-flex align-items-center flex-wrap">
            <div class="col-md-7">
              <h1 class="h2">도전분석방 > 상세보기</h1>
            </div>
            <div class="col-md-5">
              <ul class="breadcrumb d-flex justify-content-end">
                <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                <li class="breadcrumb-item active">Category with left sidebar</li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      
      <div id="content">
        <div class="container">
          <div class="row bar">
            <div class="col-md-2">

<!-- Sidebar_Main Include CSS START-->
<%@ include file="/include/sidebar_board_main.jsp" %>
<!-- Sidebar_Main Include CSS END-->
              
            </div>
            
<!-- 게시판 메인부분 -->
            <div class="col-md-10">
              <p class="text-muted lead"><font size="2">남을 비방하는 글이나 욕설, 게시판 성격에 맞지 않거나 광고성 게시물은 사전 동의없이 삭제될 수 있습니다. 답변을 원하시는 건의 및 문의 사항은 고객센터 > 고객상담실을 이용하여 주시기 바랍니다. </font></p>
              <div id="basket" class="col-lg-12">
                <form method="get" id="board_Update_form" action="/board_free_detail/${KEY_BVO.postSeq}.do">
                <input type="hidden" name="postSeq" value="${KEY_BVO.postSeq}"/>
                <input type="hidden" value="b" name="gubun">
                  <h4>◈ 자유게시판</h4>
                  <br>
                  <h5>${KEY_BVO.freeBoardTitle}</h5><hr>
                  <font size="2"><strong>작성자</strong> : ${KEY_BVO.usersName} </font> &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                  						    <font size="2"> <strong>등록일</strong> : ${KEY_BVO.freeBoardRegdate}</font><br><br>
                    	<br>
                    <div class="form-group col-sm-10">
                    	${KEY_BVO.freeBoardContent}
                    </div>
                    <br>
                  <hr>
                <div class="col-md-12 pull-right">
                <br>
<!-- 세션비교 후 작성자만 보이게 설정하기 --><%-- onclick="location.href='board_free_update/${KET_BVO.postSeq}.do'" --%>
<!--소희 -->      
				<c:set var="userSEQ" value= "${KEY_BVO.usersSeq}"/>
				
				<c:choose>
                <c:when test="${sessionScope.SESS_SEQ eq userSEQ}">
				<div>
					<button type="button" class="btn btn-sm btn-danger pull-right" id="boardDel" >삭제하기</button>
					<button type="button" class="btn btn-sm btn-danger pull-right" id="boardUpdate" >수정하기</button>
				</div>
				</c:when>
				<c:otherwise></c:otherwise>
                </c:choose>
                  
                  
                  
               <!--    
                  <button type="button" class="btn btn-sm btn-danger pull-right"><i class="fa fa-times-circle"> 삭제</i></button>
                  <button type="button" class="btn btn-sm btn-primary pull-right"><i class="fa fa-save" id="board_update"> 수정</i></button> -->
<!-- 세션비교 후 작성자만 보이게 설정하기 -->
                  <br><br>
                  </div>
                  <br><br><br>
                  <div class="col-lg-12">
                  <br>
                  </div>
<!-- 댓글  영역-->                 
                <h4><i class="fa fa-quote-left"></i> 댓글</h4>
                <br>
             	
             <div  id="replyarea" class="col-sm-12">
             	<c:if test="${KEY_BVO.rlist[0].replyName ne null}">
             	<c:forEach varStatus="index" var="vv" items="${KEY_BVO.rlist}">
             	
   <!-- 댓글 루프돌릴 div영역 -->
             	<div class="col-sm-12">
             	
             	
             	<i class="fa fa-quote-left"></i> ${vv.replyName} &emsp;<b>:</b>&emsp; ${vv.replyContent}&emsp;&emsp;${vv.replyRegdate}&emsp;&emsp;
             		
             		<c:choose>
                <c:when test="${sessionScope.SESS_SEQ eq vv.usersSeq}">
				<input type="hidden" value="${vv.usersSeq}" id="l${index.index}">
				<input type="hidden" value="${vv.replySeq}" id="m${index.index}"> 
				<input type="hidden" value="${vv.postSeq}" id="k${index.index}"> 
				<input type="button" name="${index.index}" class="fa fa-check" value="삭제하기">
					<!--  -->
					<button type="button" class="fa fa-times" id="replyUpdate" >수정하기</button>
					
					
					
					
					<!-- <a href="#"><i class="fa fa-check"></i></a>&emsp; 수정 아이콘
             		<a href="#"><i class="fa fa-times"></i></a> 삭제 아이콘 -->
				</c:when>
				<c:otherwise></c:otherwise>
                </c:choose>
             	<hr>
             	
             	</div>
             	</c:forEach>
             </c:if>
             </div>
     
             	
   <!-- 댓글 루프돌릴 div영역 -->
   <!-- 댓글 루프돌릴 div영역 -->
             	
           <br>
           </form>
                     </div>
           
           <!-- 댓글입력폼-->
         <form method="get" name="update" id="update" action="/board_free_reply_insert/${KEY_BVO.postSeq}.do">
                 <div class="row">
                    <div class="col-md-8">
                    <textarea id="replyContent" name = "replyContent" class="form-control" placeholder="댓글을 입력하세요" style="margin-top: 0px; margin-bottom: 0px; height: 48px; width: 775px;"> </textarea>
                    </div>
                    <div class="col-md-4">
                    <button id = "replyInsert" name = "replyInsert" type="submit" class="btn btn-lg btn-primary pull-right"><font size="3">입력</font></button>
                    </div>
                    <br>
                 </div>
				</form>
  </div>
          </div>
        </div>
      </div>
<!-- Footer Include CSS START-->
<%@ include file="/include/footer.jsp" %>
<!-- Footer Include CSS END-->
    </div>
    
<!-- Script Include CSS START-->
<%@ include file="/include/script.jsp" %>
<!-- Script Include CSS END-->
    
   
  </body>
</html>