<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath }" />
<c:set var="ctxx" value="${pageContext.request.contextPath }/resources/temp" />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Beauty Mate</title>

  <!-- GOOGLE FONT -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Raleway:100,300,400,600,700" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Herr+Von+Muellerhoff" rel="stylesheet">

  <!-- PLUGINS CSS STYLE -->
  <link href="${ctx }/resources/plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet">
  <link href="${ctx }/resources/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="${ctx }/resources/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="${ctx }/resources/plugins/selectbox/select_option1.css" rel="stylesheet">
  <link href="${ctx }/resources/plugins/owl-carousel/owl.carousel.min.css" rel="stylesheet" media="screen">
  <link href="${ctx }/resources/plugins/fancybox/jquery.fancybox.pack.css" rel="stylesheet">
  <link href="${ctx }/resources/plugins/isotope/isotope.min.css" rel="stylesheet">
  <link href="${ctx }/resources/plugins/datepicker/datepicker.min.css" rel="stylesheet">
  <link href="${ctx }/resources/plugins/bootstrapthumbnail/bootstrap-thumbnail.css" rel="stylesheet">

  <!-- CUSTOM CSS -->
  <link href="${ctx }/resources/css/style.css" rel="stylesheet">
  <link href="${ctx }/resources/css/default.css" rel="stylesheet" id="option_color">

  <!-- FAVICON -->
  <link href="${ctx }/resources/img/favicon.png" rel="shortcut icon">
  
  
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <script src="${ctxx}/plugins/jQuery/jQuery-2.1.4.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/jquery-2.1.3.js"></script>
	<script
	src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
	
  	<link href="https://gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css" rel="stylesheet">
	<script src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"></script>
	
	
	
    
      <script src="${ctx}/resources/js/jQuery-2.1.4.min.js"></script>
  
<style type="text/css">
    .popup {position: absolute;}
    .back { background-color: gray; opacity:0.5; width: 100%; height: 300%; overflow:hidden;  z-index:1101;}
    .front { 
       z-index:1110; opacity:1; boarder:1px; margin: auto; 
       	top: 25%;
       	left:32%;
     	width: 50%; 
     	height: 50%; 
      }
     .show{
       position:relative;
       max-width: 1600px; 
       max-height: 1000px; 
       overflow: auto;       
     } 
     
     #imglist { 
	     list-style:none;
	     margin-left : 10px; 
	     padding:0; 
	     
 	} 

	#imgli { 
     margin: 0 0 0 0; 
     padding: 0 0 0 0;
     border : 0;
     float: left;
 	} 
  	
    </style>

    <div class='popup back' style="display:none;"></div>
    <div id="popup_front" class='popup front' style="display:none;">
     <img id="popup_img">
    </div>    
    
    

<style>
  /* Paste this css to your style sheet file or under head tag */
  /* This only works with JavaScript,
  if it's not present, don't show loader */
  .no-js #loader { display: none;  }
  .js #loader { display: block; position: absolute; left: 100px; top: 0; }
  .se-pre-con {
  	position: fixed;
  	left: 0px;
  	top: 0px;
  	width: 100%;
  	height: 100%;
  	z-index: 9999;
  	background: url(${ctx}/resources/plugins/simple-pre-loader/images/loader-64x/Preloader_2.gif) center no-repeat #fff;
  }
  </style>

</head>
<body class="body-wrapper static">
  <div class="se-pre-con"></div>
  <div class="main-wrapper">
    <!-- HEADER -->
    
