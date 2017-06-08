<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>
<c:set var="ctx" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>

<<<<<<< HEAD
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Beauty Mate</title>
=======
<head> 
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  
  <title>Beauty Mate</title>
>>>>>>> refs/remotes/origin/0608JM1538

<!-- GOOGLE FONT -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Raleway:100,300,400,600,700"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Herr+Von+Muellerhoff"
	rel="stylesheet">

<!-- PLUGINS CSS STYLE -->
<link href="${ctx }/resources/plugins/jquery-ui/jquery-ui.min.css"
	rel="stylesheet">
<link href="${ctx }/resources/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="${ctx }/resources/plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<link href="${ctx }/resources/plugins/selectbox/select_option1.css"
	rel="stylesheet">
<link href="${ctx }/resources/plugins/owl-carousel/owl.carousel.min.css"
	rel="stylesheet" media="screen">
<link href="${ctx }/resources/plugins/fancybox/jquery.fancybox.pack.css"
	rel="stylesheet">
<link href="${ctx }/resources/plugins/isotope/isotope.min.css"
	rel="stylesheet">
<link href="${ctx }/resources/plugins/datepicker/datepicker.min.css"
	rel="stylesheet">
<link
	href="${ctx }/resources/plugins/bootstrapthumbnail/bootstrap-thumbnail.css"
	rel="stylesheet">

<!-- CUSTOM CSS -->
<link href="${ctx }/resources/css/style.css" rel="stylesheet">
<link href="${ctx }/resources/css/default.css" rel="stylesheet"
	id="option_color">


<!-- FAVICON -->
<link href="${ctx }/resources/img/favicon.png" rel="shortcut icon">


<!--       Bootstrap 3.3.4 -->
<%--     <link href="${ctx}/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" /> --%>
<!--     Font Awesome Icons -->
<!--     <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" /> -->
<!--     Ionicons -->
<!--     <link href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet" type="text/css" /> -->
<!--     Theme style -->
<%--     <link href="${ctx}/resources/dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" /> --%>
<!--     AdminLTE Skins. Choose a skin from the css/skins 
<<<<<<< HEAD
<!--          folder instead of downloading all of them to reduce the load. -->
-->
=======
<!--          folder instead of downloading all of them to reduce the load. --> 
>>>>>>> refs/remotes/origin/0608JM1538
<%--     <link href="${ctx}/resources/dist/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css" /> --%>



<script src="${ctx}/resources/js/jQuery-2.1.4.min.js"></script>

<style>
/* Paste this css to your style sheet file or under head tag */
/* This only works with JavaScript,
  if it's not present, don't show loader */
.no-js #loader {
	display: none;
}

.js #loader {
	display: block;
	position: absolute;
	left: 100px;
	top: 0;
}

.se-pre-con {
	position: fixed;
	left: 0px;
	top: 0px;
	width: 100%;
	height: 100%;
	z-index: 9999;
	background:
		url(${ctx}/resources/plugins/simple-pre-loader/images/loader-64x/Preloader_2.gif)
		center no-repeat #fff;
}
</style>

<style>
.fileDrop {
	width: 100%;
	height: 100px;
	border: 1px dotted blue;
}

small {
	margin-left: 3px;
	font-weight: bold;
	color: gray;
}

    #uplist { 
	     list-style:none;
	     margin-left : 0px; 
	     padding:0; 
	     
 	} 

	#imgli { 
     margin: 0 0 0 0; 
     padding: 0 0 0 0;
     border : 0;
     float: left;
 	} 


</style>
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style type="text/css">
div.stars {
	width: 270px;
	display: inline-block;
}

.floating {
	position: fixed;
	right: 50%;
	top: 180px;
	margin-right: -720px;
	text-align: center;
	width: 120px;
}

input.star {
	display: none;
}

label.star {
	float: right;
	padding: 10px;
	font-size: 36px;
	color: #444;
	transition: all .2s;
}

