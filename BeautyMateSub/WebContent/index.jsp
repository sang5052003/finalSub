<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="common/common.jspf"%>
<!-- CUSTOM CSS -->
<link href="${ctx}/resources/css/style.css" rel="stylesheet">

<!-- SITE TITTLE -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Angel Beauty</title>

<!-- FAVICON -->
<link href="img/favicon.png" rel="shortcut icon">


<style>
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
</style>

</head>

<body class="body-wrapper static">
	<div class="se-pre-con"></div>
	<div class="main-wrapper">
	
		<!-- HEADER -->
		<%@ include file="common/header.jspf"%>


		<!-- MAIN SLIDER -->
		<section class="main-slider" data-loop="true" data-autoplay="true"
			data-interval="7000">
			<div class="inner">

				<!-- Slide One -->
				<div class="slide slideResize slide1"
					style="background-image: url(${ctx}/resources/img/home/1.jpg);">
					<div class="container">
						<div class="slide-inner1 common-inner">
							<span class="h1 from-bottom">Beauty Mate</span><br> <span
								class="h4 from-bottom">나에게 맞는 새로운 화장품은 언제나 환영이야</span><br>
							<a href="#"
								class="btn btn-primary first-btn waves-effect waves-light scale-up">화장품
								랭킹 보기</a>
						</div>
					</div>
				</div>



				<!-- Slide Three -->
				<div class="slide slideResize slide2"
					style="background-image: url(${ctx}/resources/img/home/2.jpg);">
					<div class="container">
						<div class="common-inner slide-inner3">
							<img src="${ctx}/resources/img/favicon.png" alt="Logo Icon" class="img-responsive">
							<span class="h1 from-bottom">Beauty Mate</span><br> <span
								class="h4 from-bottom">당신에게 맞는 화장품을 찾아보세요!</span><br> <a
								target="_blank" href="#"
								class="btn btn-primary first-btn waves-effect waves-light scale-up">내
								피부타입 분석하기</a>
						</div>
					</div>
				</div>



			</div>
		</section>

		<!-- ABOUT SECTION -->
		<section class="container-fluid clearfix aboutSection patternbg">
			<div class="aboutInner">
				<div class="sepcialContainer">
					<div class="row">
						<div class="col-sm-6 col-xs-12 rightPadding">
							<div class="imagebox ">
								<img
									src="https://theknockturnal.com/wp-content/uploads/2017/05/IMG_5402-1.jpg"
									alt="Image About" class="img-responsive">
							</div>
						</div>
						<div class="col-sm-6 col-xs-12">
							<div class="aboutInfo">
								<h2>BEAUTY MATE</h2>
								<h3>나보다 나를 더 잘 아는 화장품 친구</h3>
								<p>뷰티 메이트는 바우만 16가지의 피부타입으로 세밀한 피부타입을 검사할 수 있습니다. 그동안의 화장품을
									토대로 자신에게 맞는 성분을 알아보세요. 당신에게 가장 적절한 화장품을 추천해드립니다. 그동안의 화장품을 토대로
									자신에게 맞는 성분을 알아보세요. 지금 바로 시작하세요요요요요요요</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>


		<!-- VARIETY SECTION -->
		<section class="clearfix varietySection">
			<div class="container">
				<div class="secotionTitle">
					<h2>
						<span>Discover</span>variety of spa
					</h2>
				</div>
				<div class="row">
					<div class="col-xs-12">
						<div class="tabbable tabTop">
							<ul class="nav nav-tabs">
								<li class="active"><a href="#hair" data-toggle="tab"><span>Hair</span></a></li>
								<li><a href="#makeup" data-toggle="tab"><span>Makeup</span></a></li>
								<li><a href="#facial" data-toggle="tab"><span>Facial</span></a></li>
								<li><a href="#massage" data-toggle="tab"><span>Massage</span></a></li>
								<li><a href="#nail" data-toggle="tab"><span>Nail</span></a></li>
								<li><a href="#waxing" data-toggle="tab"><span>Waxing</span></a></li>
							</ul>
							<div class="tab-content">
								<div class="tab-pane active" id="hair">
									<div class="tabbable tabs-left row">
										<ul class="nav nav-tabs col-sm-4 col-xs-12">
											<li class="active"><a href="#braidstwist"
												data-toggle="tab">Braids & Twist <span>$25</span></a></li>
											<li><a href="#haircolor" data-toggle="tab">Hair
													Color <span>$40</span>
											</a></li>
											<li><a href="#hairextension" data-toggle="tab">Hair
													Extension<span>$19</span>
											</a></li>
											<li><a href="#correctivecolor" data-toggle="tab">Corrective
													Color<span>$13</span>
											</a></li>
											<li><a href="#haircut" data-toggle="tab">Hair Cut<span>$48</span></a></li>
											<li><a href="#partialfoil" data-toggle="tab">Partial
													Foil<span>$10</span>
											</a></li>
											<li><a href="#extensionpertrack" data-toggle="tab">Extension
													Per Track<span>$40</span>
											</a></li>
										</ul>
										<div class="tab-content col-sm-8 col-xs-12">
											<div class="tab-pane active" id="braidstwist">
												<div class="varietyContent">
													<img src="http://placehold.it/750x400" alt="Image Variety"
														class="img-responsive">
													<h3>Braids & Twist</h3>
													<h4>$25.00 Per Head</h4>
													<p>Lorem ipsum dolor sit amet, consectetur adipisicing
														elit, sed do eiusmod tempor incididunt ut labore et dolore
														magna aliqua. Ut enim ad minim veniam, quis nostrud
														exercitation ullamco laboris nisi ut aliquip ex ea
														commodo.</p>
													<a href="#" class="btn btn-primary first-btn"
														data-toggle="modal" data-target="#appoinmentModal">make
														An Appoinment</a>
												</div>
											</div>
											<div class="tab-pane" id="haircolor">
												<div class="varietyContent">
													<img src="http://placehold.it/750x400" alt="Image Variety"
														class="img-responsive">
													<h3>Hair Color</h3>
													<h4>$40.00 Per Head</h4>
													<p>Consectetur adipisicing elit, sed do eiusmod tempor
														incididunt ut labore et dolore magna aliqua. Ut enim ad
														minim veniam, quis nostrud exercitation ullamco laboris
														nisi ut aliquip ex ea commodo. Consectetur adipisicing
														elit, sed do eiusmod tempor incididunt ut labore et dolore
														magna aliqua. Ut enim ad minim veniam, quis nostrud
														exercitation ullamco laboris nisi ut aliquip ex ea
														commodo.</p>
													<a href="#" class="btn btn-primary first-btn">make An
														Appoinment</a>
												</div>
											</div>
											<div class="tab-pane" id="hairextension">
												<div class="varietyContent">
													<img src="http://placehold.it/750x400" alt="Image Variety"
														class="img-responsive">
													<h3>Hair Extension</h3>
													<h4>$19.00 Per Head</h4>
													<p>Amet, consectetur adipisicing elit, sed do eiusmod
														tempor incididunt ut labore et dolore magna aliqua. Ut
														enim ad minim veniam, quis nostrud exercitation ullamco
														laboris nisi ut aliquip ex ea commodo. Lorem ipsum dolor
														sit amet, consectetur adipisicing elit, sed do eiusmod
														tempor incididunt ut labore et dolore magna aliqua. Ut
														enim ad minim veniam, quis nostrud exercitation ullamco
														laboris nisi ut aliquip ex ea commodo.</p>
													<a href="#" class="btn btn-primary first-btn">make An
														Appoinment</a>
												</div>
											</div>
											<div class="tab-pane" id="correctivecolor">
												<div class="varietyContent">
													<img src="http://placehold.it/750x400" alt="Image Variety"
														class="img-responsive">
													<h3>Corrective Color</h3>
													<h4>$13.00 Per Head</h4>
													<p>Ipsum dolor sit amet, consectetur adipisicing elit,
														sed do eiusmod tempor incididunt ut labore et dolore magna
														aliqua. Ut enim ad minim veniam, quis nostrud exercitation
														ullamco laboris nisi ut aliquip ex ea commodo. Lorem ipsum
														dolor sit amet, consectetur adipisicing elit, sed do
														eiusmod tempor incididunt ut labore et dolore magna
														aliqua. Ut enim ad minim veniam, quis nostrud exercitation
														ullamco laboris nisi ut aliquip ex ea commodo.</p>
													<a href="#" class="btn btn-primary first-btn">make An
														Appoinment</a>
												</div>
											</div>
											<div class="tab-pane" id="haircut">
												<div class="varietyContent">
													<img src="http://placehold.it/750x400" alt="Image Variety"
														class="img-responsive">
													<h3>Hair Cut</h3>
													<h4>$48.00 Per Head</h4>
													<p>Dolore magna aliqua. Ut enim ad minim veniam, quis
														nostrud exercitation ullamco laboris nisi ut aliquip ex ea
														commodo. Lorem ipsum dolor sit amet, consectetur
														adipisicing elit, sed do eiusmod tempor incididunt ut
														labore et dolore magna aliqua. Ut enim ad minim veniam,
														quis nostrud exercitation ullamco laboris nisi ut aliquip
														ex ea commodo.</p>
													<a href="#" class="btn btn-primary first-btn">make An
														Appoinment</a>
												</div>
											</div>
											<div class="tab-pane" id="partialfoil">
												<div class="varietyContent">
													<img src="http://placehold.it/750x400" alt="Image Variety"
														class="img-responsive">
													<h3>Partial Foil</h3>
													<h4>$10.00 Per Head</h4>
													<p>Sed do eiusmod tempor incididunt ut labore et dolore
														magna aliqua. Ut enim ad minim veniam, quis nostrud
														exercitation ullamco laboris nisi ut aliquip ex ea commodo
														consequat. Duis aute irure dolor in reprehenderit in
														voluptate velit esse cillum dolore eu fugiat nulla
														pariatur. Excepteur sint occaecat cupidatat non proident,
														sunt in culpa qui officia deserunt mollit anim id est
														laborum.</p>
													<a href="#" class="btn btn-primary first-btn">make An
														Appoinment</a>
												</div>
											</div>
											<div class="tab-pane" id="extensionpertrack">
												<div class="varietyContent">
													<img src="http://placehold.it/750x400" alt="Image Variety"
														class="img-responsive">
													<h3>Extension Per Track</h3>
													<h4>$40.00 Per Head</h4>
													<p>Voluptate velit esse cillum dolore eu fugiat nulla
														pariatur. Excepteur sint occaecat cupidatat non proident,
														sunt in culpa qui officia deserunt mollit anim id est
														laborum. Lorem ipsum dolor sit amet, consectetur
														adipisicing elit, sed do eiusmod tempor incididunt ut
														labore et dolore magna aliqua. Ut enim ad minim veniam,
														quis nostrud exercitation ullamco laboris nisi ut aliquip
														ex ea commodo consequat. Duis aute irure dolor in
														reprehenderit in voluptate velit esse cillum dolore eu
														fugiat nulla pariatur. Excepteur sint occaecat cupidatat
														non proident, sunt in culpa qui officia deserunt mollit
														anim id est laborum.</p>
													<a href="#" class="btn btn-primary first-btn">make An
														Appoinment</a>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="tab-pane" id="makeup">
									<div class="tabbable tabs-left row">
										<ul class="nav nav-tabs col-sm-4 col-xs-12">
											<li class="active"><a href="#braidstwist1"
												data-toggle="tab">Braids & Twist <span>$25</span></a></li>
											<li><a href="#haircolor1" data-toggle="tab">Hair
													Color <span>$40</span>
											</a></li>
											<li><a href="#hairextension1" data-toggle="tab">Hair
													Extension<span>$19</span>
											</a></li>
											<li><a href="#correctivecolor1" data-toggle="tab">Corrective
													Color<span>$13</span>
											</a></li>
											<li><a href="#haircut1" data-toggle="tab">Hair Cut<span>$48</span></a></li>
											<li><a href="#partialfoil1" data-toggle="tab">Partial
													Foil<span>$10</span>
											</a></li>
											<li><a href="#extensionpertrack1" data-toggle="tab">Extension
													Per Track<span>$40</span>
											</a></li>
										</ul>
										<div class="tab-content col-sm-8 col-xs-12">
											<div class="tab-pane active" id="braidstwist1">
												<div class="varietyContent">
													<img src="http://placehold.it/750x400" alt="Image Variety"
														class="img-responsive">
													<h3>Braids & Twist</h3>
													<h4>$25.00 Per Head</h4>
													<p>Lorem ipsum dolor sit amet, consectetur adipisicing
														elit, sed do eiusmod tempor incididunt ut labore et dolore
														magna aliqua. Ut enim ad minim veniam, quis nostrud
														exercitation ullamco laboris nisi ut aliquip ex ea
														commodo.</p>
													<a href="#" class="btn btn-primary first-btn">make An
														Appoinment</a>
												</div>
											</div>
											<div class="tab-pane" id="haircolor1">
												<div class="varietyContent">
													<img src="http://placehold.it/750x400" alt="Image Variety"
														class="img-responsive">
													<h3>Hair Color</h3>
													<h4>$40.00 Per Head</h4>
													<p>Dolore magna aliqua. Ut enim ad minim veniam, quis
														nostrud exercitation ullamco laboris nisi ut aliquip ex ea
														commodo. Lorem ipsum dolor sit amet, consectetur
														adipisicing elit, sed do eiusmod tempor incididunt ut
														labore et dolore magna aliqua. Ut enim ad minim veniam,
														quis nostrud exercitation ullamco laboris nisi ut aliquip
														ex ea commodo consequat. Duis aute irure dolor in
														reprehenderit in voluptate velit esse cillum dolore eu
														fugiat nulla pariatur. Excepteur sint occaecat cupidatat
														non proident, sunt in culpa qui officia deserunt mollit
														anim id est laborum.</p>
													<a href="#" class="btn btn-primary first-btn">make An
														Appoinment</a>
												</div>
											</div>
											<div class="tab-pane" id="hairextension1">
												<div class="varietyContent">
													<img src="http://placehold.it/750x400" alt="Image Variety"
														class="img-responsive">
													<h3>Hair Extension</h3>
													<h4>$19.00 Per Head</h4>
													<p>Lorem ipsum dolor sit amet, consectetur adipisicing
														elit, sed do eiusmod tempor incididunt ut labore et dolore
														magna aliqua. Ut enim ad minim veniam, quis nostrud
														exercitation ullamco laboris nisi ut aliquip ex ea
														commodo. Lorem ipsum dolor sit amet, consectetur
														adipisicing elit, sed do eiusmod tempor incididunt ut
														labore et dolore magna aliqua. Ut enim ad minim veniam,
														quis nostrud exercitation ullamco laboris nisi ut aliquip
														ex ea commodo.</p>
													<a href="#" class="btn btn-primary first-btn">make An
														Appoinment</a>
												</div>
											</div>
											<div class="tab-pane" id="correctivecolor1">
												<div class="varietyContent">
													<img src="http://placehold.it/750x400" alt="Image Variety"
														class="img-responsive">
													<h3>Corrective Color</h3>
													<h4>$13.00 Per Head</h4>
													<p>Ut labore et dolore magna aliqua. Ut enim ad minim
														veniam, quis nostrud exercitation ullamco laboris nisi ut
														aliquip ex ea commodo. Lorem ipsum dolor sit amet,
														consectetur adipisicing elit, sed do eiusmod tempor
														incididunt ut labore et dolore magna aliqua. Ut enim ad
														minim veniam, quis nostrud exercitation ullamco laboris
														nisi ut aliquip ex ea commodo consequat. Duis aute irure
														dolor in reprehenderit in.</p>
													<a href="#" class="btn btn-primary first-btn">make An
														Appoinment</a>
												</div>
											</div>
											<div class="tab-pane" id="haircut1">
												<div class="varietyContent">
													<img src="http://placehold.it/750x400" alt="Image Variety"
														class="img-responsive">
													<h3>Hair Cut</h3>
													<h4>$48.00 Per Head</h4>
													<p>Et dolore magna aliqua. Ut enim ad minim veniam,
														quis nostrud exercitation ullamco laboris nisi ut aliquip
														ex ea commodo. Lorem ipsum dolor sit amet, consectetur
														adipisicing elit, sed do eiusmod tempor incididunt ut
														labore et dolore magna aliqua. Ut enim ad minim veniam,
														quis nostrud exercitation ullamco laboris nisi ut aliquip
														ex ea commodo.</p>
													<a href="#" class="btn btn-primary first-btn">make An
														Appoinment</a>
												</div>
											</div>
											<div class="tab-pane" id="partialfoil1">
												<div class="varietyContent">
													<img src="http://placehold.it/750x400" alt="Image Variety"
														class="img-responsive">
													<h3>Partial Foil</h3>
													<h4>$10.00 Per Head</h4>
													<p>Lorem ipsum dolor sit amet, consectetur adipisicing
														elit, sed do eiusmod tempor incididunt ut labore et dolore
														magna aliqua. Ut enim ad minim veniam, quis nostrud
														exercitation ullamco laboris nisi ut aliquip ex ea
														commodo. Lorem ipsum dolor sit amet, consectetur
														adipisicing elit, sed do eiusmod tempor incididunt ut
														labore et dolore magna aliqua. Ut enim ad minim veniam,
														quis nostrud exercitation ullamco laboris nisi ut aliquip
														ex ea commodo.</p>
													<a href="#" class="btn btn-primary first-btn">make An
														Appoinment</a>
												</div>
											</div>
											<div class="tab-pane" id="extensionpertrack1">
												<div class="varietyContent">
													<img src="http://placehold.it/750x400" alt="Image Variety"
														class="img-responsive">
													<h3>Extension Per Track</h3>
													<h4>$40.00 Per Head</h4>
													<p>Lorem ipsum dolor sit amet, consectetur adipisicing
														elit, sed do eiusmod tempor incididunt ut labore et dolore
														magna aliqua. Ut enim ad minim veniam, quis nostrud
														exercitation ullamco laboris nisi ut aliquip ex ea commodo
														consequat. Duis aute irure dolor in reprehenderit in
														voluptate velit esse cillum dolore eu fugiat nulla
														pariatur. Excepteur sint occaecat cupidatat non proident,
														sunt in culpa qui officia deserunt mollit anim id est
														laborum.</p>
													<a href="#" class="btn btn-primary first-btn">make An
														Appoinment</a>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="tab-pane" id="facial">
									<div class="tabbable tabs-left row">
										<ul class="nav nav-tabs col-sm-4 col-xs-12">
											<li class="active"><a href="#braidstwist1"
												data-toggle="tab">Braids & Twist <span>$25</span></a></li>
											<li><a href="#haircolor11" data-toggle="tab">Hair
													Color <span>$40</span>
											</a></li>
											<li><a href="#hairextension11" data-toggle="tab">Hair
													Extension<span>$19</span>
											</a></li>
											<li><a href="#correctivecolor11" data-toggle="tab">Corrective
													Color<span>$13</span>
											</a></li>
											<li><a href="#haircut11" data-toggle="tab">Hair Cut<span>$48</span></a></li>
											<li><a href="#partialfoil11" data-toggle="tab">Partial
													Foil<span>$10</span>
											</a></li>
											<li><a href="#extensionpertrack11" data-toggle="tab">Extension
													Per Track<span>$40</span>
											</a></li>
										</ul>
										<div class="tab-content col-sm-8 col-xs-12">
											<div class="tab-pane active" id="braidstwist1">
												<div class="varietyContent">
													<img src="http://placehold.it/750x400" alt="Image Variety"
														class="img-responsive">
													<h3>Braids & Twist</h3>
													<h4>$25.00 Per Head</h4>
													<p>Lorem ipsum dolor sit amet, consectetur adipisicing
														elit, sed do eiusmod tempor incididunt ut labore et dolore
														magna aliqua. Ut enim ad minim veniam, quis nostrud
														exercitation ullamco laboris nisi ut aliquip ex ea
														commodo.</p>
													<a href="#" class="btn btn-primary first-btn">make An
														Appoinment</a>
												</div>
											</div>
											<div class="tab-pane" id="haircolor11">
												<div class="varietyContent">
													<img src="http://placehold.it/750x400" alt="Image Variety"
														class="img-responsive">
													<h3>Hair Color</h3>
													<h4>$40.00 Per Head</h4>
													<p>Magna aliqua. Ut enim ad minim veniam, quis nostrud
														exercitation ullamco laboris nisi ut aliquip ex ea
														commodo. Lorem ipsum dolor sit amet, consectetur
														adipisicing elit, sed do eiusmod tempor incididunt ut
														labore et dolore magna aliqua. Ut enim ad minim veniam,
														quis nostrud exercitation ullamco laboris nisi ut aliquip
														ex ea commodo.</p>
													<a href="#" class="btn btn-primary first-btn">make An
														Appoinment</a>
												</div>
											</div>
											<div class="tab-pane" id="hairextension11">
												<div class="varietyContent">
													<img src="http://placehold.it/750x400" alt="Image Variety"
														class="img-responsive">
													<h3>Hair Extension</h3>
													<h4>$19.00 Per Head</h4>
													<p>Ut enim ad minim veniam, quis nostrud exercitation
														ullamco laboris nisi ut aliquip ex ea commodo. Lorem ipsum
														dolor sit amet, consectetur adipisicing elit, sed do
														eiusmod tempor incididunt ut labore et dolore magna
														aliqua. Ut enim ad minim veniam, quis nostrud exercitation
														ullamco laboris nisi ut aliquip ex ea commodo.</p>
													<a href="#" class="btn btn-primary first-btn">make An
														Appoinment</a>
												</div>
											</div>
											<div class="tab-pane" id="correctivecolor11">
												<div class="varietyContent">
													<img src="http://placehold.it/750x400" alt="Image Variety"
														class="img-responsive">
													<h3>Hair Cut</h3>
													<h4>$48.00 Per Head</h4>
													<p>Nisi ut aliquip ex ea commodo. Lorem ipsum dolor sit
														amet, consectetur adipisicing elit, sed do eiusmod tempor
														incididunt ut labore et dolore magna aliqua. Ut enim ad
														minim veniam, quis nostrud exercitation ullamco laboris
														nisi ut aliquip ex ea commodo.</p>
													<a href="#" class="btn btn-primary first-btn">make An
														Appoinment</a>
												</div>
											</div>
											<div class="tab-pane" id="haircut11">
												<div class="varietyContent">
													<img src="http://placehold.it/750x400" alt="Image Variety"
														class="img-responsive">
													<h3>Hair Cut</h3>
													<h4>$48.00 Per Head</h4>
													<p>Consectetur adipisicing elit, sed do eiusmod tempor
														incididunt ut labore et dolore magna aliqua. Ut enim ad
														minim veniam, quis nostrud exercitation ullamco laboris
														nisi ut aliquip ex ea commodo. Lorem ipsum dolor sit amet,
														consectetur adipisicing elit, sed do eiusmod tempor
														incididunt ut labore et dolore magna aliqua. Ut enim ad
														minim veniam, quis nostrud exercitation ullamco laboris
														nisi ut aliquip ex ea commodo.</p>
													<a href="#" class="btn btn-primary first-btn">make An
														Appoinment</a>
												</div>
											</div>
											<div class="tab-pane" id="partialfoil11">
												<div class="varietyContent">
													<img src="http://placehold.it/750x400" alt="Image Variety"
														class="img-responsive">
													<h3>Partial Foil</h3>
													<h4>$10.00 Per Head</h4>
													<p>Dolore magna aliqua. Ut enim ad minim veniam, quis
														nostrud exercitation ullamco laboris nisi ut aliquip ex ea
														commodo. Lorem ipsum dolor sit amet, consectetur
														adipisicing elit, sed do eiusmod tempor incididunt ut
														labore et dolore magna aliqua. Ut enim ad minim veniam,
														quis nostrud exercitation ullamco laboris nisi ut aliquip
														ex ea commodo.</p>
													<a href="#" class="btn btn-primary first-btn">make An
														Appoinment</a>
												</div>
											</div>
											<div class="tab-pane" id="extensionpertrack11">
												<div class="varietyContent">
													<img src="http://placehold.it/750x400" alt="Image Variety"
														class="img-responsive">
													<h3>Extension Per Track</h3>
													<h4>$40.00 Per Head</h4>
													<p>Incididunt ut labore et dolore magna aliqua. Ut enim
														ad minim veniam, quis nostrud exercitation ullamco laboris
														nisi ut aliquip ex ea commodo. Lorem ipsum dolor sit amet,
														consectetur adipisicing elit, sed do eiusmod tempor
														incididunt ut labore et dolore magna aliqua. Ut enim ad
														minim veniam, quis nostrud exercitation ullamco laboris
														nisi ut aliquip ex ea commodo.</p>
													<a href="#" class="btn btn-primary first-btn">make An
														Appoinment</a>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="tab-pane" id="massage">
									<div class="tabbable tabs-left row">
										<ul class="nav nav-tabs col-sm-4 col-xs-12">
											<li class="active"><a href="#braidstwist1"
												data-toggle="tab">Braids & Twist <span>$25</span></a></li>
											<li><a href="#haircolor112" data-toggle="tab">Hair
													Color <span>$40</span>
											</a></li>
											<li><a href="#hairextension112" data-toggle="tab">Hair
													Extension<span>$19</span>
											</a></li>
											<li><a href="#correctivecolor112" data-toggle="tab">Corrective
													Color<span>$13</span>
											</a></li>
											<li><a href="#haircut112" data-toggle="tab">Hair Cut<span>$48</span></a></li>
											<li><a href="#partialfoil112" data-toggle="tab">Partial
													Foil<span>$10</span>
											</a></li>
											<li><a href="#extensionpertrack112" data-toggle="tab">Extension
													Per Track<span>$40</span>
											</a></li>
										</ul>
										<div class="tab-content col-sm-8 col-xs-12">
											<div class="tab-pane active" id="braidstwist1">
												<div class="varietyContent">
													<img src="http://placehold.it/750x400" alt="Image Variety"
														class="img-responsive">
													<h3>Braids & Twist</h3>
													<h4>$25.00 Per Head</h4>
													<p>Lorem ipsum dolor sit amet, consectetur adipisicing
														elit, sed do eiusmod tempor incididunt ut labore et dolore
														magna aliqua. Ut enim ad minim veniam, quis nostrud
														exercitation ullamco laboris nisi ut aliquip ex ea
														commodo.</p>
													<a href="#" class="btn btn-primary first-btn">make An
														Appoinment</a>
												</div>
											</div>
											<div class="tab-pane" id="haircolor112">
												<div class="varietyContent">
													<img src="http://placehold.it/750x400" alt="Image Variety"
														class="img-responsive">
													<h3>Hair Color</h3>
													<h4>$40.00 Per Head</h4>
													<p>Nostrud exercitation ullamco laboris nisi ut aliquip
														ex ea commodo. Lorem ipsum dolor sit amet, consectetur
														adipisicing elit, sed do eiusmod tempor incididunt ut
														labore et dolore magna aliqua. Ut enim ad minim veniam,
														quis nostrud exercitation ullamco laboris nisi ut aliquip
														ex ea commodo.</p>
													<a href="#" class="btn btn-primary first-btn">make An
														Appoinment</a>
												</div>
											</div>
											<div class="tab-pane" id="hairextension112">
												<div class="varietyContent">
													<img src="http://placehold.it/750x400" alt="Image Variety"
														class="img-responsive">
													<h3>Hair Extension</h3>
													<h4>$19.00 Per Head</h4>
													<p>Et dolore magna aliqua. Ut enim ad minim veniam,
														quis nostrud exercitation ullamco laboris nisi ut aliquip
														ex ea commodo. Lorem ipsum dolor sit amet, consectetur
														adipisicing elit, sed do eiusmod tempor incididunt ut
														labore et dolore magna aliqua. Ut enim ad minim veniam,
														quis nostrud exercitation ullamco laboris nisi ut aliquip
														ex ea commodo.</p>
													<a href="#" class="btn btn-primary first-btn">make An
														Appoinment</a>
												</div>
											</div>
											<div class="tab-pane" id="correctivecolor112">
												<div class="varietyContent">
													<img src="http://placehold.it/750x400" alt="Image Variety"
														class="img-responsive">
													<h3>Corrective Color</h3>
													<h4>$13.00 Per Head</h4>
													<p>Labore et dolore magna aliqua. Ut enim ad minim
														veniam, quis nostrud exercitation ullamco laboris nisi ut
														aliquip ex ea commodo. Lorem ipsum dolor sit amet,
														consectetur adipisicing elit, sed do eiusmod tempor
														incididunt ut labore et dolore magna aliqua. Ut enim ad
														minim veniam, quis nostrud exercitation ullamco laboris
														nisi ut aliquip ex ea commodo.</p>
													<a href="#" class="btn btn-primary first-btn">make An
														Appoinment</a>
												</div>
											</div>
											<div class="tab-pane" id="haircut112">
												<div class="varietyContent">
													<img src="http://placehold.it/750x400" alt="Image Variety"
														class="img-responsive">
													<h3>Hair Cut</h3>
													<h4>$48.00 Per Head</h4>
													<p>Incididunt ut labore et dolore magna aliqua. Ut enim
														ad minim veniam, quis nostrud exercitation ullamco laboris
														nisi ut aliquip ex ea commodo. Lorem ipsum dolor sit amet,
														consectetur adipisicing elit, sed do eiusmod tempor
														incididunt ut labore et dolore magna aliqua. Ut enim ad
														minim veniam, quis nostrud exercitation ullamco laboris
														nisi ut aliquip ex ea commodo.</p>
													<a href="#" class="btn btn-primary first-btn">make An
														Appoinment</a>
												</div>
											</div>
											<div class="tab-pane" id="partialfoil112">
												<div class="varietyContent">
													<img src="http://placehold.it/750x400" alt="Image Variety"
														class="img-responsive">
													<h3>Partial Foil</h3>
													<h4>$10.00 Per Head</h4>
													<p>Magna aliqua. Ut enim ad minim veniam, quis nostrud
														exercitation ullamco laboris nisi ut aliquip ex ea
														commodo. Lorem ipsum dolor sit amet, consectetur
														adipisicing elit, sed do eiusmod tempor incididunt ut
														labore et dolore magna aliqua. Ut enim ad minim veniam,
														quis nostrud exercitation ullamco laboris nisi ut aliquip
														ex ea commodo.</p>
													<a href="#" class="btn btn-primary first-btn">make An
														Appoinment</a>
												</div>
											</div>
											<div class="tab-pane" id="extensionpertrack112">
												<div class="varietyContent">
													<img src="http://placehold.it/750x400" alt="Image Variety"
														class="img-responsive">
													<h3>Extension Per Track</h3>
													<h4>$40.00 Per Head</h4>
													<p>Lorem ipsum dolor sit amet, consectetur adipisicing
														elit, sed do eiusmod tempor incididunt ut labore et dolore
														magna aliqua. Ut enim ad minim veniam, quis nostrud
														exercitation ullamco laboris nisi ut aliquip ex ea commodo
														consequat. Duis aute irure dolor in reprehenderit in
														voluptate velit esse cillum dolore eu fugiat nulla
														pariatur. Excepteur sint occaecat cupidatat non proident,
														sunt in culpa qui officia deserunt mollit anim id est
														laborum.</p>
													<a href="#" class="btn btn-primary first-btn">make An
														Appoinment</a>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="tab-pane" id="nail">
									<div class="tabbable tabs-left row">
										<ul class="nav nav-tabs col-sm-4 col-xs-12">
											<li class="active"><a href="#braidstwist1"
												data-toggle="tab">Braids & Twist <span>$25</span></a></li>
											<li><a href="#haircolor113" data-toggle="tab">Hair
													Color <span>$40</span>
											</a></li>
											<li><a href="#hairextension113" data-toggle="tab">Hair
													Extension<span>$19</span>
											</a></li>
											<li><a href="#correctivecolor113" data-toggle="tab">Corrective
													Color<span>$13</span>
											</a></li>
											<li><a href="#haircut113" data-toggle="tab">Hair Cut<span>$48</span></a></li>
											<li><a href="#partialfoil113" data-toggle="tab">Partial
													Foil<span>$10</span>
											</a></li>
											<li><a href="#extensionpertrack113" data-toggle="tab">Extension
													Per Track<span>$40</span>
											</a></li>
										</ul>
										<div class="tab-content col-sm-8 col-xs-12">
											<div class="tab-pane active" id="braidstwist1">
												<div class="varietyContent">
													<img src="http://placehold.it/750x400" alt="Image Variety"
														class="img-responsive">
													<h3>Braids & Twist</h3>
													<h4>$25.00 Per Head</h4>
													<p>Lorem ipsum dolor sit amet, consectetur adipisicing
														elit, sed do eiusmod tempor incididunt ut labore et dolore
														magna aliqua. Ut enim ad minim veniam, quis nostrud
														exercitation ullamco laboris nisi ut aliquip ex ea
														commodo.</p>
													<a href="#" class="btn btn-primary first-btn">make An
														Appoinment</a>
												</div>
											</div>
											<div class="tab-pane" id="haircolor113">
												<div class="varietyContent">
													<img src="http://placehold.it/750x400" alt="Image Variety"
														class="img-responsive">
													<h3>Hair Color</h3>
													<h4>$40.00 Per Head</h4>
													<p>Ipsum dolor sit amet, consectetur adipisicing elit,
														sed do eiusmod tempor incididunt ut labore et dolore magna
														aliqua. Ut enim ad minim veniam, quis nostrud exercitation
														ullamco laboris nisi ut aliquip ex ea commodo. Lorem ipsum
														dolor sit amet, consectetur adipisicing elit, sed do
														eiusmod tempor incididunt ut labore et dolore magna
														aliqua. Ut enim ad minim veniam, quis nostrud exercitation
														ullamco laboris nisi ut aliquip ex ea commodo.</p>
													<a href="#" class="btn btn-primary first-btn">make An
														Appoinment</a>
												</div>
											</div>
											<div class="tab-pane" id="hairextension113">
												<div class="varietyContent">
													<img src="http://placehold.it/750x400" alt="Image Variety"
														class="img-responsive">
													<h3>Hair Extension</h3>
													<h4>$19.00 Per Head</h4>
													<p>Consectetur adipisicing elit, sed do eiusmod tempor
														incididunt ut labore et dolore magna aliqua. Ut enim ad
														minim veniam, quis nostrud exercitation ullamco laboris
														nisi ut aliquip ex ea commodo. Lorem ipsum dolor sit amet,
														consectetur adipisicing elit, sed do eiusmod tempor
														incididunt ut labore et dolore magna aliqua. Ut enim ad
														minim veniam, quis nostrud exercitation ullamco laboris
														nisi ut aliquip ex ea commodo.</p>
													<a href="#" class="btn btn-primary first-btn">make An
														Appoinment</a>
												</div>
											</div>
											<div class="tab-pane" id="correctivecolor113">
												<div class="varietyContent">
													<img src="http://placehold.it/750x400" alt="Image Variety"
														class="img-responsive">
													<h3>Corrective Color</h3>
													<h4>$13.00 Per Head</h4>
													<p>Tempor incididunt ut labore et dolore magna aliqua.
														Ut enim ad minim veniam, quis nostrud exercitation ullamco
														laboris nisi ut aliquip ex ea commodo. Lorem ipsum dolor
														sit amet, consectetur adipisicing elit, sed do eiusmod
														tempor incididunt ut labore et dolore magna aliqua. Ut
														enim ad minim veniam, quis nostrud exercitation ullamco
														laboris nisi ut aliquip ex ea commodo.</p>
													<a href="#" class="btn btn-primary first-btn">make An
														Appoinment</a>
												</div>
											</div>
											<div class="tab-pane" id="haircut113">
												<div class="varietyContent">
													<img src="http://placehold.it/750x400" alt="Image Variety"
														class="img-responsive">
													<h3>Hair Cut</h3>
													<h4>$48.00 Per Head</h4>
													<p>Sed do eiusmod tempor incididunt ut labore et dolore
														magna aliqua. Ut enim ad minim veniam, quis nostrud
														exercitation ullamco laboris nisi ut aliquip ex ea
														commodo. Lorem ipsum dolor sit amet, consectetur
														adipisicing elit, sed do eiusmod tempor incididunt ut
														labore et dolore magna aliqua. Ut enim ad minim veniam,
														quis nostrud exercitation ullamco laboris nisi ut aliquip
														ex ea commodo.</p>
													<a href="#" class="btn btn-primary first-btn">make An
														Appoinment</a>
												</div>
											</div>
											<div class="tab-pane" id="partialfoil113">
												<div class="varietyContent">
													<img src="http://placehold.it/750x400" alt="Image Variety"
														class="img-responsive">
													<h3>Partial Foil</h3>
													<h4>$10.00 Per Head</h4>
													<p>Bore et dolore magna aliqua. Ut enim ad minim
														veniam, quis nostrud exercitation ullamco laboris nisi ut
														aliquip ex ea commodo. Lorem ipsum dolor sit amet,
														consectetur adipisicing elit, sed do eiusmod tempor
														incididunt ut labore et dolore magna aliqua. Ut enim ad
														minim veniam, quis nostrud exercitation ullamco laboris
														nisi ut aliquip ex ea commodo.</p>
													<a href="#" class="btn btn-primary first-btn">make An
														Appoinment</a>
												</div>
											</div>
											<div class="tab-pane" id="extensionpertrack113">
												<div class="varietyContent">
													<img src="http://placehold.it/750x400" alt="Image Variety"
														class="img-responsive">
													<h3>Extension Per Track</h3>
													<h4>$40.00 Per Head</h4>
													<p>Gna aliqua. Ut enim ad minim veniam, quis nostrud
														exercitation ullamco laboris nisi ut aliquip ex ea
														commodo. Lorem ipsum dolor sit amet, consectetur
														adipisicing elit, sed do eiusmod tempor incididunt ut
														labore et dolore magna aliqua. Ut enim ad minim veniam,
														quis nostrud exercitation ullamco laboris nisi ut aliquip
														ex ea commodo.</p>
													<a href="#" class="btn btn-primary first-btn">make An
														Appoinment</a>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="tab-pane" id="waxing">
									<div class="tabbable tabs-left row">
										<ul class="nav nav-tabs col-sm-4 col-xs-12">
											<li class="active"><a href="#braidstwist1"
												data-toggle="tab">Braids & Twist <span>$25</span></a></li>
											<li><a href="#haircolor114" data-toggle="tab">Hair
													Color <span>$40</span>
											</a></li>
											<li><a href="#hairextension114" data-toggle="tab">Hair
													Extension<span>$19</span>
											</a></li>
											<li><a href="#correctivecolor114" data-toggle="tab">Corrective
													Color<span>$13</span>
											</a></li>
											<li><a href="#haircut114" data-toggle="tab">Hair Cut<span>$48</span></a></li>
											<li><a href="#partialfoil114" data-toggle="tab">Partial
													Foil<span>$10</span>
											</a></li>
											<li><a href="#extensionpertrack114" data-toggle="tab">Extension
													Per Track<span>$40</span>
											</a></li>
										</ul>
										<div class="tab-content col-sm-8 col-xs-12">
											<div class="tab-pane active" id="braidstwist1">
												<div class="varietyContent">
													<img src="http://placehold.it/750x400" alt="Image Variety"
														class="img-responsive">
													<h3>Braids & Twist</h3>
													<h4>$25.00 Per Head</h4>
													<p>Lorem ipsum dolor sit amet, consectetur adipisicing
														elit, sed do eiusmod tempor incididunt ut labore et dolore
														magna aliqua. Ut enim ad minim veniam, quis nostrud
														exercitation ullamco laboris nisi ut aliquip ex ea
														commodo.</p>
													<a href="#" class="btn btn-primary first-btn">make An
														Appoinment</a>
												</div>
											</div>
											<div class="tab-pane" id="haircolor114">
												<div class="varietyContent">
													<img src="http://placehold.it/750x400" alt="Image Variety"
														class="img-responsive">
													<h3>Hair Color</h3>
													<h4>$40.00 Per Head</h4>
													<p>Dolore magna aliqua. Ut enim ad minim veniam, quis
														nostrud exercitation ullamco laboris nisi ut aliquip ex ea
														commodo. Lorem ipsum dolor sit amet, consectetur
														adipisicing elit, sed do eiusmod tempor incididunt ut
														labore et dolore magna aliqua. Ut enim ad minim veniam,
														quis nostrud exercitation ullamco laboris nisi ut aliquip
														ex ea commodo.</p>
													<a href="#" class="btn btn-primary first-btn">make An
														Appoinment</a>
												</div>
											</div>
											<div class="tab-pane" id="hairextension114">
												<div class="varietyContent">
													<img src="http://placehold.it/750x400" alt="Image Variety"
														class="img-responsive">
													<h3>Hair Extension</h3>
													<h4>$19.00 Per Head</h4>
													<p>Tempor incididunt ut labore et dolore magna aliqua.
														Ut enim ad minim veniam, quis nostrud exercitation ullamco
														laboris nisi ut aliquip ex ea commodo. Lorem ipsum dolor
														sit amet, consectetur adipisicing elit, sed do eiusmod
														tempor incididunt ut labore et dolore magna aliqua. Ut
														enim ad minim veniam, quis nostrud exercitation ullamco
														laboris nisi ut aliquip ex ea commodo.</p>
													<a href="#" class="btn btn-primary first-btn">make An
														Appoinment</a>
												</div>
											</div>
											<div class="tab-pane" id="correctivecolor114">
												<div class="varietyContent">
													<img src="http://placehold.it/750x400" alt="Image Variety"
														class="img-responsive">
													<h3>Corrective Color</h3>
													<h4>$13.00 Per Head</h4>
													<p>Ut enim ad minim veniam, quis nostrud exercitation
														ullamco laboris nisi ut aliquip ex ea commodo. Lorem ipsum
														dolor sit amet, consectetur adipisicing elit, sed do
														eiusmod tempor incididunt ut labore et dolore magna
														aliqua. Ut enim ad minim veniam, quis nostrud exercitation
														ullamco laboris nisi ut aliquip ex ea commodo.</p>
													<a href="#" class="btn btn-primary first-btn">make An
														Appoinment</a>
												</div>
											</div>
											<div class="tab-pane" id="haircut114">
												<div class="varietyContent">
													<img src="http://placehold.it/750x400" alt="Image Variety"
														class="img-responsive">
													<h3>Hair Cut</h3>
													<h4>$48.00 Per Head</h4>
													<p>Incididunt ut labore et dolore magna aliqua. Ut enim
														ad minim veniam, quis nostrud exercitation ullamco laboris
														nisi ut aliquip ex ea commodo. Lorem ipsum dolor sit amet,
														consectetur adipisicing elit, sed do eiusmod tempor
														incididunt ut labore et dolore magna aliqua. Ut enim ad
														minim veniam, quis nostrud exercitation ullamco laboris
														nisi ut aliquip ex ea commodo.</p>
													<a href="#" class="btn btn-primary first-btn">make An
														Appoinment</a>
												</div>
											</div>
											<div class="tab-pane" id="partialfoil114">
												<div class="varietyContent">
													<img src="http://placehold.it/750x400" alt="Image Variety"
														class="img-responsive">
													<h3>Partial Foil</h3>
													<h4>$10.00 Per Head</h4>
													<p>Rem ipsum dolor sit amet, consectetur adipisicing
														elit, sed do eiusmod tempor incididunt ut labore et dolore
														magna aliqua. Ut enim ad minim veniam, quis nostrud
														exercitation ullamco laboris nisi ut aliquip ex ea
														commodo. Lorem ipsum dolor sit amet, consectetur
														adipisicing elit, sed do eiusmod tempor incididunt ut
														labore et dolore magna aliqua. Ut enim ad minim veniam,
														quis nostrud exercitation ullamco laboris nisi ut aliquip
														ex ea commodo.</p>
													<a href="#" class="btn btn-primary first-btn">make An
														Appoinment</a>
												</div>
											</div>
											<div class="tab-pane" id="extensionpertrack114">
												<div class="varietyContent">
													<img src="http://placehold.it/750x400" alt="Image Variety"
														class="img-responsive">
													<h3>Extension Per Track</h3>
													<h4>$40.00 Per Head</h4>
													<p>Bore et dolore magna aliqua. Ut enim ad minim
														veniam, quis nostrud exercitation ullamco laboris nisi ut
														aliquip ex ea commodo. Lorem ipsum dolor sit amet,
														consectetur adipisicing elit, sed do eiusmod tempor
														incididunt ut labore et dolore magna aliqua. Ut enim ad
														minim veniam, quis nostrud exercitation ullamco laboris
														nisi ut aliquip ex ea commodo.</p>
													<a href="#" class="btn btn-primary first-btn">make An
														Appoinment</a>
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
		</section>

		<!-- OFFERS SECTION -->
		<section class="clearfix offersSection patternbg">
			<div class="container">
				<div class="row">
					<div class="col-sm-3 col-xs-12">
						<div class="offerContent">
							<img src="http://placehold.it/254x254" alt="Image Offer">
							<div class="offerMasking">
								<div class="offerTitle">
									<h4>
										<a href="#">Skin Care</a>
									</h4>
								</div>
							</div>
							<div class="offerPrice">
								<h5>$25</h5>
							</div>
						</div>
					</div>
					<div class="col-sm-3 col-xs-12">
						<div class="offerContent">
							<img src="http://placehold.it/254x254" alt="Image Offer">
							<div class="offerMasking">
								<div class="offerTitle">
									<h4>
										<a href="#">Body massage</a>
									</h4>
								</div>
							</div>
							<div class="offerPrice">
								<h5>$45</h5>
							</div>
						</div>
					</div>
					<div class="col-sm-3 col-xs-12">
						<div class="offerContent">
							<img src="http://placehold.it/254x254" alt="Image Offer">
							<div class="offerMasking">
								<div class="offerTitle">
									<h4>
										<a href="">Nail Care</a>
									</h4>
								</div>
							</div>
							<div class="offerPrice">
								<h5>$65</h5>
							</div>
						</div>
					</div>
					<div class="col-sm-3 col-xs-12">
						<div class="offerContent">
							<img src="http://placehold.it/254x254" alt="Image Offer">
							<div class="offerMasking">
								<div class="offerTitle">
									<h4>
										<a href="#">beauty Care</a>
									</h4>
								</div>
							</div>
							<div class="offerPrice">
								<h5>$75</h5>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<!-- PRODUCT SECTION -->
		<section class="clearfix productSection">
			<div class="container">
				<div class="secotionTitle">
					<h2>
						<span>Natural </span>Our Products
					</h2>
				</div>
				<div class="row">
					<div class="col-xs-12">
						<div id="productSlider" class="carousel slide"
							data-ride="carousel">
							<!-- Indicators -->
							<ol class="carousel-indicators">
								<li data-target="#productSlider" data-slide-to="0"
									class="active"></li>
								<li data-target="#productSlider" data-slide-to="1"></li>
							</ol>

							<!-- Wrapper for slides -->
							<div class="carousel-inner" role="listbox">
								<div class="item active">
									<div class="row">
										<div class="col-sm-6 col-xs-12">
											<div class="productImage">
												<img src="http://placehold.it/570x400" alt="Image Product"
													class="img-responsive"> <a href="#"><i
													class="fa fa-shopping-basket" aria-hidden="true"></i></a>
											</div>
										</div>
										<div class="col-sm-6 col-xs-12">
											<div class="productInfo">
												<h3>Traditional Massage</h3>
												<h4>$25.00 Per Head</h4>
												<ul class="list-inline rating">
													<li><i class="fa fa-star" aria-hidden="true"></i></li>
													<li><i class="fa fa-star" aria-hidden="true"></i></li>
													<li><i class="fa fa-star" aria-hidden="true"></i></li>
													<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
													<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
												</ul>
												<p>Lorem ipsum dolor sit amet, consectetur adipisicing
													elit, sed do eiusmod tempor incididunt ut labore et dolore
													magna aliqua. Ut enim ad minim veniam, quis nostrud
													exercitation ullamco laboris nisi ut aliquip ex ea commodo
													consequat. Duis aute irure dolor in reprehenderit in
													voluptate velit esse cillum dolore eu fugiat nulla paria
													tur. Excepteur sint occaecat cupidatat non proident, sunt
													in culpa qui officia dese runt mollit anim id est laborum.
												</p>
												<a href="#" class="btn btn-primary first-btn">read more</a>
											</div>
										</div>
									</div>
								</div>

								<div class="item">
									<div class="row">
										<div class="col-sm-6 col-xs-12">
											<div class="productImage">
												<img src="http://placehold.it/570x400" alt="Image Product"
													class="img-responsive"> <a href="#"><i
													class="fa fa-shopping-basket" aria-hidden="true"></i></a>
											</div>
										</div>
										<div class="col-sm-6 col-xs-12">
											<div class="productInfo">
												<h3>Body Massage</h3>
												<h4>$55.00 Per Head</h4>
												<ul class="list-inline rating">
													<li><i class="fa fa-star" aria-hidden="true"></i></li>
													<li><i class="fa fa-star" aria-hidden="true"></i></li>
													<li><i class="fa fa-star" aria-hidden="true"></i></li>
													<li><i class="fa fa-star" aria-hidden="true"></i></li>
													<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
												</ul>
												<p>Magna aliqua. Ut enim ad minim veniam, quis nostrud
													exercitation ullamco laboris nisi ut aliquip ex ea commodo
													consequat. Duis aute irure dolor in reprehenderit in
													voluptate velit esse cillum dolore eu fugiat nulla paria
													tur. Excepteur sint occaecat cupidatat non proident, sunt
													in culpa qui officia dese runt mollit anim id est laborum.
													Lorem ipsum dolor sit amet, consectetur adipisicing elit,
													sed do eiusmod tempor incididunt ut labore et dolore.</p>
												<a href="#" class="btn btn-primary first-btn">read more</a>
											</div>
										</div>
									</div>
								</div>
							</div>

							<!-- Left and right controls -->
							<a class="left carousel-control" href="#productSlider"
								role="button" data-slide="prev"> <i
								class="fa fa-long-arrow-left" aria-hidden="true"></i> <span
								class="sr-only">Previous</span>
							</a> <a class="right carousel-control" href="#productSlider"
								role="button" data-slide="next"> <i
								class="fa fa-long-arrow-right" aria-hidden="true"></i> <span
								class="sr-only">Next</span>
							</a>
						</div>
					</div>
				</div>
			</div>
		</section>

		<!-- REVIEW SECTION -->
		<section class="clearfix reviewSection patternbg">
			<div class="container">
				<div class="secotionTitle">
					<h2>
						<span>Testimonials </span>Customer reviews
					</h2>
				</div>
				<div class="row">
					<div class="col-sm-6 col-xs-12">
						<div class="row">
							<div class="col-sm-9 col-sm-offset-3 col-xs-12 reviewInner">
								<div class="reviewImage hidden-xs">
									<img src="http://placehold.it/160x160" alt="Image review"
										class="img-responsive">
								</div>
								<div class="reviewInfo">
									<i class="fa fa-quote-left" aria-hidden="true"></i>
									<p>Lorem ipsum dolor sit amet, consectetur adip isicing
										elit, sed do eiusmod tempor incididunt ut labore et dolore
										magna aliqua. Ut enim ad minim veniam, quis nostrud
										exercitation ullam co laboris nisi ut aliquip ex ea commodo
										conse quat. Duis aute irure dolor in reprehenderit in
										voluptate velit esse.</p>
									<h3>Linda Smith</h3>
									<h4>Founder, Angel Beauty Spa</h4>
								</div>
							</div>
						</div>
					</div>
					<div class="col-sm-6 col-xs-12">
						<div class="row">
							<div class="col-sm-9 col-sm-offset-3 col-xs-12 reviewInner">
								<div class="reviewImage hidden-xs">
									<img src="http://placehold.it/160x160" alt="Image review"
										class="img-responsive">
								</div>
								<div class="reviewInfo">
									<i class="fa fa-quote-left" aria-hidden="true"></i>
									<p>Lorem ipsum dolor sit amet, consectetur adip isicing
										elit, sed do eiusmod tempor incididunt ut labore et dolore
										magna aliqua. Ut enim ad minim veniam, quis nostrud
										exercitation ullam co laboris nisi ut aliquip ex ea commodo
										conse quat. Duis aute irure dolor in reprehenderit in
										voluptate velit esse.</p>
									<h3>Linda Smith</h3>
									<h4>Founder, Angel Beauty Spa</h4>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>


		<!-- HOME GALLERY SECTION -->
		<section class="clearfix homeGalleryTitle">
			<div class="container">
				<div class="secotionTitle">
					<h2>
						<span>Explore </span>Our gallery
					</h2>
				</div>
			</div>
		</section>
		<section class="container-fluid clearfix homeGallery">
			<div class="row">
				<div class="col-xs-12">
					<div class="filter-container isotopeFilters">
						<ul class="list-inline filter">
							<li class="active"><a href="#" data-filter="*">all item</a></li>
							<li><a href="#" data-filter=".hair">hair</a></li>
							<li><a href="#" data-filter=".makeup">Make Up</a></li>
							<li><a href="#" data-filter=".facial">Facial</a></li>
							<li><a href="#" data-filter=".massage">Massage</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="row isotopeContainer" id="container">
				<div class="col-sm-3 isotopeSelector hair">
					<article class="">
						<figure>
							<img src="http://placehold.it/500x375" alt="Image Gallery"
								class="img-responsive">
							<div class="overlay-background">
								<div class="inner"></div>
							</div>
							<div class="overlay">
								<a class="fancybox-pop" rel="portfolio-1"
									href="http://placehold.it/960x740">
									<div class="overlayInfo">
										<h5>
											<i class="fa fa-plus" aria-hidden="true"></i> <br>Skin
											Care
										</h5>
									</div>
								</a>
							</div>
						</figure>
					</article>
				</div>

				<div class="col-sm-3 isotopeSelector makeup">
					<article class="">
						<figure>
							<img src="http://placehold.it/500x375" alt="Image Gallery"
								class="img-responsive">
							<div class="overlay-background">
								<div class="inner"></div>
							</div>
							<div class="overlay">
								<a class="fancybox-pop" rel="portfolio-1"
									href="http://placehold.it/960x740">
									<div class="overlayInfo">
										<h5>
											<i class="fa fa-plus" aria-hidden="true"></i> <br>Skin
											Care
										</h5>
									</div>
								</a>
							</div>
						</figure>
					</article>
				</div>

				<div class="col-sm-3 isotopeSelector massage">
					<article class="">
						<figure>
							<img src="http://placehold.it/500x375" alt="Image Gallery"
								class="img-responsive">
							<div class="overlay-background">
								<div class="inner"></div>
							</div>
							<div class="overlay">
								<a class="fancybox-pop" rel="portfolio-1"
									href="http://placehold.it/960x740">
									<div class="overlayInfo">
										<h5>
											<i class="fa fa-plus" aria-hidden="true"></i> <br>Skin
											Care
										</h5>
									</div>
								</a>
							</div>
						</figure>
					</article>
				</div>

				<div class="col-sm-3 isotopeSelector hair">
					<article class="">
						<figure>
							<img src="http://placehold.it/500x375" alt="Image Gallery"
								class="img-responsive">
							<div class="overlay-background">
								<div class="inner"></div>
							</div>
							<div class="overlay">
								<a class="fancybox-pop" rel="portfolio-1"
									href="http://placehold.it/960x740">
									<div class="overlayInfo">
										<h5>
											<i class="fa fa-plus" aria-hidden="true"></i> <br>Skin
											Care
										</h5>
									</div>
								</a>
							</div>
						</figure>
					</article>
				</div>

				<div class="col-sm-3 isotopeSelector makeup">
					<article class="">
						<figure>
							<img src="http://placehold.it/500x375" alt="Image Gallery"
								class="img-responsive">
							<div class="overlay-background">
								<div class="inner"></div>
							</div>
							<div class="overlay">
								<a class="fancybox-pop" rel="portfolio-1"
									href="http://placehold.it/960x740">
									<div class="overlayInfo">
										<h5>
											<i class="fa fa-plus" aria-hidden="true"></i> <br>Skin
											Care
										</h5>
									</div>
								</a>
							</div>
						</figure>
					</article>
				</div>

				<div class="col-sm-3 isotopeSelector facial">
					<article class="">
						<figure>
							<img src="http://placehold.it/500x375" alt="Image Gallery"
								class="img-responsive">
							<div class="overlay-background">
								<div class="inner"></div>
							</div>
							<div class="overlay">
								<a class="fancybox-pop" rel="portfolio-1"
									href="http://placehold.it/960x740">
									<div class="overlayInfo">
										<h5>
											<i class="fa fa-plus" aria-hidden="true"></i> <br>Skin
											Care
										</h5>
									</div>
								</a>
							</div>
						</figure>
					</article>
				</div>

				<div class="col-sm-3 isotopeSelector facial">
					<article class="">
						<figure>
							<img src="http://placehold.it/500x375" alt="Image Gallery"
								class="img-responsive">
							<div class="overlay-background">
								<div class="inner"></div>
							</div>
							<div class="overlay">
								<a class="fancybox-pop" rel="portfolio-1"
									href="http://placehold.it/960x740">
									<div class="overlayInfo">
										<h5>
											<i class="fa fa-plus" aria-hidden="true"></i> <br>Skin
											Care
										</h5>
									</div>
								</a>
							</div>
						</figure>
					</article>
				</div>

				<div class="col-sm-3 isotopeSelector massage">
					<article class="">
						<figure>
							<img src="http://placehold.it/500x375" alt="Image Gallery"
								class="img-responsive">
							<div class="overlay-background">
								<div class="inner"></div>
							</div>
							<div class="overlay">
								<a class="fancybox-pop" rel="portfolio-1"
									href="http://placehold.it/960x740">
									<div class="overlayInfo">
										<h5>
											<i class="fa fa-plus" aria-hidden="true"></i> <br>Skin
											Care
										</h5>
									</div>
								</a>
							</div>
						</figure>
					</article>
				</div>

			</div>
		</section>

		<!-- CALL TO ACTION SECTION -->
		<section class="clearfix callAction">
			<div class="container">
				<div class="row">
					<div class="col-sm-7 col-sm-offset-1 col-xs-12">
						<div class="callInfo">
							<p>Excepteur sint occaecat cupidatat non proident, sunt in
								culpa qui officia deserunt mollit anim id est laborum sed ut
								perspiciatis.</p>
						</div>
					</div>
					<div class="col-sm-4 col-xs-12">
						<a href="pricing.html" class="btn btn-primary first-btn callBtn">view
							packages</a>
					</div>
				</div>
			</div>
		</section>

		<!-- EXPERT SECTION -->
		<section class="clearfix expertSection">
			<div class="container">
				<div class="secotionTitle">
					<h2>
						<span>Meet </span>our experts
					</h2>
				</div>
				<div class="row">
					<div class="col-xs-12">
						<div id="thubmnailTeamSlider"
							class="carousel slide thumbnailCarousel">

							<ol class="carousel-indicators">
								<li data-target="#thubmnailTeamSlider" data-slide-to="0"
									class="active"></li>
								<li data-target="#thubmnailTeamSlider" data-slide-to="1"></li>
								<li data-target="#thubmnailTeamSlider" data-slide-to="2"></li>
								<li data-target="#thubmnailTeamSlider" data-slide-to="3"></li>
								<li data-target="#thubmnailTeamSlider" data-slide-to="4"></li>
								<li data-target="#thubmnailTeamSlider" data-slide-to="5"></li>
								<li data-target="#thubmnailTeamSlider" data-slide-to="6"></li>
								<li data-target="#thubmnailTeamSlider" data-slide-to="7"></li>
							</ol>

							<!-- Carousel items -->
							<div class="carousel-inner">

								<div class="item active">
									<div class="item-inner">
										<div class="expertBox">
											<div class="expertImage">
												<img src="http://placehold.it/270x270" alt="Image expert">
												<div class="expertMask">
													<div class="socialArea">
														<ul class="list-inline">
															<li><a href="#"><i class="fa fa-facebook"
																	aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-twitter"
																	aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-rss"
																	aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-google-plus"
																	aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-vimeo"
																	aria-hidden="true"></i></a></li>
														</ul>
													</div>
												</div>
											</div>
											<div class="expertCaption ">
												<h2>Linda Smith</h2>
												<p>Founder, Angel Beauty Spa</p>
											</div>
										</div>
									</div>
								</div>

								<div class="item">
									<div class="item-inner">
										<div class="expertBox">
											<div class="expertImage">
												<img src="http://placehold.it/270x270" alt="Image expert">
												<div class="expertMask">
													<div class="socialArea">
														<ul class="list-inline">
															<li><a href="#"><i class="fa fa-facebook"
																	aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-twitter"
																	aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-rss"
																	aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-google-plus"
																	aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-vimeo"
																	aria-hidden="true"></i></a></li>
														</ul>
													</div>
												</div>
											</div>
											<div class="expertCaption ">
												<h2>Linda Smith</h2>
												<p>Founder, Angel Beauty Spa</p>
											</div>
										</div>
									</div>
								</div>

								<div class="item">
									<div class="item-inner">
										<div class="expertBox">
											<div class="expertImage">
												<img src="http://placehold.it/270x270" alt="Image expert">
												<div class="expertMask">
													<div class="socialArea">
														<ul class="list-inline">
															<li><a href="#"><i class="fa fa-facebook"
																	aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-twitter"
																	aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-rss"
																	aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-google-plus"
																	aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-vimeo"
																	aria-hidden="true"></i></a></li>
														</ul>
													</div>
												</div>
											</div>
											<div class="expertCaption ">
												<h2>Linda Smith</h2>
												<p>Founder, Angel Beauty Spa</p>
											</div>
										</div>
									</div>
								</div>

								<div class="item">
									<div class="item-inner">
										<div class="expertBox">
											<div class="expertImage">
												<img src="http://placehold.it/270x270" alt="Image expert">
												<div class="expertMask">
													<div class="socialArea">
														<ul class="list-inline">
															<li><a href="#"><i class="fa fa-facebook"
																	aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-twitter"
																	aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-rss"
																	aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-google-plus"
																	aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-vimeo"
																	aria-hidden="true"></i></a></li>
														</ul>
													</div>
												</div>
											</div>
											<div class="expertCaption ">
												<h2>Linda Smith</h2>
												<p>Founder, Angel Beauty Spa</p>
											</div>
										</div>
									</div>
								</div>

								<div class="item">
									<div class="item-inner">
										<div class="expertBox">
											<div class="expertImage">
												<img src="http://placehold.it/270x270" alt="Image expert">
												<div class="expertMask">
													<div class="socialArea">
														<ul class="list-inline">
															<li><a href="#"><i class="fa fa-facebook"
																	aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-twitter"
																	aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-rss"
																	aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-google-plus"
																	aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-vimeo"
																	aria-hidden="true"></i></a></li>
														</ul>
													</div>
												</div>
											</div>
											<div class="expertCaption ">
												<h2>Linda Smith</h2>
												<p>Founder, Angel Beauty Spa</p>
											</div>
										</div>
									</div>
								</div>

								<div class="item">
									<div class="item-inner">
										<div class="expertBox">
											<div class="expertImage">
												<img src="http://placehold.it/270x270" alt="Image expert">
												<div class="expertMask">
													<div class="socialArea">
														<ul class="list-inline">
															<li><a href="#"><i class="fa fa-facebook"
																	aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-twitter"
																	aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-rss"
																	aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-google-plus"
																	aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-vimeo"
																	aria-hidden="true"></i></a></li>
														</ul>
													</div>
												</div>
											</div>
											<div class="expertCaption ">
												<h2>Linda Smith</h2>
												<p>Founder, Angel Beauty Spa</p>
											</div>
										</div>
									</div>
								</div>

								<div class="item">
									<div class="item-inner">
										<div class="expertBox">
											<div class="expertImage">
												<img src="http://placehold.it/270x270" alt="Image expert">
												<div class="expertMask">
													<div class="socialArea">
														<ul class="list-inline">
															<li><a href="#"><i class="fa fa-facebook"
																	aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-twitter"
																	aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-rss"
																	aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-google-plus"
																	aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-vimeo"
																	aria-hidden="true"></i></a></li>
														</ul>
													</div>
												</div>
											</div>
											<div class="expertCaption ">
												<h2>Linda Smith</h2>
												<p>Founder, Angel Beauty Spa</p>
											</div>
										</div>
									</div>
								</div>

								<div class="item">
									<div class="item-inner">
										<div class="expertBox">
											<div class="expertImage">
												<img src="http://placehold.it/270x270" alt="Image expert">
												<div class="expertMask">
													<div class="socialArea">
														<ul class="list-inline">
															<li><a href="#"><i class="fa fa-facebook"
																	aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-twitter"
																	aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-rss"
																	aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-google-plus"
																	aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-vimeo"
																	aria-hidden="true"></i></a></li>
														</ul>
													</div>
												</div>
											</div>
											<div class="expertCaption ">
												<h2>Linda Smith</h2>
												<p>Founder, Angel Beauty Spa</p>
											</div>
										</div>
									</div>
								</div>

							</div>

							<a class="left carousel-control" href="#thubmnailTeamSlider"
								data-slide="prev">‹</a> <a class="right carousel-control"
								href="#thubmnailTeamSlider" data-slide="next">›</a>
						</div>
					</div>
				</div>
			</div>
		</section>

		<!-- PRICING SECTION -->
		<section class="clearfix pricingSection patternbg">
			<div class="container">
				<div class="secotionTitle">
					<h2>
						<span>Amazing </span>Services Pricing
					</h2>
				</div>
				<div class="row">
					<div class="col-sm-3 col-xs-12">
						<div class="priceTableWrapper">
							<div class="priceImage"
								style="background-image: url(http://placehold.it/330x220);">
								<div class="maskImage">
									<h3>Spa Light</h3>
								</div>
								<div class="priceTag">
									<h4>$59</h4>
								</div>
							</div>
							<div class="priceInfo">
								<ul class="list-unstyled">
									<li>Body Hand and Foot Massage</li>
									<li>Nail Cutting And Styling</li>
									<li>Spa Therapy</li>
									<li>Hair Coloring</li>
								</ul>
								<a href="#" class="btn btn-primary first-btn">Buy Now</a>
							</div>
						</div>
					</div>
					<div class="col-sm-3 col-xs-12">
						<div class="priceTableWrapper">
							<div class="priceImage"
								style="background-image: url(http://placehold.it/330x220);">
								<div class="maskImage">
									<h3>oil massage</h3>
								</div>
								<div class="priceTag">
									<h4>$79</h4>
								</div>
							</div>
							<div class="priceInfo">
								<ul class="list-unstyled">
									<li>Body Hand and Foot Massage</li>
									<li>Nail Cutting And Styling</li>
									<li>Spa Therapy</li>
									<li>Hair Coloring</li>
								</ul>
								<a href="#" class="btn btn-primary first-btn">Buy Now</a>
							</div>
						</div>
					</div>
					<div class="col-sm-3 col-xs-12">
						<div class="priceTableWrapper">
							<div class="priceImage"
								style="background-image: url(http://placehold.it/330x220);">
								<div class="maskImage">
									<h3>Spa & Beauty</h3>
								</div>
								<div class="priceTag">
									<h4>$85</h4>
								</div>
							</div>
							<div class="priceInfo">
								<ul class="list-unstyled">
									<li>Body Hand and Foot Massage</li>
									<li>Nail Cutting And Styling</li>
									<li>Spa Therapy</li>
									<li>Hair Coloring</li>
								</ul>
								<a href="#" class="btn btn-primary first-btn">Buy Now</a>
							</div>
						</div>
					</div>
					<div class="col-sm-3 col-xs-12">
						<div class="priceTableWrapper">
							<div class="priceImage"
								style="background-image: url(http://placehold.it/330x220);">
								<div class="maskImage">
									<h3>Relax Day</h3>
								</div>
								<div class="priceTag">
									<h4>$99</h4>
								</div>
							</div>
							<div class="priceInfo">
								<ul class="list-unstyled">
									<li>Body Hand and Foot Massage</li>
									<li>Nail Cutting And Styling</li>
									<li>Spa Therapy</li>
									<li>Hair Coloring</li>
								</ul>
								<a href="#" class="btn btn-primary first-btn">Buy Now</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<!-- CONTACT US SECTION -->
		<section class="clearfix contactSection">
			<div class="container">
				<div class="secotionTitle">
					<h2>
						<span>Hurry </span>Contact us
					</h2>
				</div>
				<div class="row">
					<div class="col-md-8 col-sm-7 col-xs-12">
						<div class="contactTitle">
							<h3>Get in touch</h3>
						</div>
						<div class="contactForm">
							<form action="#">
								<div class="form-group">
									<input type="text" class="form-control" id="exampleInputEmail1"
										placeholder="Your Name">
								</div>
								<div class="form-group">
									<input type="email" class="form-control"
										id="exampleInputEmail1" placeholder="Your Email">
								</div>
								<div class="form-group">
									<input type="text" class="form-control"
										id="exampleInputPassword1" placeholder="Your Phone">
								</div>
								<div class="form-group">
									<textarea class="form-control" placeholder="Your Message"></textarea>
								</div>
								<div class="form-group">
									<button type="submit" class="btn btn-primary first-btn">send
										Message</button>
								</div>
							</form>
						</div>
					</div>
					<div class="col-md-4 col-sm-5 col-xs-12">
						<div class="holdingInfo patternbg">
							<p>Lorem ipsum dolor sit amet, consectetur adipiselit, sed do
								eiusmod.</p>
							<ul>
								<li><i class="fa fa-map-marker" aria-hidden="true"></i>
									16/14 Babor Road, Mohammad pur Dhaka, Bangladeshincididunt</li>
								<li><i class="fa fa-phone" aria-hidden="true"></i> +55 654
									545 122 <br>+55 654 545 123</li>
								<li><i class="fa fa-envelope" aria-hidden="true"></i> <a
									href="mailto:info @example.com">info @example.com</a> <br>
								<a href="mailto:info2 @example.com">info2@example.com</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</section>

		<!-- PARTNER LOGO SECTION -->
		<section class="clearfix brandArea patternbg">
			<div class="container">
				<div class="row">
					<div class="col-xs-12">
						<div class="owl-carousel partnersLogoSlider">
							<div class="slide">
								<div class="partnersLogo clearfix">
									<img src="http://placehold.it/175x100" alt="Image Partner">
								</div>
							</div>
							<div class="slide">
								<div class="partnersLogo clearfix">
									<img src="http://placehold.it/175x100" alt="Image Partner">
								</div>
							</div>
							<div class="slide">
								<div class="partnersLogo clearfix">
									<img src="http://placehold.it/175x100" alt="Image Partner">
								</div>
							</div>
							<div class="slide">
								<div class="partnersLogo clearfix">
									<img src="http://placehold.it/175x100" alt="Image Partner">
								</div>
							</div>
							<div class="slide">
								<div class="partnersLogo clearfix">
									<img src="http://placehold.it/175x100" alt="Image Partner">
								</div>
							</div>
							<div class="slide">
								<div class="partnersLogo clearfix">
									<img src="http://placehold.it/175x100" alt="Image Partner">
								</div>
							</div>
							<div class="slide">
								<div class="partnersLogo clearfix">
									<img src="http://placehold.it/175x100" alt="Image Partner">
								</div>
							</div>
							<div class="slide">
								<div class="partnersLogo clearfix">
									<img src="http://placehold.it/175x100" alt="Image Partner">
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<!-- FOOTER -->
		<footer style="background-image: url(img/home/footer-bg.jpg);">
			<!-- BACK TO TOP BUTTON -->
			<a href="#pageTop" class="backToTop"><i class="fa fa-angle-up"
				aria-hidden="true"></i></a>
			<!-- FOOTER INFO -->
			<div class="clearfix footerInfo">
				<div class="container">
					<div class="row">
						<div class="col-sm-3 col-xs-12">
							<div class="footerText">
								<a href="index.html" class="footerLogo"><img
									src="img/logo-footer.png" alt="Footer Logo"></a>
								<p>Excepteur sint occaecat cupidatat non proident, sunt in
									culpa officia.Lorem ipsum dolor sit amet.</p>
								<p>consectetur adipisicing elit, sed do eiusmod tempor
									incididunt ut labore et dolore magna aliqua.</p>
							</div>
						</div>
						<div class="col-sm-3 col-xs-12 paddingLeft">
							<div class="footerInfoTitle">
								<h4>Useful Links</h4>
							</div>
							<div class="useLink">
								<ul class="list-unstyled">
									<li><a href="#"><i class="fa fa-angle-double-right"
											aria-hidden="true"></i>Web Design</a></li>
									<li><a href="#"><i class="fa fa-angle-double-right"
											aria-hidden="true"></i>About Anzel Beauty Spa</a></li>
									<li><a href="#"><i class="fa fa-angle-double-right"
											aria-hidden="true"></i>Mobile</a></li>
									<li><a href="#"><i class="fa fa-angle-double-right"
											aria-hidden="true"></i>Why Anzel Beauty Spa</a></li>
									<li><a href="#"><i class="fa fa-angle-double-right"
											aria-hidden="true"></i>Social Media</a></li>
								</ul>
							</div>
						</div>
						<div class="col-sm-3 col-xs-12">
							<div class="footerInfoTitle">
								<h4>Gallery</h4>
							</div>
							<div class="footerGallery row">
								<div class="col-xs-4">
									<a href="gallery-v2.html"
										style="background-image: url(http://placehold.it/75x75);"></a>
								</div>
								<div class="col-xs-4">
									<a href="gallery-v2.html"
										style="background-image: url(http://placehold.it/75x75);"></a>
								</div>
								<div class="col-xs-4">
									<a href="gallery-v2.html"
										style="background-image: url(http://placehold.it/75x75);"></a>
								</div>
								<div class="col-xs-4">
									<a href="gallery-v2.html"
										style="background-image: url(http://placehold.it/75x75);"></a>
								</div>
								<div class="col-xs-4">
									<a href="gallery-v2.html"
										style="background-image: url(http://placehold.it/75x75);"></a>
								</div>
								<div class="col-xs-4">
									<a href="gallery-v2.html"
										style="background-image: url(http://placehold.it/75x75);"></a>
								</div>
							</div>
						</div>
						<div class="col-sm-3 col-xs-12">
							<div class="footerInfoTitle">
								<h4>Newsletters</h4>
							</div>
							<div class="footerText">
								<p>Sign up for our mailing list to get latest updates and
									offers.</p>
								<div class="input-group">
									<input type="text" class="form-control"
										placeholder="Email address" aria-describedby="basic-addon21">
									<button type="submit" class="input-group-addon"
										id="basic-addon21">Send</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- COPY RIGHT -->
			<div class="clearfix copyRight">
				<div class="container">
					<div class="row">
						<div class="col-sm-5 col-sm-push-7 col-xs-12">
							<ul class="list-inline socialLink">
								<li><a href="#"><i class="fa fa-twitter"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-linkedin"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-facebook"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-skype"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-pinterest-p"
										aria-hidden="true"></i></a></li>
							</ul>
						</div>
						<div class="col-sm-7 col-sm-pull-5 col-xs-12">
							<div class="copyRightText">
								<p>
									&copy; 2017 Copyright <a target="_blank"
										href="http://www.iamabdus.com/">Angel Beauty Spa Salon
										Bootstrap Template</a> by <a target="_blank"
										href="http://www.iamabdus.com/">Abdus</a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</footer>
	</div>

	<!-- APPOINMENT MODAL -->
	<div id="appoinmentModal" class="modal fade modalCommon" role="dialog"
		tabindex="-1">
		<div class="modal-dialog">
			<!-- MODAL CONTENT-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Appointment For Hair Color</h4>
				</div>
				<div class="modal-body">
					<form action="">
						<div class="form-group categoryTitle">
							<h5>Service Date and Time</h5>
						</div>
						<div class="dateSelect form-half form-left">
							<div class="input-group date ed-datepicker filterDate"
								data-provide="datepicker">
								<input type="text" class="form-control" placeholder="MM/DD/YYYY">
								<div class="input-group-addon">
									<span class="fa fa-calendar"></span>
								</div>
							</div>
						</div>
						<div class="timeSelect form-half form-right">
							<select name="guiest_id1" id="guiest_id1" class="select-drop">
								<option value="0">10.00 AM</option>
								<option value="1">9.00 AM</option>
								<option value="2">8.00 AM</option>
								<option value="3">11.00 AM</option>
							</select>
						</div>
						<div class="form-group categoryTitle">
							<h5>Personal info</h5>
						</div>
						<div class="form-group form-half form-left">
							<input type="text" class="form-control" id="exampleInputEmail2"
								placeholder="Full name">
						</div>
						<div class="form-group form-half form-right">
							<input type="email" class="form-control" id="exampleInputEmail3"
								placeholder="Your email">
						</div>
						<div class="form-group form-half form-left">
							<input type="text" class="form-control" id="exampleInputEmail4"
								placeholder="Phone number">
						</div>
						<div class="form-group form-half form-right">
							<input type="text" class="form-control" id="exampleInputEmail5"
								placeholder="Your address">
						</div>
						<div class="form-group">
							<textarea class="form-control" placeholder="Your Message"></textarea>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<div class="form-group">
						<button type="submit" class="btn btn-primary first-btn">Submit
							Now</button>
					</div>
				</div>
			</div>
		</div>
	</div>

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