<%--     <%@ include file="../common/header.jspf"%> --%>
    <header id="pageTop" class="header">

      <!-- TOP INFO BAR -->
      <div class="top-info-bar">
          
        <div class="container">
            
          <div class="top-bar-right">
            <ul class="list-inline">
                <li><select id="sel">
                          <option value="0"></option>
                          <option value="1">브랜드</option>
                          <option value="2">제품</option>
                         
                        </select></li>
                <li> <input id="search" type="text" placeholder="화장품을 검색해보세요" > <a target="_blank" href="#" class="btn btn-primary first-btn waves-effect waves-light scale-up">search</a></li>
                  <li><a id="login" target="_blank" href="#" class="btn btn-primary first-btn waves-effect waves-light scale-up">LOGIN</a></li>
                <li><a id="login" target="_blank" href="#" class="btn btn-primary first-btn waves-effect waves-light scale-up">JOIN</a></li>
                 
                
            </ul>
              
          </div>
           
        </div>
      </div>

    <!-- NAVBAR -->
      <nav id="menuBar" class="navbar navbar-default lightHeader" role="navigation">
        <div class="container">

          <!-- Brand and toggle get grouped for better mobile display -->
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="${ctx}/index.jsp"><img src="${ctx}/resources/img/logo.png" alt="logo" ></a>
          </div>

          <!-- Collect the nav links, forms, and other content for toggling -->
          <div class="collapse navbar-collapse navbar-ex1-collapse">
            <ul class="nav navbar-nav navbar-right">
              <li class="active">
                <a href="${ctx}/index.jsp">HOME</a>
              </li>
                <li class=" dropdown singleDrop">
                <a href="${ctx}/survey/survey.do">PICKMETEM</a>
               
              </li>
              <li class=" dropdown singleDrop">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">RANKING</a>
               
              </li>
              <li class=" dropdown megaDropMenu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">REVIEW</a>
               
              </li>
              <li class=" dropdown singleDrop">
                <a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">BeautyTip</a>
                
              </li>
              <li class=" dropdown singleDrop">
                <a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">MY Pouch</a>
                
              </li>
             
            </ul>
          </div>
          
                	<form role="form" action="${ctx }/review/modify.do" method="post">

					<input type='hidden' name='reviewNo' id='reviewNo' value="${review.reviewNo}">
					<input type='hidden' name='page' value="${pager.page}"> <input
						type='hidden' name='perPageNum' value="${pager.perPageNum}">
					<input type='hidden' name='searchType' value="${pager.searchType}">
					<input type='hidden' name='keyword' value="${pager.keyword}">

					</form>
          
          
          <br><br>
<!-- USER SECTION -->   
   	<section class="clearfix userSection padding">
   	<div class="row">
<!--             <div class="col-xs-12"> -->
<!--               <ul class="list-inline squareBtn"> -->
	<div class="panel panel-default cartInfo">
            <div class="panel-heading patternbg">Review</div>
            <div class="panel-body tableArea">
              <div>
              <table class="table">
                  <tbody>
                    <tr>
                      <td><div class="cartImage"><img src="${review.cosmetic.img}" style="width:100px;height:100px" alt="profile-image"></div></td>
                      <td style="text-align:left;">${review.cosmetic.category}<br><span>${review.cosmetic.brand}</span><br><span>${review.cosmetic.cosmeticName}</span>
                      <br><span>${review.cosmetic.volume} / ${review.cosmetic.cost}</span></td>
                      <td style="width:0px"></td>
                    </tr>
                    <tr>
                       <td colspan="3" style="text-align:left;"><i class="fa fa-user-o" aria-hidden="true"></i> ${review.customer.id } <br><span>날짜</span> </td>             
                    </tr>
                    <tr>
                        <td colspan="3" style="text-align:left;">
                        <c:forEach begin="1" end="${review.recommend.grade}" step="1" varStatus="status">
		                        <i class="fa fa-star" aria-hidden="true" style="color: #FFE400"></i> 		                     
	                        </c:forEach>
	                        <c:forEach begin="1" end="${5 - review.recommend.grade}" step="1" varStatus="status">
	                        <i class="fa fa-star-o" aria-hidden="true"></i>
	                        </c:forEach>
	                        (${review.recommend.grade})
                         <br><span><strong>${review.reviewTitle}</strong></span><br><span>${review.reviewContent}</span><br><br>
