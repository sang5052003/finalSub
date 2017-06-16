<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx">${pageContext.request.contextPath }</c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- 	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> -->
<!--   <meta http-equiv="X-UA-Compatible" content="IE=edge"> -->
<!--   <meta name="viewport" content="width=device-width, initial-scale=1"> -->
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
  <link href="${ctx }/resources/css/styleJ.css" rel="stylesheet">
  <link href="${ctx }/resources/css/default.css" rel="stylesheet" id="option_color">


  <!-- FAVICON -->
  <link href="${ctx }/resources/img/favicon.png" rel="shortcut icon">
  
  <!-- 영상 -->
  <link
	href="https://cdn.rawgit.com/videojs/video.js/v5.4.4/dist/video-js.css"
	rel="stylesheet">
	<script
	src="https://cdn.rawgit.com/videojs/video.js/v5.4.4/dist/video.js"></script>
	<script
	src="https://cdn.rawgit.com/eXon/videojs-youtube/v2.0.3/dist/Youtube.js"></script>
 
   <script src="${ctx}/resources/js/jQuery-2.1.4.min.js"></script>

<style>
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
    <%@include file="../common/header.jspf" %>


<!-- PAGE TITLE SECTION -->
    <section class="clearfix pageTitleArea" style="background-image: url(${ctx}/resources/img/home/1.jpg);">
        <div class="container">
	        <div class="pageTitle">
	            <h1>BeautyTip</h1>
	        </div>
        </div>
    </section>