input.star:checked ~ label.star:before {
	content: '\f005';
	color: #FD4;
	transition: all .25s;
}

input.star-5:checked ~ label.star:before {
	color: #FE7;
	text-shadow: 0 0 20px #952;
}

input.star-1:checked ~ label.star:before {
	color: #F62;
}

label.star:hover {
	transform: rotate(-15deg) scale(1.3);
}

label.star:before {
	content: '\f006';
	font-family: FontAwesome;
}
</style>

</head>

<body class="body-wrapper static">

  <div class="se-pre-con"></div>
  <div class="main-wrapper">
    <!-- HEADER -->
    
    
    <header id="pageTop" class="header">

			<!-- TOP INFO BAR -->
			<div class="top-info-bar">


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



						</ul>

					</div>

				</div>
			</div>

			<!-- NAVBAR -->
			<nav id="menuBar" class="navbar navbar-default lightHeader"
				role="navigation">
				<div class="container">

					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target=".navbar-ex1-collapse">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="index.html"><img
							src="${ctx }/resources/img/logo.png" alt="logo"></a>
					</div>
				</div>
				</nav>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse navbar-ex1-collapse">
					<ul class="nav navbar-nav navbar-right">
						<li class="active"><a href="index.html">HOME</a></li>
						<li class=" dropdown singleDrop"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown" role="button"
							aria-haspopup="true" aria-expanded="false">PICKMETEM</a></li>
						<li class=" dropdown singleDrop"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown" role="button"
							aria-haspopup="true" aria-expanded="false">RANKING</a></li>
						<li class=" dropdown megaDropMenu"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown" role="button"
							aria-haspopup="true" aria-expanded="false">REVIEW</a></li>
						<li class=" dropdown singleDrop"><a href="javascript:void(0)"
							class="dropdown-toggle" data-toggle="dropdown" role="button"
							aria-haspopup="true" aria-expanded="false">BeautyTip</a></li>
						<li class=" dropdown singleDrop"><a href="javascript:void(0)"
							class="dropdown-toggle" data-toggle="dropdown" role="button"
							aria-haspopup="true" aria-expanded="false">MY Pouch</a></li>

					</ul>
				</div>

				<!-- USER SECTION -->
				<section class="clearfix userSection padding">
					<div class="container">
						<div class="row">
							<div class="col-xs-12">
								<ul class="list-inline squareBtn">
									<li class="li"><a href="user-dashboard.html"
										class="btn btn-common">Account Dashboard</a></li>
									<li class="li"><a href="user-profile.html"
										class="btn btn-common btn-theme">Profile</a></li>
									<li class="li"><a href="address.html"
										class="btn btn-common">Address</a></li>
									<li class="li"><a href="all-order.html"
										class="btn btn-common">All Orders</a></li>
									<li class="li"><a href="wishlist.html"
										class="btn btn-common">Wishlist</a></li>
								</ul>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<div class="innerWrapper">
									<div class="orderBox  patternbg">리뷰작성</div>
									<div class="profile">
									<form id='registerForm' class="form-horizontal" role="form"
													method="post" >
										<div class="row">
											<div class="col-md-2 col-sm-3 col-xs-12">
												<div class="thumbnail" id="cosmeticImg">
													<img src="http://placehold.it/270x270" width="270px"
														height="270px" alt="profile-image" >
												</div>
												
											</div>
											<div class="col-md-10 col-sm-9 col-xs-12">
												
													<div class="form-group">
														<label for="" class="col-md-2 col-sm-3 control-label">Title</label>
														<div class="col-md-10 col-sm-9">
															<input type="text" class="form-control" id=""
																placeholder="title" name='reviewTitle'>
														</div>
														<div class="panel panel-default cartInfo">
															<div class="input-group">
																<label for="" class="col-md-2 col-sm-3 control-label">Cosmetic</label>
																<div class="col-md-10 col-sm-9">
																	<input type="text" class="form-control"
																		name="cosmeticName" id="cosmeticName"
																		placeholder="Search..."
																		aria-describedby="basic-addon221">
																	<button type="button" class="btn btn-common btn-full-round btn-theme"
																		name="searchName" style="width: 20%">Search</button>
																</div>
																<div class="stars">
														<input class="star star-5"
															id="star-5" type="radio"
															name="star" value="5" /> <label class="star star-5"
															for="star-5"></label> <input
															class="star star-4" id="star-4"
															type="radio" name="star" value="4" /> <label
															class="star star-4" for="star-4"></label>
														<input class="star star-3"
															id="star-3" type="radio"
															name="star" value="3" /> <label class="star star-3"
															for="star-3"></label> <input
															class="star star-2" id="star-2"
															type="radio" name="star" value="2" /> <label
															class="star star-2" for="star-2"></label>
														<input class="star star-1"
															id="star-1" type="radio"
															name="star" value="1" /> <label class="star star-1"
															for="star-1"></label>
													</div>
													<input type="hidden" id="grade" name="grade" value="" >
															</div>
														</div>
													</div>
													<div class="form-group">
														<label for="" class="col-md-2 col-sm-3 control-label">Content</label>
														<div class="col-md-10 col-sm-9">
															<textarea class="form-control" id=""
																placeholder="content" name="reviewContent"></textarea>
														</div>

													</div>
													<!-- 						<div class='fileDrop'></div> -->

													<!-- 						<div class='uploadedList'></div> -->


													<div class="form-group">
														<label for="exampleInputEmail1">File Upload</label>
														<div class="fileDrop"></div>
													</div>



													<div>
														<hr>
													</div>

													<ul class="mailbox-attachments clearfix uploadedList">
													</ul>
													<div class="text-right">
														<button type="submit" class="btn btn-common btn-theme">작성</button>
														<a class="btn btn-common btn-theme"
															href="${ctx }/review/listpage.do">취소</a>

													</div>
												
											</div>

										</div>
										</form>
									</div>
								</div>
							</div>

						</div>
					</div>
				</section>



				<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
				<script>
					// 		$(".fileDrop").on("dragenter dragover", function(event) {
					// 			event.preventDefault();
					// 		});

					// 		$(".fileDrop").on("drop", function(event){
					// 			event.preventDefault();

					// 			var files = event.originalEvent.dataTransfer.files;

					// 			var file = files[0];

					// 			console.log(file);

					// 			var formData = new FormData();

					// 			formData.append("file", file);

					// 			$.ajax({
					// 				  url: '${ctx}/uploadAjax',
					// 				  data: formData,
					// 				  dataType:'text',
					// 				  processData: false,
					// 				  contentType: false,
					// 				  type: 'POST',
					// 				  success: function(data){

					// 					  alert(data);

					// 					  var str ="";

					// 					  if(checkImageType(data)){
					// 						  str ="<div><a href=${ctx}/displayFile?fileName="+getImageLink(data)+">"
					// 								  +"<img src='${ctx}/displayFile?fileName="+data+"'/>"
					// 								  +"</a><small data-src="+data+">X</small></div>";
					// 					  }else{
					// 						  str = "<div><a href='${ctx}/displayFile?fileName="+data+"'>" 
					// 								  + getOriginalName(data)+"</a>"
					// 								  +"<small data-src="+data+">X</small></div></div>";
					// 					  }

					// 					  $(".uploadedList").append(str);
					// 				  }
					// 				});	
					// 		});

					// 		$(".uploadedList").on("click", "small", function(event){

					// 				 var that = $(this);

					// 			   $.ajax({
					// 				   url:"${ctx}/deleteFile",
					// 				   type:"post",
					// 				   data: {fileName:$(this).attr("data-src")},
					// 				   dataType:"text",
					// 				   success:function(result){
					// 					   if(result == 'deleted'){
					// 						   that.parent("div").remove();
					// 					   }
					// 				   }
					// 			   });
					// 		});

					// function getOriginalName(fileName){	

					// 	if(checkImageType(fileName)){
					// 		return;
					// 	}

					// 	var idx = fileName.indexOf("_") + 1 ;
					// 	return fileName.substr(idx);

					// }

					// function getImageLink(fileName){

					// 	if(!checkImageType(fileName)){
					// 		return;
					// 	}
					// 	var front = fileName.substr(0,12);
					// 	var end = fileName.substr(14);

					// 	return front + end;

					// }

					// 	function checkImageType(fileName){

					// 		var pattern = /jpg|gif|png|jpeg/i;

					// 		return fileName.match(pattern);

					// 	}
				</script>
				<script type="text/javascript">
					var cosmeticNames = ${cosmeticNames};
					
					var gradeStar; 
					
					$(document).ready(function() {

						$('#cosmeticName').autocomplete({
							source : cosmeticNames
						});
						
						$(":input[name=searchName]").click(function(){
							var name = $(":input[name=cosmeticName]").val();
							 console.log(name);
							
							$.ajax({
								url:"http://localhost:8888/rest/cosmetic/findByTitle/"+name
								,type:"get"
								,dataType:"json"
								,success:displayList
								,error:errorCallback
							});
						});
						
						$(":input[name=reviewContent]").keydown(function(){
							gradeStar = $('input:radio[name="star"]:checked').val();
							document.getElementById("grade").value = gradeStar;
						});
						
						

						var displayList = function(resultData) {
							var listHtml = "";
							
							$.each(resultData, function(index, cosmetic){
								listHtml += '<img src="'+cosmetic.img+'" width="270px" height="270px" alt="profile-image">';
								listHtml+='<input type="hidden" name="cosmeticNo" id="cosmeticNo" value="'+cosmetic.cosmeticNo+'">';
							});
							$("#cosmeticImg").empty();
							$("#cosmeticImg").append(listHtml);
						}
						var errorCallback = function() {
							alert("수행중 오류가 발생했습니다.");
						};
						
						
					});
					
					
				</script>









				<script type="text/javascript" src="${ctx }/resources/js/upload.js"></script>
				<script
					src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
				<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>