<%--                            <c:forEach items="${review.files }" var="file"> --%>
<!-- 	                           <div class="cartImage" style="float:left; margin-right:5px;"> -->
<%-- 	                           <img src="${ctx }/displayFile?fileName=${file}" style="width:100px;height:100px" alt="Image cart"> --%>
<!-- 	                           </div> -->
<%-- 	                           </c:forEach> --%>
                           </td>                         
                    </tr>
                  </tbody>
                </table>
					
					
                    
                          	
					<ul class="mailbox-attachments clearfix uploadedList" id="imglist" ></ul>
                          
                          <div class="text-right">
									<button type="submit" class="btn btn-common btn-theme" id="modifyBtn">수정</button>
									<button type="submit" class="btn btn-common btn-theme" id="removeBtn">삭제</button>
									<button type="submit" class="btn btn-common btn-theme" id="goListBtn">목록</button>      
						  </div>                                 
                    </div>
                  </div>
                </div>
                </div>
			</section>
     
<!--           <div class="row"> -->
<!--           <div class="col-xs-12"> -->
<!--             <div class="tabCommon tabOne singleTab"> -->
              <input type="button" id="replyCount"  class="btn btn-common btn-theme" value="Reply(${review.replys.size() })"> 
<!--               </div> -->
<!--               <div class="tab-content patternbg">             -->
               <div id="reviews" class="tab-pane fade in active">			   			   
			  <c:forEach items="${review.replys }" var="reply" varStatus="status">     
			  	       
                  <div class="blogCommnets" >
                    <div class="media	">
                      <a class="media-left" href="#">
                      	<i class="fa fa-user-o" aria-hidden="true"></i>
                        <img class="media-object" src="http://placehold.it/70x70" alt="Image">
                      </a>
                      <div class="media-body">
                        <h4 class="media-heading">리뷰작성자</h4>
                        <h5><span><i class="fa fa-calendar" aria-hidden="true"></i>날짜</span></h5>
                        <p class="timeline-body" id="${reply.replyNo}">${reply.replyContent }</p>
                        <div class="text-right">
                        <input class="timeline-header" type="hidden" name ="${reply.replyNo }" id ="${reply.replyNo }" value="${reply.replyNo }"/>
                           
							
						<div class="timeline-footer">
                         <a style="padding:10px" href="javascript:modifyReply(${reply.replyNo});"><i class="fa fa-pencil"aria-hidden="true"></i></a>
                         <a style="padding:10px" href="javascript:removeReply(${reply.replyNo});"><i class="fa fa-trash-o" aria-hidden="true"></i></a>
						</div>
						</div>
                          </div>
                      </div>
                    </div>
                  </c:forEach>
                  </div> 
<!--                     <div class="media mediaMargin"> -->
<!--                       <a class="media-left" href="#"> -->
<!--                         <img class="media-object" src="http://placehold.it/70x70" alt="Image"> -->
<!--                       </a> -->
<!--                       <div class="media-body"> -->
<!--                         <h4 class="media-heading">대댓글 제목</h4> -->
<!--                         <h5><span><i class="fa fa-calendar" aria-hidden="true"></i>날짜</span></h5> -->
<!--                         <p>내용</p> -->
<!--                         <button class="btn btn-link">Reply</button> -->
                        
<!--                       </div> -->
                    
                  
                  <br><br>
                   <div class="row">
          <div class="col-xs-12">
                  <div class="commentsForm">
                    <h3>leave a comment</h3>
<!--                   <form action="" method="POST" role="form"> -->
						<input class="form-control" type="text" placeholder="ID" id="newReplyWriter">
                      <div class="form-group">
                        <textarea class="form-control" rows="3"  name ="replyContent" id="replyContent" placeholder="Type Your Comment"></textarea>
                      </div>
