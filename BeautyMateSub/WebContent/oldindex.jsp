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
<title>Beauty Mate</title>

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
							<span class="h2 from-bottom" style="color:black;"><u><strong>16가지</strong></u>의 피부타입 <font size="14px" color="#ec5598">
+
</font> 화장품 분석 </span><br> <span
								class="h4 from-bottom">내 피부를 위한 바른 진단 , 바른 화장품으로 피부 운명 체인지!</span><br> <a
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
									src="${ctx }/resources/img/home/main.JPG"
									alt="Image About" class="img-responsive" >
							</div>
						</div>
						<div class="col-sm-6 col-xs-12">
							<div class="aboutInfo">
								<h2>BEAUTY MATE</h2>
								<h3><strong>나보다 나를 더 잘 아는 화장품 친구</strong></h3>
								<p>뷰티 메이트는 바우만 16가지의 피부타입검사와 내가 사용한 화장품 분석을 통해 나에게 맞는 화장품을 찾을 수 있습니다. 어떤 화장품을 써도 효과가 없다면, 자신의 정확한 피부 타입과 화장품을 모르기 때문!
<br>내 피부에 맞지 않는 피부관리는 오히려 피부 상태를 악화 시킬 수도 있습니다.
과학적인 최신 피부 타입 분류법 <u><strong><font color="#ec5598">"바우만 피부 타입 테스트"</font></strong></u> 와 내가 사용한 화장품을 분석한 뷰티메이트만의  <u><strong><font color="#ec5598">"분석 서비스"</font></strong></u>를 이용해보세요.
자신의 피부 타입을 정확하게 파악하고 그에 적합한 스킨케어를 한다면 당신의 피부도 달라질 수 있습니다. 당신에게 가장 적절한 화장품을 추천해드립니다.</p>
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
						<span>Beauty </span>Our Program
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
												<img src="${ctx }/resources/img/home/bauman.jpg" alt="Image Product"
													class="img-responsive" width="80%"> 
											</div>
										</div>
										<div class="col-sm-6 col-xs-12">
											<div class="productInfo">
												<h3>Baumann Skin Type Test</h3>
												<h4>오로지 <strong>뷰티메이트</strong>에서만 바우만 피부타입테스트를 제공합니다</h4>
												
												
												<p>
미국 마이애미 대학 교수인 레슬리 바우만 박사는 오일지수 진단 , 민감성 진단 , 색소 진단 , 주름 및 탄력 진단을 통해 <strong>새로운 16가지 피부 유형</strong>을 제시하였습니다.<br>
이는 피부 교과서에도 실린 분류법으로 가장 과학적인 피부 타입 분류법으로 인정 받고 있고, 뷰티메이트는 바우만 피부 타입 테스트를 응용하여 피부 타입 테스트를 제공합니다. <br><br>
<img src="${ctx }/resources/img/home/bauman2.jpg" alt="Image Product"
													class="img-responsive"> 
												</p>
												
											</div>
										</div>
									</div>
								</div>

								<div class="item">
									<div class="row">
										<div class="col-sm-6 col-xs-12">
											<div class="productImage">
												<img src="${ctx }/resources/img/home/match.jpg" alt="Image Product"
													class="img-responsive" width="140%"> 
											</div>
										</div>
										<div class="col-sm-6 col-xs-12">
											<div class="productInfo">
												<h3>USER / Cosmetic Analysis</h3>
												<h4>뷰티메이트 추천 시스템</h4>
												
												<p>뷰티메이트는 사용자 기반과 화장품 기반으로 종합적으로 분석해 <br>최적의 화장품을 추천해드립니다.<br><br> <strong>- User based</strong><br>
												자신과 비슷한 피부 타입을 가진 사람과 화장품 평가 내역을 이용하여 <br> 비슷한 사람들이 선택한 화장품을 추천해드립니다.
												<br>
												<strong>- Cosmetic based</strong><br>
												자신이 평가한 화장품의 특성,성분을 이용하여 비슷한 특성을 가진 <br>화장품을 추천해드립니다. 
												</p>
												
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
							<p>문의 또는 건의 사항이 있으면 관리자에게<br>의견을 보내주세요. </p>
							<ul>
								<li><i class="fa fa-map-marker" aria-hidden="true"></i>
									서울특별시 금천구 가산디지털로1로 151 이노플렉스 1차 2층</li>
								<li><i class="fa fa-phone" aria-hidden="true"></i> +82 070 5039 5815 <br></li>
								<li><i class="fa fa-envelope" aria-hidden="true"></i> <a
									href="mailto:info @example.com">info @beautymate.com</a> <br>
								
							</ul>
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
										href="http://www.iamabdus.com/">Beauty Mate</a>
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