<%-- <a href="${ctx}{{getLink}}" class="mailbox-attachment-name">{{fileName}}</a> --%>

<script id="template" type="text/x-handlebars-template">
<li id='imgli'>
  <span class="mailbox-attachment-icon has-img"><img src="${ctx}{{imgsrc}}" alt="Attachment"></span>
  <div class="mailbox-attachment-info">
	<a href="${ctx}{{getLink}}" class="mailbox-attachment-name">{{fileName}}</a>
	<a href="{{fullName}}" 
     class="btn btn-default btn-xs pull-right delbtn"></a>
	<a data-src="{{fullName}}" ><i class="fa fa-fw fa-remove"></i></a> 
	</span>
  </div>
</li>                
</script> 
<!-- 	<a data-src="{{fullName}}" ><i class="fa fa-fw fa-remove"></i></a> -->
<script>



var template = Handlebars.compile($("#template").html());

$(".fileDrop").on("dragenter dragover", function(event){
	event.preventDefault();
});


$(".fileDrop").on("drop", function(event){
	event.preventDefault();
	
	var files = event.originalEvent.dataTransfer.files;
	
	var file = files[0];

	var formData = new FormData();
	
	formData.append("file", file);	
	
	
	$.ajax({
		  url: '${ctx}/uploadAjax',
		  data: formData,
		  dataType:'text',
		  processData: false,
		  contentType: false,
		  type: 'POST',
		  success: function(data){
			  
			  var fileInfo = getFileInfo(data);
			  
			  var html = template(fileInfo);
			  
// 			  console.log(fileInfo);
// 			  console.log(html);
			  
			  
			  $(".uploadedList").append(html);
		  }
		});	
});


