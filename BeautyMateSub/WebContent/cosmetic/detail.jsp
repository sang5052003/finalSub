<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<c:set var="ctx">${pageContext.request.contextPath }</c:set>
<html lang="en">
<head>
<%@ include file="../common/common.jspf"%>
<%@ include file="../common/header.jspf"%>

<!-- SITE TITTLE -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Single Product - Angel Beauty</title>

<!-- CUSTOM CSS -->
<link href="${ctx}/resources/css/style.css" rel="stylesheet">
<link href="${ctx}/resources/css/default.css" rel="stylesheet"
	id="option_color">

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
		url(plugins/simple-pre-loader/images/loader-64x/Preloader_2.gif)
		center no-repeat #fff;
}

html.mmodal-active, body.mmodal-active {
  overflow: hidden;
}

#mmodal-container {
  position: fixed;
  display: table;
  height: 100%;
  width: 100%;
  top: 0;
  left: 0;
  transform: scale(0);
  z-index: 1;
}
#mmodal-container.one {
  transform: scaleY(0.01) scaleX(0);
  animation: unfoldIn 1s cubic-bezier(0.165, 0.84, 0.44, 1) forwards;
}
#mmodal-container.one .mmodal-background .mmodal {
  transform: scale(0);
  animation: zoomIn 0.5s 0.8s cubic-bezier(0.165, 0.84, 0.44, 1) forwards;
}
#mmodal-container.one.out {
  transform: scale(1);
  animation: unfoldOut 1s 0.3s cubic-bezier(0.165, 0.84, 0.44, 1) forwards;
}
#mmodal-container.one.out .mmodal-background .mmodal {
  animation: zoomOut 0.5s cubic-bezier(0.165, 0.84, 0.44, 1) forwards;
}

#mmodal-container .mmodal-background {
  display: table-cell;
  background: rgba(0, 0, 0, 0.8);
  text-align: center;
  vertical-align: middle;
}
#mmodal-container .mmodal-background .mmodal {
  background: white;
  padding: 50px;
  display: inline-block;
  border-radius: 3px;
  font-weight: 300;
  position: relative;
    width: 1000px;
    height: 1000px;
}
#mmodal-container .mmodal-background .mmodal h2 {
  font-size: 25px;
  line-height: 25px;
  margin-bottom: 15px;
}
#mmodal-container .mmodal-background .mmodal p {
  font-size: 18px;
  line-height: 22px;
}
#mmodal-container .mmodal-background .mmodal .mmodal-svg {
  position: absolute;
  top: 0;
  left: 0;
  height: 100%;
  width: 100%;
  border-radius: 3px;
}
#mmodal-container .mmodal-background .mmodal .mmodal-svg rect {
  stroke: #fff;
  stroke-width: 2px;
  stroke-dasharray: 778;
  stroke-dashoffset: 778;
}
@keyframes unfoldIn {
  0% {
    transform: scaleY(0.005) scaleX(0);
  }
  50% {
    transform: scaleY(0.005) scaleX(1);
  }
  100% {
    transform: scaleY(1) scaleX(1);
  }
}
@keyframes unfoldOut {
  0% {
    transform: scaleY(1) scaleX(1);
  }
  50% {
    transform: scaleY(0.005) scaleX(1);
  }
  100% {
    transform: scaleY(0.005) scaleX(0);
  }
}
@keyframes zoomIn {
  0% {
    transform: scale(0);
  }
  100% {
    transform: scale(1);
  }
}
@keyframes zoomOut {
  0% {
    transform: scale(1);
  }
  100% {
    transform: scale(0);
  }
}
</style>

</head>