<!-- BLOG SINGLE SECTION -->
    <section class="container-fluid clearfix blogSingle">
      <div class="container">
        <div class="row">

          <div class="col-sm-4 col-xs-12">
            <div class="blogSidebar">
              <div class="panel panel-default">
                <div class="panel-heading">Categories</div>
                <div class="panel-body">
                  <ul class="list-unstyle categoryList">
                    <li><a href="${ctx }/beautyTip/listpage.do?category=${beautyTip.category}">목록 으로</a></li>
                    <c:if test="${beautyTip.customer.id eq loginedId }">
                    <li><a href="${ctx }/beautyTip/editForm.do?beautyTipNo=${beautyTip.beautyTipNo}">수정 하기</a></li>
                    <li><a href="${ctx }/beautyTip/clear.do?beautyTipNo=${beautyTip.beautyTipNo}&category=${beautyTip.category}">삭제 하기</a></li>
                    </c:if>
                  </ul>
                </div>
              </div>
              
              <!-- 리스트를 필요.. -->
              <div class="panel panel-default recentBlogPosts">
                <div class="panel-heading">Resent Posts</div>
                <div class="panel-body">
                <c:forEach var="beautyTip" items="${recentList }">
                  <div class="media">
                    <a class="media-left" href="#">
                      <img class="media-object" src="${loadPath}${beautyTip.firstImage }" width="80px" alt="Image">
                    </a>
                    <div class="media-body">
                      <h4 class="media-heading"><a href="${ctx }/beautyTip/showDetail.do?beautyTipNo=${beautyTip.beautyTipNo }">${beautyTip.beautyTipTitle }</a></h4>
                      <ul class="list-inline">
                        <li><a href="#"><i class="fa fa-user" aria-hidden="true"></i>${beautyTip.customer.id }</a></li>
                        <li><a href="#"><i class="fa fa-comments-o" aria-hidden="true"></i>${beautyTip.beautyTipReplys.size() } Comments</a></li>
                      </ul>
                    </div>
                  </div>
                  </c:forEach>
                  
                </div>
              </div>
              
              
              
            </div>
          </div>

          <div class="col-sm-8 col-xs-12">

            <div class="blogPost singlePost">
            <h1 align="center" style="margin-top:20px;margin-bottom:100px">${beautyTip.beautyTipTitle }</h1>
            
            	<c:forEach var="item" items="${beautyTip.imgArr }" varStatus="sts">
	            	<img src="${loadPath }${beautyTip.imgArr[sts.count - 1] }" alt="Image Blog" class="img-responsive" style="width:500px;margin-left:130px;margin-top:0px;">
    	            <p align="center">${beautyTip.contentArr[sts.count - 1] }</p>
    	            
    	            <!-- 분홍라인 -->
                	<div class="clearfix footerInfo" style="width:740px;margin-bottom:-70px"></div>
                </c:forEach>
                
                
                
                <!-- 영상 -->
                <c:if test="${beautyTip.video ne null}">
                <div style="width:500px;margin:50px;margin-top:100px">
                
                <c:choose>
                	<c:when test="${url eq null}">
                		<p>file</p>
		                <video id="my-video" class="video-js" controls preload="auto"
							width="640" height="264" data-setup="{}">
						<source src="${beautyTip.video}" type='video/mp4'> <!-- <source	src="https://youtu.be/s6yENYX_6IY" type='video/youtube'> -->
						<p class="vjs-no-js">
							To view this video please enable JavaScript, and consider upgrading to
							a web browser that <a href="http://videojs.com/html5-video-support/"
								target="_blank">supports HTML5 video</a>
						</p></video>
						
                	</c:when>
                	<c:otherwise>
                		<p>url</p>
                		<video id="my_video_1" class="video-js" controls preload="auto" width="640" height="268" data-setup='{ "techOrder": ["youtube"] }'>
					    <source src="${url }" type='video/youtube'>
					   </video>
                	</c:otherwise>
                </c:choose>
                
                </div>
                </c:if>
                
                
                
              
              <!-- <p><img src="http://placehold.it/400x300" alt="Image Blog">Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exerci tation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, </p>
              <p>ExceCupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto. </p> -->
              <br><br>
              <ul class="list-inline">
                <li><a href="#"><i class="fa fa-user" aria-hidden="true"></i> ${beautyTip.customer.id }</a></li>
                <li><a href="#"><i class="fa fa-comments-o" aria-hidden="true"></i> ${beautyTip.beautyTipReplys.size() } Comments</a></li>
              </ul>
            </div>
            <div id="replys">
            <div class="blogCommnets">
              <h3>${beautyTip.replySize } Comments</h3>
              <c:forEach var="reply" items="${beautyTip.beautyTipReplys }" >
              <div class="media">
                <!-- <a class="media-left" href="#">
                  <img class="media-object" src="http://placehold.it/70x70" alt="Image">
                </a> -->
                <div class="media-body">
                  <h4 class="media-heading">${reply.customer.id }</h4>
                  <h5><span><i class="fa fa-calendar" aria-hidden="true"></i>22 September, 2016</span></h5>
                  <p id="${reply.replyNo }">${reply.replyContent }</p>
                  <c:if test="${reply.customer.id eq loginedId }">
	                  <button type="button" class="btn btn-link" onclick="javascript:modifyReply(${reply.replyNo})">수정</button>&nbsp;&nbsp;&nbsp;
	                  <button type="button" class="btn btn-link" onclick="javascript:removeReply(${reply.replyNo })">삭제</button>
                  </c:if>
                </div>
              </div>
              </c:forEach>
             
            </div>
           </div>
            <div class="commentsForm">
              <form action="" method="POST" role="form">
                <h3>leave a comment</h3>
                  <div class="form-group">
                    <textarea class="form-control" id="replyContent" rows="3" placeholder="Type Your Comment"></textarea>
                  </div>
                <button type="button" class="btn btn-primary" id="replyAddBtn">댓글 작성</button>
              </form>
            </div>


          </div>

        </div>
      </div>
    </section>

    <!-- FOOTER -->
  </div>
	<%@ include file="../common/footer.jspf"%>
	
  <!-- JAVASCRIPTS -->
  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
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