$("#registerForm").submit(function(event){
	event.preventDefault();
	
	var that = $(this);
	
	var str ="";
	$(".uploadedList .delbtn").each(function(index){
		 str += "<input type='hidden' name='files["+index+"]' value='"+$(this).attr("href") +"'> ";
	});
	
	that.append(str);

	that.get(0).submit();
});


$(".uploadedList").on("click", "a", function(event){
	
	 var that = $(this);

  $.ajax({
	   url:"${ctx}/deleteFile",
	   type:"post",
	   data: {fileName:$(this).attr("data-src")},
	   dataType:"text",
	   success:function(result){
		   if(result == 'deleted'){
			   that.closest("li").remove();
		   }
	   }
  });
});

</script>
				<a></a>

				<script>
					var template = Handlebars.compile($("#template").html());

					$(".fileDrop").on("dragenter dragover", function(event) {
						event.preventDefault();
					});

					$(".fileDrop").on("drop", function(event) {
						event.preventDefault();

						var files = event.originalEvent.dataTransfer.files;

						var file = files[0];

						var formData = new FormData();

						formData.append("file", file);

						$.ajax({
							url : '${ctx}/uploadAjax',
							data : formData,
							dataType : 'text',
							processData : false,
							contentType : false,
							type : 'POST',
							success : function(data) {

								var fileInfo = getFileInfo(data);

								var html = template(fileInfo);

								$(".uploadedList").append(html);
							}
						});
					});