<body>




	<!-- SINGLE PRODUCT SECTION -->
	<section class="clearfix singleProduct">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-xs-12">
					<div class="singleIamge">
						<img src="${cosmetic.img}" alt="Image Single Product"
							width="340px" height="340px">
					</div>
				</div>
				<div class="col-sm-6 col-xs-12">
					<div class="singleProductInfo">
						<br>
						<h5 style="font-size: 12.5px;">${cosmetic.brand}</h5>
						<h4 style="color: Dimgray">${cosmetic.cosmeticName}</h4>
						<!--<del>$50</del>-->

						<ul class="list-inline category">
							<li style="font-size: 13px;">tag:</li>
							<li><a href="#"
								style="color: orangeRed; font-size: 12px; font-weight: bold;">#Ranking</a></li>
							<li><a href="#"
								style="color: orangeRed; font-size: 12px; font-weight: bold;">#${cosmetic.category}</a></li>
							<li><a href="#"
								style="color: orangeRed; font-size: 12px; font-weight: bold;">#${cosmetic.volume}</a></li>
							<li><a href="#"
								style="color: orangeRed; font-size: 12px; font-weight: bold;">#${cosmetic.cost}원
							</a></li>

						</ul>

						<span style="color: Dimgray; font-size: 15px; font-weight: bold;">
							Review &nbsp;</span> <span style="color: black; font-size: 11px;">
							(${cosmetic.averageGrade }점 / ${cosmetic.reviews.size() }명) </span> <br>
						<br>

						<c:set var="fiveStar" value="0" />
						<c:set var="fourStar" value="0" />
						<c:set var="threeStar" value="0" />
						<c:set var="twoStar" value="0" />
						<c:set var="oneStar" value="0" />

						<c:forEach items="${cosmetic.reviews}" var="review"
							varStatus="sts">
							<c:choose>
								<c:when test="${review.recommend.grade == 5}">
									<c:set var="fiveStar" value="${fiveStar +1}" />
								</c:when>
								<c:when test="${review.recommend.grade == 4}">
									<c:set var="fourStar" value="${fourStar +1}" />
								</c:when>
								<c:when test="${review.recommend.grade == 3}">
									<c:set var="threeStar" value="${threeStar +1}" />
								</c:when>
								<c:when test="${review.recommend.grade == 2}">
									<c:set var="twoStar" value="${twoStar +1}" />
								</c:when>
								<c:when test="${review.recommend.grade == 1}">
									<c:set var="oneStar" value="${oneStar +1}" />
								</c:when>
							</c:choose>
						</c:forEach>

						<div class="progressSingle" style="line-height: 0px;">
							<span style="color: gold; font-size: 18px;">★★★★★</span>&nbsp; <span
								style="color: gray; font-size: 10px;"> (${fiveStar }명)</span>
							<div class="progress">
								<div class="progress-bar progress-bar-primary"
									role="progressbar" aria-valuenow="40" aria-valuemin="0"
									aria-valuemax="100"
									style="width: ${fiveStar / cosmetic.reviews.size() * 100 }%"></div>
							</div>
						</div>

						<div class="progressSingle" style="line-height: 0px;">
							<span style="color: gold; font-size: 18px;">★★★★</span>&nbsp; <span
								style="color: white; font-size: 18px;">★</span> <span
								style="color: gray; font-size: 10px;">(${fourStar }명)</span>
							<div class="progress">

								<div class="progress-bar progress-bar-primary"
									role="progressbar" aria-valuenow="40" aria-valuemin="0"
									aria-valuemax="100"
									style="width: ${fourStar / cosmetic.reviews.size() * 100 }%"></div>
							</div>
						</div>

						<div class="progressSingle" style="line-height: 0px;">
							<span style="color: gold; font-size: 18px;">★★★</span>&nbsp; <span
								style="color: white; font-size: 18px;">★★</span> <span
								style="color: gray; font-size: 10px;"> (${threeStar }명)</span>
							<div class="progress">
								<div class="progress-bar progress-bar-primary"
									role="progressbar" aria-valuenow="40" aria-valuemin="0"
									aria-valuemax="100"
									style="width: ${threeStar / cosmetic.reviews.size() * 100 }%"></div>
							</div>
						</div>

						<div class="progressSingle" style="line-height: 0px;">
							<span style="color: gold; font-size: 18px;">★★</span>&nbsp; <span
								style="color: white; font-size: 18px;">★★★</span> <span
								style="color: gray; font-size: 10px;"> (${twoStar }명)</span>
							<div class="progress">
								<div class="progress-bar progress-bar-primary"
									role="progressbar" aria-valuenow="40" aria-valuemin="0"
									aria-valuemax="100"
									style="width: ${twoStar / cosmetic.reviews.size() * 100 }%"></div>
							</div>
						</div>

						<div class="progressSingle" style="line-height: 0px;">
							<span style="color: gold; font-size: 18px;">★</span>&nbsp; <span
								style="color: white; font-size: 18px;">★★★★</span> <span
								style="color: gray; font-size: 10px;"> (${oneStar }명)</span>
							<div class="progress">
								<div class="progress-bar progress-bar-primary"
									role="progressbar" aria-valuenow="40" aria-valuemin="0"
									aria-valuemax="100"
									style="width: ${oneStar / cosmetic.reviews.size() * 100 }%"></div>

							</div>
						</div>


						<br> <span class="list-inline roundBtn"> <span><a
								href="javascript:void(0)"
								class="btn btn-common btn-round btn-gray"
								style="font-size: 13px; padding: 15px;">★ My Pouch</a></span>&nbsp;&nbsp;
							<span><div
									value="http://shopping.naver.com/search/all.nhn?where=all&frm=NVSCTAB&query=${cosmetic.cosmeticName}"
									class="btn btn-common btn-round btn-gray buttons"
									style="font-size: 13px; padding: 15px;">
									<i class="fa fa-credit-card" aria-hidden="true"></i> 가격정보
								</div> </span>&nbsp;&nbsp; <span><a href="javascript:void(0)"
								class="btn btn-common btn-round btn-dark"
								style="font-size: 13px; padding: 15px;"> <i
									class="fa fa-bell" aria-hidden="true"></i> 수정요청
							</a></span> &nbsp;&nbsp;


						</span>








						<!--
            <div class="alert alert-success alert-common" role="alert">You succesfully read this message</div>
            <div class="alert alert-info alert-common" role="alert"> 민감성 </div>
            <div class="alert alert-warning alert-common" role="alert"> Better check yourself.You are not looking too good</div>
            <div class="alert alert-danger alert-common" role="alert">Better check yourself.You are not looking too good</div>