<!--                       <div class="form-group form-half form-left"> -->
<!--                         <input type="text" class="form-control" id="" placeholder="Name"> -->
<!--                       </div> -->
<!--                       <div class="form-group form-half form-right"> -->
<!--                         <input type="email" class="form-control" id="" placeholder="Email"> -->
<!--                       </div> -->
                    <div class="text-right">
                        <button type="button" class="btn btn-common btn-theme" id="replyAddBtn">댓글 작성</button>
                    </div>
            </div>
         </div>    
      
             </div>
             </div>   
                <br><br>

   
     

  <!-- JAVASCRIPTS -->
<!--   <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script> -->
  <script src="${ctx }/resources/plugins/jquery-ui/jquery-ui.min.js"></script>
  <script src="${ctx }/resources/plugins/bootstrap/js/bootstrap.min.js"></script>
  <script src="${ctx }/resources/plugins/selectbox/jquery.selectbox-0.1.3.min.js"></script>
  <script src="${ctx }/resources/plugins/owl-carousel/owl.carousel.min.js"></script>
  <script src="${ctx }/resources/plugins/isotope/isotope.min.js"></script>
  <script src="${ctx }/resources/plugins/fancybox/jquery.fancybox.pack.js"></script>
  <script src="${ctx }/resources/plugins/isotope/isotope-triger.min.js"></script>
  <script src="${ctx }/resources/plugins/smoothscroll/SmoothScroll.min.js"></script>
  <script src="${ctx }/resources/plugins/datepicker/bootstrap-datepicker.min.js"></script>
  <script src="${ctx }/resources/plugins/syotimer/jquery.syotimer.min.js"></script>
  <script src="${ctx }/resources/js/custom.js"></script>


<script type="text/javascript" src="${ctx }/resources/js/upload.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>

<script id="templateAttach" type="text/x-handlebars-template">
<li id='imgli' data-src='${ctx}{{fullName}}'>
  <span class="mailbox-attachment-icon has-img"><img src="${ctx}{{imgsrc}}" alt="Attachment"></span>
  <div class="mailbox-attachment-info" style="text-align:center">
	<a href="${ctx}{{getLink}}" class="mailbox-attachment-name" >{{fileName}}</a>
	</span>
  </div>
</li>                
</script>  