// 					$("#registerForm")
// 							.submit(
// 									function(event) {
// 										event.preventDefault();

// 										var that = $(this);

// 										var str = "";
// 										$(".uploadedList .delbtn")
// 												.each(
// 														function(index) {
// 															str += "<input type='hidden' name='files["
// 																	+ index
// 																	+ "]' value='"
// 																	+ $(this)
// 																			.attr(
// 																					"href")
// 																	+ "'> ";
// 														});

// 										that.append(str);

// 										that.get(0).submit();
// 									});

					$(".uploadedList").on("click", "a", function(event) {

						var that = $(this);

						$.ajax({
							url : "${ctx}/deleteFile",
							type : "post",
							data : {
								fileName : $(this).attr("data-src")
							},
							dataType : "text",
							success : function(result) {
								if (result == 'deleted') {
									that.closest("li").remove();
								}
							}
						});
					});
				</script>




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
  
  
  


				<!-- JAVASCRIPTS -->
				<script type="text/javascript"
					src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
				<script src="${ctx }/resources/plugins/jquery-ui/jquery-ui.min.js"></script>
				<script
					src="${ctx }/resources/plugins/bootstrap/js/bootstrap.min.js"></script>
				<script
					src="${ctx }/resources/plugins/selectbox/jquery.selectbox-0.1.3.min.js"></script>
				<script
					src="${ctx }/resources/plugins/owl-carousel/owl.carousel.min.js"></script>
				<script src="${ctx }/resources/plugins/isotope/isotope.min.js"></script>
				<script
					src="${ctx }/resources/plugins/fancybox/jquery.fancybox.pack.js"></script>
				<script
					src="${ctx }/resources/plugins/isotope/isotope-triger.min.js"></script>
				<script
					src="${ctx }/resources/plugins/smoothscroll/SmoothScroll.min.js"></script>
				<script
					src="${ctx }/resources/plugins/datepicker/bootstrap-datepicker.min.js"></script>
				<script
					src="${ctx }/resources/plugins/syotimer/jquery.syotimer.min.js"></script>
				<script src="${ctx }/resources/js/custom.js"></script>



				<script>
					//paste this code under head tag or in a seperate js file.
					// Wait for window load
					$(window).load(function() {
						// Animate loader off screen
						$(".se-pre-con").fadeOut("slow");
						;
					});
				</script>
</body>

</html>