-->











					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-xs-12">
					<div class="tabCommon tabOne singleTab">
						<ul class="nav nav-tabs">
							<li class="active"><a data-toggle="tab" href="#details">Ingredients</a></li>
							<li><a data-toggle="tab" href="#reviews">Reviews (2)</a></li>
						</ul>

						<div class="tab-content patternbg">
							<div id="details" class="tab-pane fade in active">


								<div class="row">
									<div class="col-md-6 col-xs-12">
										<div class="collapse-style1">
											<div
												class="collapse navbar-collapse navbar-ex1-collapse content-collapse"
												style="width: 800px;">
												<ul class="nav navbar-nav collapse-nav">
													<li><a class="collapsed" data-target="#collapse1"
														aria-expanded="true"> 성분 구성 <span id="allCount"
															style="color: black; font-size: 10px;"> </span>
													</a>
														<div id="collapse1" class="collapse collapseItem in">
															<div class="collapse-inner">
																<div class="container">
																	<br>
																	<div class="progress"
																		style="width: 630px; height: 25px; margin-left: 10px;">
																		<div id="infoProgressbar"
																			class="progress-bar progress-bar-info"
																			role="progressbar" style="width: 80%">
																			<span id="componentCount"></span>

																		</div>
																		<div id="warningProgressbar"
																			class="progress-bar progress-bar-warning"
																			role="progressbar" style="width: 10%">
																			<span id="allergyCount"></span>

																		</div>
																		<div id="dangerProgressbar"
																			class="progress-bar progress-bar-danger"
																			role="progressbar" style="width: 10%">
																			<span id="twentyCount"></span>
																		</div>
																	</div>
																	<br>




																	<div class="alert alert-warning alert-dismissible"
																		role="alert"
																		style="width: 650px; background-color: #FFFFFF;">
																		<img src="${ctx}/resources/img/flower.png"
																			style="width: 30px;"> <span
																			style="font-size: 12px; color: orangeRed; font-weight: bold;">
																			전성분 </span><br> <span
																			style="font-size: 12px; color: deepPink; font-weight: bold;">
																			─────────────────────────────────────────────────── </span>
																		<span id="phrase"
																			style="font-size: 12px; color: lightSeaGreen;">${cosmetic.ingredients}</span>
																		<span id="phrase2" style="display: none;">${cosmetic.ingredients}</span>

																	</div>


																	<div class="alert alert-warning alert-dismissible"
																		role="alert"
																		style="width: 650px; background-color: #FFFFFF;">
																		<img src="${ctx}/resources/img/allergy.jpg"
																			style="width: 30px;"> <span
																			style="font-size: 12px; color: orangeRed; font-weight: bold;">
																			알레르기 주의성분 </span><br> <span
																			style="font-size: 12px; color: deepPink; font-weight: bold;">
																			─────────────────────────────────────────────────── </span>
																		<div id="allergyCaution"
																			style="font-size: 12px; color: orange;"></div>



																	</div>



																	<div class="alert alert-warning alert-dismissible"
																		role="alert"
																		style="width: 650px; background-color: #FFFFFF;">
																		<img src="${ctx}/resources/img/20danger.png"
																			style="width: 30px;"> <span
																			style="font-size: 12px; color: orangeRed; font-weight: bold;">
																			20가지 주의성분 </span><br> <span
																			style="font-size: 12px; color: deepPink; font-weight: bold;">
																			─────────────────────────────────────────────────── </span>
																		<div id="twentyCaution"
																			style="font-size: 12px; color: crimson;"></div>




																	</div>


																</div>
															</div>
														</div></li>




												</ul>
											</div>
										</div>
									</div>

									<div class="pull-right">
										<div class="col-md-6 col-xs-12">
											<div class="collapse-style1">
												<div
													class="collapse navbar-collapse navbar-ex1-collapse content-collapse"
													style="width: 230px;">
													<ul class="nav navbar-nav collapse-nav">

														<li><a class="collapsed" href="javascript:;"
															data-toggle="collapse" data-target="#collapse2"
															style="height: 80px;"> <img
																src="${ctx}/resources/img/allergy.jpg"
																style="width: 20px;"> <span
																style="font-size: 13px; color: indianRed;">알레르기
																	주의성분</span><i class="fa fa-plus"></i> <br> <span
																style="font-size: 10px; color: tomato;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																	식약처 고시 "화장품 알러지 성분"</span>
														</a>


															<div id="collapse2" class="collapse collapseItem">
																<div class="collapse-inner">
																	<span style="font-size: 11px; color: darkGreen;">
																		───────────────── <span
																		style="font-size: 11px; color: olive;"> · 아밀신남알
																			<br> · 벤질알코올 <br> · 신나밀알코올 · 시트랄 <br>
																			· 유제놀 <br> · 하이드록시시트로넬알 <br> · 이소유제놀 <br>
																			· 아밀신나밀알코올 <br> · 벤질살리실레이트 <br> · 신남알 <br>
																			· 쿠마린 <br> · 제라니올 <br> ·
																			하이드록시이소헥실3-사이클로헥센카복스알데하이드 <br> · 아니스에탄올 <br>
																			· 벤질신나메이트 <br> · 파네솔 <br> · 부틸페닐메칠프로피오날 <br>
																			· 리날룰 <br> · 벤질베조에이트 <br> · 시트로넬롤 <br>
																			· 헥실신남알 <br> · 리모넨 <br> · 메칠2-옥티노에이트 <br>
																			· 알파-이소메칠이오논 <br> · 참나무이끼추출물 <br> · 나무이끼추출물
																	</span>
																	</span>

																</div>
															</div></li>
														<li><a class="collapsed" href="javascript:;"
															data-toggle="collapse" data-target="#collapse3"
															style="height: 80px;"> <img
																src="${ctx}/resources/img/20danger.png"
																style="width: 20px;"> <span
																style="font-size: 13px; color: indianRed;">20가지
																	주의성분</span><i class="fa fa-plus"></i> <br> <span
																style="font-size: 10px; color: tomato;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																	도서 "대한민국 화장품의 비밀"</span>
														</a>

															<div id="collapse3" class="collapse collapseItem">
																<div class="collapse-inner">
																	<span style="font-size: 11px; color: darkGreen;">
																		───────────────── <span
																		style="font-size: 11px; color: olive;"> ·
																			디부틸히드록시톨루엔 <br> · 미네랄오일<br> · 부틸하이드록시아니솔<br>
																			· 소듐라우릴설페이트/소듐라우레스설페이트<br> · 소르빈산/소르빅애씨드<br>
																			· 아보벤젠/부틸메톡시디벤조일메탄<br> · 옥시벤존/벤조페논-3<br> ·
																			이미다졸리디닐우레아/디아졸리디닐우레아/디엠디엠하이단토인<br> · 이소프로필메틸페놀<br>
																			· 이소프로필알코올/프로필알코올<br> · 인공향료<br> · 티몰<br>
																			· 트리에탄올아민<br> · 트리이소프로파놀아민<br> · 트리클로산<br>
																			· 파라벤<br> · 페녹시에탄올<br> · 폴리에틸렌글라이콜<br>
																			· 합성착색료<br> · 호르몬류<br>
																	</span>

																	</span>
																</div>
															</div></li>


													</ul>
												</div>
											</div>
										</div>
									</div>

								</div>







								<!--   <ul class="list-inline">
                    <li><i class="fa fa-check" aria-hidden="true"></i>Vestibulum iaculis quam.</li>
                    <li><i class="fa fa-check" aria-hidden="true"></i>Vestibulum iaculis quam.</li>
                    <li><i class="fa fa-check" aria-hidden="true"></i>Quam ac libero volutpat placerat.</li>
                    <li><i class="fa fa-check" aria-hidden="true"></i>Quam ac libero volutpat placerat.</li>
                  </ul>
