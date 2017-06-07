<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx">${pageContext.request.contextPath }</c:set>

<!DOCTYPE html>
<html lang="en">
<head>

<!-- SITE TITTLE -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>화장품 추천을 위한 평가</title>


<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
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
<link rel="stylesheet" href="${ctx }/resources/css/style.css">
<!--내가 쓰는 스크립트, 스타일시트  -->
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
		<%@ include file="../common/header.jspf"%>
		<!-- PAGE TITLE SECTION -->
		<section class="clearfix pageTitleArea"
			style="background-image: url(https://theknockturnal.com/wp-content/uploads/2017/05/IMG_5402-1.jpg);">
			<div class="container">
				<div class="pageTitle">
					<h1 style="color: #ec5598">내게 맞는 화장품을 찾아보세요</h1>
				</div>
			</div>
		</section>

		<!-- GALLERY SECTION -->
		<section class="clearfix homeGallery padding gallery-v1">
			<div class="container">
				<div class="row">
					<div class="col-xs-12">
						<div class="filter-container isotopeFilters">
							<h5 style="color: #ec5598">최소 15개 이상의 화장품을 추천하셔야 정확한 추천을 받을
								수 있습니다.</h5>
							<br>
							<ul class="list-inline filter">
								<li><a href="javascript:javascript:void(0)"
									onclick="viewAll()">All</a></li>
								<li><a href="javascript:javascript:void(0)"
									onclick="categoryList('essence')">Essence</a></li>
								<li><a href="javascript:void(0)"
									onclick="categoryList('mist')">Mist</a></li>
								<li><a href="javascript:void(0)"
									onclick="categoryList('lotion')">Lotion</a></li>
								<li><a href="javascript:void(0)"
									onclick="categoryList('faceOil')">FaceOil</a></li>
								<li><a href="javascript:void(0)"
									onclick="categoryList('skin')">Skin</a></li>
								<li><a href="javascript:void(0)"
									onclick="categoryList('cream')">Cream</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="row isotopeContainer" id="container">

					<div class="panel panel-default cartInfo">
						<div>
							<div class="input-group">
								<input type="text" class="form-control" name="title" id="title"
									placeholder="Search..." aria-describedby="basic-addon221">
								<button class="btn btn-common btn-full-round btn-theme"
									name="searchName">Search</button>
							</div>
						</div>
					</div>
					<div class="row" id="cosmeticList">
						<ul id="myList">
							<c:forEach items="${cosmetics}" var="cosmetics" varStatus="sts">
								<li>
									<form action="">
										<div class="col-md-4 col-sm-6 col-xs-12">
											<div class="produtSingle">
												<div class="produtImage">
													<img src="${cosmetics.img }" alt="Image Product"
														class="img-responsive">
												</div>
												<div class="productCaption">
													<h6>${cosmetics.cosmeticName }</h6>
													<div class="stars">
														<input class="star star-5"
															id="star-${cosmetics.cosmeticNo }-5" type="radio"
															name="star" value="5" /> <label class="star star-5"
															for="star-${cosmetics.cosmeticNo }-5"></label> <input
															class="star star-4" id="star-${cosmetics.cosmeticNo }-4"
															type="radio" name="star" value="4" /> <label
															class="star star-4" for="star-${cosmetics.cosmeticNo }-4"></label>
														<input class="star star-3"
															id="star-${cosmetics.cosmeticNo }-3" type="radio"
															name="star" value="3" /> <label class="star star-3"
															for="star-${cosmetics.cosmeticNo }-3"></label> <input
															class="star star-2" id="star-${cosmetics.cosmeticNo }-2"
															type="radio" name="star" value="2" /> <label
															class="star star-2" for="star-${cosmetics.cosmeticNo }-2"></label>
														<input class="star star-1"
															id="star-${cosmetics.cosmeticNo }-1" type="radio"
															name="star" value="1" /> <label class="star star-1"
															for="star-${cosmetics.cosmeticNo }-1"></label>
													</div>
													<input type="hidden" name="${cosmetics.cosmeticNo }"
														value="${cosmetics.cosmeticNo }">
													<button type="button"
														class="btn btn-common btn-full-round btn-theme"
														onclick="javascript:gradeReg(${cosmetics.cosmeticNo })"
														name="gradeBtn">평가</button>
												</div>
											</div>
										</div>

									</form>
								</li>
							</c:forEach>
						</ul>
						<div id="loadMore">Load more</div>
						<div id="showLess">Show less</div>
					</div>


				</div>
			</div>
			<div class="floating">
				<form action="${ctx }/survey/surveyResult.do" method="get">
					<button type="submit" class="btn btn-common btn-theme">평가
						종료하기</button>
				</form>
			</div>
		</section>

		<%@ include file="../common/footer.jspf"%>
	</div>


	<!-- JAVASCRIPTS -->
	<script type="text/javascript"
		src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script src="${ctx }/resources/plugins/jquery-ui/jquery-ui.min.js"></script>
	<script src="${ctx }/resources/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="${ctx }/resources/plugins/selectbox/jquery.selectbox-0.1.3.min.js"></script>
	<script
		src="${ctx }/resources/plugins/owl-carousel/owl.carousel.min.js"></script>
	<script src="${ctx }/resources/plugins/isotope/isotope.min.js"></script>
	<script
		src="${ctx }/resources/plugins/fancybox/jquery.fancybox.pack.js"></script>
	<script src="${ctx }/resources/plugins/isotope/isotope-triger.min.js"></script>
	<script
		src="${ctx }/resources/plugins/smoothscroll/SmoothScroll.min.js"></script>
	<script
		src="${ctx }/resources/plugins/datepicker/bootstrap-datepicker.min.js"></script>
	<script src="${ctx }/resources/plugins/syotimer/jquery.syotimer.min.js"></script>
	<script src="${ctx }/resources/js/custom.js"></script>

	<script>
  	//paste this code under head tag or in a seperate js file.
  	// Wait for window load
  	$(window).load(function() {
  		// Animate loader off screen
  		$(".se-pre-con").fadeOut("slow");;
  	});
  </script>
	<!--내가 쓰는 스크립트  -->
	<script type="text/javascript">

		var gradeReg;
		var search;
		var categoryList;
		var category;
		var cosmeticNames = ${cosmeticNames};
		var size_li = $("#myList li").size();
	    var x=3;
		$(document).ready(function() {
			
			
		    $('#myList li:lt('+x+')').show();
		  /*   
		    $('#loadMore').click(function () {
		        x= (x+5 <= size_li) ? x+5 : size_li;
		        $('#myList li:lt('+x+')').show();
		    });
		    $('#showLess').click(function () {
		        x=(x-5<0) ? 3 : x-5;
		        $('#myList li').not(':lt('+x+')').hide();
		    }); */
			
			$('#title').autocomplete({
				source: cosmeticNames
			});
			
			gradeReg = function(cosmeticNo){
				var gradeStar = $('input:radio[name="star"]:checked').val();
				console.log(gradeStar);
				$.ajax({
						url:"http://localhost:8888/rest/recommend/insert/customerNo/"+1+"/cosmeticNo/"+cosmeticNo+"/grade/"+gradeStar
						,type:"get"
						,dataType:"json"
						,success:successCallback
						,error:errorCallback
			});
			};
			
			var errorCallback = function() {
				alert("수행중 오류가 발생했습니다.");
			};
			var successCallback = function(){
				alert("평가 완료");
			};
			
			$(":input[name=searchName]").click(function(){
				var name = $(":input[name=title]").val();
				$.ajax({
					url:"http://localhost:8888/rest/cosmetic/findByTitle/"+name
					,type:"get"
					,dataType:"json"
					,success:displayList
					,error:errorCallback
				});
			});
			
			categoryList = function(category){
				$.ajax({
					url:"http://localhost:8888/rest/cosmetic/findByCategory/"+category
					,type:"get"
					,dataType:"json"
					,success:displayList
					,error:errorCallback
				});
			};
			
			viewAll = function(){
				
				$.ajax({
					url:"http://localhost:8888/rest/cosmetic/findAll"
					,type:"get"
					,dataType:"json"
					,success:displayList
					,error:errorCallback
				});
			};
			
			var displayList = function(resultData) {
				var listHtml = "";
				
				$.each(resultData, function(index, cosmetic){
					listHtml += '<form action="">';
					listHtml += '<div class="col-md-4 col-sm-6 col-xs-12">';
					listHtml += '<div class="produtSingle">';
					listHtml += '<div class="produtImage">'+
					'<img src="'+cosmetic.img+'" alt="Image Product" class="img-responsive">'+
					'</div>'+
					'<div class="productCaption">'+
					'<h6>'+cosmetic.cosmeticName+'</h6>'+
					'<div class="stars">'+
					'<input class="star star-5"'+
					'id="star-'+cosmetic.cosmeticNo+'-5" type="radio"'+
					'name="star" value="5" /> <label class="star star-5"'+
					'for="star-'+cosmetic.cosmeticNo+'-5"></label> <input'+
					' class="star star-4" id="star-'+cosmetic.cosmeticNo+'-4"'+
					'type="radio" name="star" value="4" /> <label'+
					' class="star star-4" for="star-'+cosmetic.cosmeticNo+'-4"></label>'+
					'<input class="star star-3"'+
					'id="star-'+cosmetic.cosmeticNo+'-3" type="radio"'+
					'name="star" value="3" /> <label class="star star-3"'+
					'for="star-'+cosmetic.cosmeticNo+'-3"></label> <input'+
					' class="star star-2" id="star-'+cosmetic.cosmeticNo+'-2"'+
					'type="radio" name="star" value="2" /> <label'+
					' class="star star-2" for="star-'+cosmetic.cosmeticNo+'-2"></label>'+
					'<input class="star star-1"'+
					'id="star-'+cosmetic.cosmeticNo+'-1" type="radio"'+
					'name="star" value="1" /> <label class="star star-1"'+
					'for="star-'+cosmetic.cosmeticNo+'-1"></label>'+
					'</div>'+
					'<input type="hidden" name="'+cosmetic.cosmeticNo+'"'+
					'value="'+cosmetic.cosmeticNo+'">'+
					'<button type="button" class="btn btn-common btn-full-round btn-theme"'+
					'onclicK="javascript:gradeReg('+cosmetic.cosmeticNo+')"'+
					'name="gradeBtn">평가</button></div></div></div>'
					
					listHtml += '</form>';
				});
				$("#cosmeticList").empty();
				$("#cosmeticList").append(listHtml);
			}
			
		});
		
		 
		
	</script>
</body>

</html>