<script>

    var postNo = ${review.reviewNo};

	$("#replyAddBtn").on("click", function() {
		
		$.ajax({
			
			url: '${ctx}/replies/register'
			,type:"post"
			,headers : {
				"Content-Type" : "application/json",
				"X-HTTP-Method-Override": "POST" 
			}
			,dataType : 'text'
			,data: JSON.stringify({
				replyContent : $("#replyContent").val(), 
				postNo : postNo
			})
			,success : displayReply
			,error : errorCallback
		});
		
	});
	
	var removeReply = function(replyNo) {
		$.ajax({
			url:"${ctx}/replies/remove/"+replyNo
			,type:"delete"
			,headers : {
					"Content-Type" : "application/json",
					"X-HTTP-Method-Override": "GET" 
			},
			dataType : 'text',
			success : displayReply,
			error : errorCallback
		});
	};
	
	
	var modifyReply = function(replyNo) {
		$.ajax({
			url : "${ctx}/replies/modify/" + replyNo	
			,type : "get"
			,headers : {
				"Content-Type" : "application/json",
				"X-HTTP-Method-Override": "GET" 
			},
			dataType : 'text',
			success : function(result) {
				var reply = JSON.parse(result);
				
				var modifyHtml = "";
				modifyHtml += '<textarea rows="5" cols="60" id ="'+ reply.replyNo + "area" +'">'+ reply.replyContent +'</textarea>';
				modifyHtml += '<a href="javascript:replyModify('+ reply.replyNo +');">수정</a>';
				$("#"+replyNo).empty();
				$("#"+replyNo).append(modifyHtml);
				
			},
			error : errorCallback
		
		});
	};
	
	
	var replyModify = function(replyNo) {
		$.ajax({
			url : "${ctx}/replies/modify"
			,type : 'post'
			,headers : {
				"Content-Type" : "application/json",
				"X-HTTP-Method-Override": "POST" 
			},
			dataType : 'text',
			data: JSON.stringify({
				replyNo : replyNo,
				replyContent : $("#"+replyNo+"area").val(), 
				postNo : postNo
			}),
			success : displayReply
			,error : errorCallback
		});
	};
	
	var displayReply = function(resultData) {
		
		
		$.ajax({
			
			url: '${ctx}/replies/all/'+postNo
			,type: 'get'
			,dataType: "json"
			,success : function(data) {
				var replyHtml = "";
				
				$.each(data.replys, function(index,reply) {
					replyHtml += '<div class="blogCommnets"> <div class="media	"> <a class="media-left" href="#">' ;
					replyHtml += '<img class="media-object" src="http://placehold.it/70x70" alt="Image"></a>1';
					replyHtml += '<div class="media-body"> <h4 class="media-heading">리뷰작성자</h4>';
					replyHtml += '<h5><span><i class="fa fa-calendar" aria-hidden="true"></i>날짜</span></h5>';
					replyHtml += '<p class="timeline-body" id="'+ reply.replyNo +'">'+ reply.replyContent+'</p>';
// 					replyHtml += '<button class="btn btn-link">Reply</button>';
					replyHtml += '<div class="text-right">';
					replyHtml += '<div class="timeline-footer">';
					replyHtml += '<a style="padding:10px" href="javascript:modifyReply('+reply.replyNo +');"><i class="fa fa-pencil"aria-hidden="true"></i></a>';
					replyHtml += '<a style="padding:10px" href="javascript:removeReply('+reply.replyNo +');"><i class="fa fa-trash-o" aria-hidden="true"></i></a>';
					replyHtml += '</div></div></div></div></div>';
				});
				
				$("#reviews").empty();
				$("#reviews").append(replyHtml);
				$("#replyContent").val("");
				console.log(data.replys.length);
				$("#replyCount").val("Reply("+data.replys.length +")");
				
			}
		});
		
	}	
	
	var errorCallback = function() {
		alert("수행중 오류 발생");
	}
		
</script>


<script>
$(document).ready(function() {

	var formObj = $("form[role='form']");

	console.log(formObj);

	$("#modifyBtn").on("click", function() {
		formObj.attr("action", "modify.do");
		formObj.attr("method", "get");
		formObj.submit();
	});

	$("#removeBtn").on("click", function() {
		formObj.attr("action", "remove.do");
		formObj.submit();
	});

	$("#goListBtn ").on("click", function() {
		formObj.attr("method", "get");
		formObj.attr("action", "listpage.do");
		formObj.submit();
	});

});

var template = Handlebars.compile($("#templateAttach").html());

$.getJSON("${ctx}/review/getAttach/"+postNo,function(list){
	$(list).each(function(){
		
		var fileInfo = getFileInfo(this);
		console.log(fileInfo);
		var html = template(fileInfo);
		console.log(html);
		
		 $(".uploadedList").append(html);
		
	});
});



$(".uploadedList").on("click", ".mailbox-attachment-info a", function(event){
	
	var fileLink = $(this).attr("href");
	
	if(checkImageType(fileLink)){
		
		event.preventDefault();
				
		var imgTag = $("#popup_img");
		imgTag.attr("src", fileLink);
		
				
		$(".popup").show('slow');
		imgTag.addClass("show");		
	}	
});

$("#popup_img").on("click", function(){
	
	$(".popup").hide('slow');
	
});	


</script>


  <script>
  	$(window).load(function() {
  		$(".se-pre-con").fadeOut("slow");
  		
  		$("tr").hover(
  	  			function () {
  	  				$(this).css("backgroundColor","#F6F6F6");	
  					
  				},
  	  			function () {
  	  				$(this).css("backgroundColor","#ffffff");		
  					
  				}
  	  		)
  		
  	});
  </script>
</body>



</html>