-->
							</div>
							<div id="reviews" class="tab-pane fade">
								<div class="blogCommnets">
									<div class="media">
										<a class="media-left" href="#"> <img
											style="border-radius: 100%" class="media-object"
											src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxKV8kmFD0djWTAodhIRDF6tyUTp6atE3ta4PYDHbKxgVbxLxD"
											alt="Image">
										</a>

										<div class="media-body">
											<!--                        <span class="media-heading" > 보습력 짱</span>-->
											<span style="color: black;"> </span> <span
												style="color: white; font-size: 20px; background-color: orangeRed;">★★★★☆
											</span><br> <span
												style="font-size: 13px; font-wieght: bold; color: dimGray; font-weight: bold;">
												dorothy</span> <span
												style="font-size: 13px; font-wieght: bold; color: black;">
												/ </span> <span
												style="color: mediumVioletRed; font-size: 12px; font-weight: bold;"><i
												class="fa fa-calendar" aria-hidden="true"></i> 22 September,
												2016</span><br> <br>
											<div
												style="font-size: 12.5px; color: darkCyan; width: 90%; font-weight: bold;">봄웜이나
												가을뮤트 예상중인데 색이 너무 안어울려요 바르는순간 5년 늙어버림 ㅎ 근데 적당히 촉촉하고 적당히 오래가요
												재구매 의사는 없지만 유명템 써본거로 만족.. 가끔 성숙한 느낌나게 시크해보이고 싶을때 가아끔씩 발라요~
												잘어울리는 분들한텐 좋을거같아요 가을트루나 가을딥??</div>
											<br> <img
												src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxKV8kmFD0djWTAodhIRDF6tyUTp6atE3ta4PYDHbKxgVbxLxD"
												style="width: 200px;"><br> <br>
											<!--      <div style="font-size:12.5px; color:teal; width: 90%; background-color:white;">
                            리뷰
                          </div>-->


											<div class="panel panel-default recentBlogPosts">
												<!-- <div class="panel-heading">  comment  </div>-->
												<div class="panel-heading">
													<span
														style="font-size: 18px; margin-top: 10px; float: left; width: 15%; font-weight: bold;">
														comment </span>
													<form action="" method="POST" role="form">
														<div class="input-group" style="float: left; width: 60%;">
															<input type="text" class="form-control"
																placeholder="댓글을 입력하세요"
																aria-describedby="basic-addon221">
														</div>
														&nbsp;&nbsp;
														<button type="submit" class="btn btn-primary"
															style="font-size: 12px; width: 15%;">등록</button>
													</form>

												</div>

												<div class="panel-body">
													<div class="media">
														<a class="media-left"> <img
															style="border-radius: 100%; width: 50px;"
															class="media-object"
															src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxKV8kmFD0djWTAodhIRDF6tyUTp6atE3ta4PYDHbKxgVbxLxD"
															alt="Image">
														</a>
														<div class="media-body">
															<span style="color: black;"> </span> <span
																style="font-size: 13px; font-wieght: bold; color: dimGray; font-weight: bold;">
																dorothy</span> <span
																style="font-size: 13px; font-wieght: bold; color: black;">
																/ </span> <span
																style="color: mediumVioletRed; font-size: 12px; font-weight: bold;"><i
																class="fa fa-calendar" aria-hidden="true"></i> 22
																September, 2016</span><br> <span
																style="font-size: 13px; font-wieght: bold; color: black;">
																아 별로네요 </span>
														</div>
													</div>

													<div class="media">
														<a class="media-left"> <img
															style="border-radius: 100%; width: 50px;"
															class="media-object"
															src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxKV8kmFD0djWTAodhIRDF6tyUTp6atE3ta4PYDHbKxgVbxLxD"
															alt="Image">
														</a>
														<div class="media-body">
															<span style="color: black;"> </span> <span
																style="font-size: 13px; font-wieght: bold; color: dimGray; font-weight: bold;">
																dorothy</span> <span
																style="font-size: 13px; font-wieght: bold; color: black;">
																/ </span> <span
																style="color: mediumVioletRed; font-size: 12px; font-weight: bold;"><i
																class="fa fa-calendar" aria-hidden="true"></i> 22
																September, 2016</span><br> <span
																style="font-size: 13px; font-wieght: bold; color: black;">
																아 별로네요 </span>
														</div>
													</div>



												</div>
											</div>


										</div>
									</div>
								</div>

							</div>
						</div>


					</div>
				</div>
			</div>
		</div>
		<div id="mmodal-container">
			<div class="mmodal-background">
				<div class="mmodal">
					<iframe src="" width="900" height="1000"></iframe>

				</div>
			</div>
		</div>



		<script>
			/* 알레르기 주의성분 */

			var allergyColor = "";
			var allCount = 0;
			var allergyCount = 0;

			var allComponent = document.getElementById('phrase'), allergyComponent = allComponent.innerHTML
					.split('· ')
					.map(
							function(el) {
								allCount++;
								allergyColor += '<span class="char-' + el + '">'
										+ el + '</span>';
								allergyColor += ' ';
								if (el === '아밀신남알' || el === '벤질알코올'
										|| el === '신나밀알코올' || el === '시트랄'
										|| el === '유제놀' || el === '하이드록시시트로넬알'
										|| el === '이소유제놀' || el === '아밀신나밀알코올'
										|| el === '벤질살리실레이트' || el === '신남알'
										|| el === '쿠마린' || el === '제라니올'
										|| el === '하이드록시이소헥실3-사이클로헥센카복스알데하이드'
										|| el === '아니스에탄올' || el === '벤질신나메이트'
										|| el === '파네솔' || el === '부틸페닐메칠프로피오날'
										|| el === '리날룰' || el === '벤질베조에이트'
										|| el === '시트로넬롤' || el === '헥실신남알'
										|| el === '리모넨' || el === '메칠2-옥티노에이트'
										|| el === '알파-이소메칠이오논'
										|| el === '참나무이끼추출물'
										|| el === '나무이끼추출물') {
									allergyCount++;
									return el;

								}

							}).join('  ');

			allComponent.innerHTML = allergyColor;

			var allergyCautionDiv = document.getElementById('allergyCaution');
			allergyCautionDiv.innerHTML = allergyComponent;

			var allCountSpan = document.getElementById('allCount');
			allCountSpan.innerHTML = "(총" + allCount + "개)";

			var allergyCountSpan = document.getElementById('allergyCount');
			allergyCountSpan.innerHTML = allergyCount + "개";

			/* 20가지 주의성분 */

			var twentyColor = "";
			var twentyCount = 0;

			var allComponent = document.getElementById('phrase2'), twentyComponent = allComponent.innerHTML
					.split('· ').map(
							function(el) {
								twentyColor += '<span class="char-' + el + '">'
										+ el + '</span>';
								twentyColor += ' ';
								if (el === '디부틸히드록시톨루엔' || el === '미네랄오일'
										|| el === '소듐라우릴설페이트'
										|| el === '소듐라우레스설페이트' || el === '소르빈산'
										|| el === '소르빅애씨드' || el === '아보벤젠'
										|| el === '부틸메톡시디벤조일메탄'
										|| el === '옥시벤존' || el === '벤조페논-3'
										|| el === '이미다졸리디닐우레아'
										|| el === '디아졸리디닐우레아'
										|| el === '디엠디엠하이단토인'
										|| el === '이소프로필메틸페놀'
										|| el === '이소프로필알코올' || el === '프로필알코올'
										|| el === '인공향료' || el === '티몰'
										|| el === '트리에탄올아민'
										|| el === '트리이소프로파놀아민'
										|| el === '트리클로산' || el === '파라벤'
										|| el === '페녹시에탄올'
										|| el === '폴리에틸렌글라이콜' || el === '합성착색료'
										|| el === '호르몬류' || el === '향료') {

									twentyCount++;
									return el;
								}

							}).join('  ');

			allComponent.innerHTML = twentyColor;

			var twentyCautionDiv = document.getElementById('twentyCaution');
			twentyCautionDiv.innerHTML = twentyComponent;

			var twentyCountSpan = document.getElementById('twentyCount');
			twentyCountSpan.innerHTML = twentyCount + "개";

			var componentCount = allCount - allergyCount - twentyCount;
			var componentCountSpan = document.getElementById('componentCount');
			componentCountSpan.innerHTML = componentCount + "개";

			var infowidth = componentCount / allCount * 100 + "%";
			var warningwidth = allergyCount / allCount * 100 + "%";
			var dangerwidth = twentyCount / allCount * 100 + "%";

			$(function() {
				var infoProgressbar = $('#infoProgressbar');
				var warningProgressbar = $('#warningProgressbar');
				var dangerProgressbar = $('#dangerProgressbar');

				infoProgressbar.css('width', infowidth);
				warningProgressbar.css('width', warningwidth);
				dangerProgressbar.css('width', dangerwidth);
			});
		</script>

		<script>
			$('.buttons').click(function() {
				var buttonId = 'one';
				var href = $(this).attr('value');
				$('#mmodal-container').removeAttr('class').addClass(buttonId);
				$('body').addClass('mmodal-active');
				$("iframe").attr("src", href);
				$(".input-group").hide();

			})

			$('#mmodal-container').click(function() {
				$(this).addClass('out');
				$('body').removeClass('mmodal-active');
				$(".input-group").show();
			});
		</script>
</body>

</html>