<script>

    var postNo = ${beautyTip.beautyTipNo};
	var originPath = "http://localhost:8888/rest/";
	<%-- var loginedId = '<%=(String)session.getAttribute("loginedId") %>'; --%>
	var loginedId = "${loginedId}";
	
	console.log("loginedId : " + loginedId);
	
	var displayReply = function(resultData) {
		
		  $.ajax({
			url: '${ctx}/replies/beautyTip/all/' + postNo
			,type: 'get'
			,dataType: 'json'
			,success : function(data) {
				var replyHtml = "";
				
				$.each(data.beautyTipReplys, function(index, reply) {
					replyHtml +=
						'<div class="blogCommnets">';
					
						if(index == 0){
							
							replyHtml += '<h3>' + data.replySize + ' Comments</h3>';
						}
						
					replyHtml +=
						'<div class="media">' + 
						'<div class="media-body">' + 
						'<h4 class="media-heading">' + reply.customer.id + '</h4>' +
						'<h5><span><i class="fa fa-calendar" aria-hidden="true"></i>22 September, 2016</span></h5>' +
						'<p id="' + reply.replyNo + '">' + reply.replyContent + '</p>';
						
						if(loginedId == reply.customer.id){
						
							replyHtml +=
								'<button type="button" class="btn btn-link" onclick="javascript:modifyReply(' + reply.replyNo + ')">수정</button>&nbsp;&nbsp;&nbsp;' +
								'<button type="button" class="btn btn-link" onclick="javascript:removeReply(' + reply.replyNo + ')">삭제</button>';
							//listHtml += '<li><a href="javascript:delFunc(' + beautyTip.beautyTipNo + ');"' + ' class="btn btn-common btn-dark">삭제</a></li>'
						}
						
						
						replyHtml += '</div></div>';
				});
				
				$("#replys").empty();
				$("#replys").append(replyHtml);
				$("#replyContent").val("");
			}
		});
		
	};	
	
	var errorCallback = function() {
		alert("수행중 오류 발생");
	};
	
	///////
	
	var removeReply = function(replyNo) {
		$.ajax({
			url: originPath + "beautyTip/reply/remove/" + replyNo
			,type:"get"
			,headers : {
					"Content-Type" : "application/json",
					"X-HTTP-Method-Override": "GET" 
			},
			dataType : "json",
			success : displayReply,
			error : errorCallback
		});
	};
	
	
	var modifyReply = function(replyNo) {
		$.ajax({
			url : "${ctx}/replies/beautyTip/modify/" + replyNo	
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
				//modifyHtml += '<a href="javascript:replyModify('+ reply.replyNo +');">수정</a>';
				$("#"+replyNo).empty();
				$("#"+replyNo).append(modifyHtml);
				
				//수정버튼 바꿔치기 -> 완료
				var temp = $("#"+replyNo).next();//
				temp.attr("onclick", "");//.click(replyModify);
				temp.unbind("click");
				temp.bind("click", function(){
					replyModify(replyNo);
				});
				temp.text("완료");
			},
			error : errorCallback
		
		});
	};
	
	
	var replyModify = function(replyNo) {
		$.ajax({
			url : "${ctx}/replies/beautyTip/modify"
			,type : "post"
			,headers : {
				"Content-Type" : "application/json",
				"X-HTTP-Method-Override": "POST" 
			},
			dataType : "text",
			data: JSON.stringify({
				replyNo : replyNo,
				replyContent : $("#"+replyNo+"area").val(), 
				postNo : postNo
			}),
			success : displayReply
			,error : errorCallback
		});
	};
	
	
	
		
</script>


<script>
$(document).ready(function() {

	var formObj = $("form[role='form']");

	
	
	console.log(loginedId);
	
	//console.log(formObj);
	
	$("#replyAddBtn").on("click", function() {
		
		$.ajax({
			
			url: '${ctx}/replies/beautyTip/register'
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
</script>

  <script>
  	//paste this code under head tag or in a seperate js file.
  	// Wait for window load
  	$(window).load(function() {
  		// Animate loader off screen
  		$(".se-pre-con").fadeOut("slow");;
  	});
  </script>

</body>

</html>
