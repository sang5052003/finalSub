<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx">${pageContext.request.contextPath }</c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>

<!-- SITE TITTLE -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>User Profile - Angel Beauty</title>

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

<link href="${ctx }/resources/plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet">
<link href="${ctx }/resources/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="${ctx }/resources/plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<link href="${ctx }/resources/plugins/selectbox/select_option1.css" rel="stylesheet">
<link href="${ctx }/resources/plugins/owl-carousel/owl.carousel.min.css" rel="stylesheet"
	media="screen">
<link href="${ctx }/resources/plugins/fancybox/jquery.fancybox.pack.css" rel="stylesheet">
<link href="${ctx }/resources/plugins/isotope/isotope.min.css" rel="stylesheet">
<link href="${ctx }/resources/plugins/datepicker/datepicker.min.css" rel="stylesheet">
<link href="${ctx }/resources/plugins/bootstrapthumbnail/bootstrap-thumbnail.css"
	rel="stylesheet">

<!-- CUSTOM CSS -->
<link href="${ctx }/resources/css/style.css" rel="stylesheet">
<link href="${ctx }/resources/css/default.css" rel="stylesheet" id="option_color">


<!-- FAVICON -->
<link href="${ctx }/resources/img/favicon.png" rel="shortcut icon">

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
		url(${ctx }/resources/plugins/simple-pre-loader/images/loader-64x/Preloader_2.gif)
		center no-repeat #fff;
}
</style>

</head>

<body class="body-wrapper static">
	<div class="se-pre-con"></div>
	<div class="main-wrapper">
		<!-- HEADER -->
		<header id="pageTop" class="header"> <!-- TOP INFO BAR -->
		<div class="top-info-bar">
			<div class="container">
				<div class="top-bar-right">
					<ul class="list-inline">
						<li><a href=""><i class="fa fa-envelope"
								aria-hidden="true"></i> info@yourdomain.com</a></li>
						<li><span><i class="fa fa-phone" aria-hidden="true"></i>+1
								234 567 8900</span></li>
					</ul>
				</div>
			</div>
		</div>

		<!-- NAVBAR --> <nav id="menuBar"
			class="navbar navbar-default lightHeader" role="navigation">
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

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse navbar-ex1-collapse">
				<ul class="nav navbar-nav navbar-right">
					<li class=""><a href="index.html">Home</a></li>
					<li class=" dropdown singleDrop"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown" role="button"
						aria-haspopup="true" aria-expanded="false">Services</a>
						<ul class="dropdown-menu dropdown-menu-left">
							<li><a href="service.html">Services</a></li>
							<li><a href="single-service.html">Single Services</a></li>
						</ul></li>
					<li class="active dropdown megaDropMenu"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown" role="button"
						aria-haspopup="true" aria-expanded="false">Store</a>
						<ul class="row dropdown-menu">
							<li class="col-sm-3 col-xs-12">
								<ul class="list-unstyled">
									<li><a href="product-right-sidebar.html">Product Right
											Sidebar</a></li>
									<li><a href="product-left-sidebar.html">Product Left
											Sidebar</a></li>
									<li><a href="product-3col.html">Product 3 Col</a></li>
									<li><a href="product-4col.html">Product 4 Col</a></li>
									<li><a href="single-product.html">Single product</a></li>
								</ul>
							</li>
							<li class="col-sm-3 col-xs-12">
								<ul class="list-unstyled">
									<li><a href="user-dashboard.html">User Dashboard</a></li>
									<li><a href="user-profile.html">User Profile</a></li>
									<li><a href="address.html">Address</a></li>
									<li><a href="all-order.html">All Order</a></li>
									<li><a href="wishlist.html">Wishlist</a></li>
								</ul>
							</li>
							<li class="col-sm-3 col-xs-12">
								<ul class="list-unstyled">
									<li><a href="cart.html">Cart</a></li>
									<li><a href="checkout.html">Checkout</a></li>
									<li><a href="success.html">Confirmation</a></li>
									<li><a href="pricing.html">Price table</a></li>
								</ul>
							</li>
							<li class="col-sm-3 col-xs-12 mega-img"><a href="#"><img
									src="http://placehold.it/326x218" alt="logo"></a></li>
						</ul></li>
					<li class=" dropdown singleDrop"><a href="javascript:void(0)"
						class="dropdown-toggle" data-toggle="dropdown" role="button"
						aria-haspopup="true" aria-expanded="false">Pages</a>
						<ul class="dropdown-menu dropdown-menu-left">
							<li><a href="about.html">About Us</a></li>
							<li><a href="contact.html">Contact Us</a></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown" role="button" aria-haspopup="true"
								aria-expanded="false">Team</a>
								<ul class="dropdown-menu">
									<li><a href="member.html">Our Team</a></li>
									<li><a href="single-member-profile.html">Single Team</a></li>
								</ul></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown" role="button" aria-haspopup="true"
								aria-expanded="false">Gallery</a>
								<ul class="dropdown-menu">
									<li><a href="gallery-v1.html">Gallery 3 Col</a></li>
									<li><a href="gallery-v2.html">Gallery 4 Col</a></li>
								</ul></li>
							<li><a href="login-signup.html">Login SignUp</a></li>
							<li><a href="404.html">404 Not Found</a></li>
							<li><a href="coming-soon.html">Coming Soon</a></li>
						</ul></li>
					<li class=" dropdown singleDrop"><a href="javascript:void(0)"
						class="dropdown-toggle" data-toggle="dropdown" role="button"
						aria-haspopup="true" aria-expanded="false">Blog</a>
						<ul class="dropdown-menu dropdown-menu-right">
							<li class="dropdown dropdown-submenu"><a
								href="javascript:void(0)" class="dropdown-toggle"
								data-toggle="dropdown">Blog</a>
								<ul class="dropdown-menu">
									<li><a href="blog-right-sidebar.html">Right Sidebar</a></li>
									<li><a href="blog-left-sidebar.html">Left Sidebar</a></li>
									<li><a href="blog-fullwidth.html">Fullwidth</a></li>
								</ul></li>
							<li class="dropdown dropdown-submenu"><a
								href="javascript:void(0)" class="dropdown-toggle"
								data-toggle="dropdown">Single Blog</a>
								<ul class="dropdown-menu">
									<li><a href="blog-single-right-sidebar.html">Right
											Sidebar</a></li>
									<li><a href="blog-single-left-sidebar.html">Left
											Sidebar</a></li>
									<li><a href="blog-single-fullwidth.html">Fullwidth</a></li>
								</ul></li>
						</ul></li>
					<li class=" dropdown singleDrop"><a href="javascript:void(0)"
						class="dropdown-toggle" data-toggle="dropdown" role="button"
						aria-haspopup="true" aria-expanded="false">Components</a>
						<ul class="dropdown-menu">
							<li><a href="tabs-pagination.html">Tab & Pagination</a></li>
							<li><a href="accrodion.html">Accrodions</a></li>
							<li><a href="buttons-alerts.html">Buttons & Alerts</a></li>
						</ul></li>
				</ul>
			</div>

			<!-- Cart button -->
			<div class="cart_btn">
				<a href="cart.html"><i class="fa fa-shopping-basket"
					aria-hidden="true"></i><span class="badge">0</span></a>
			</div>

		</div>
		</nav> </header>


		<!-- USER SECTION -->
		<section class="clearfix userSection padding">
		<div class="container">
			
			<div class="row">
				<div class="col-xs-12">
					<div class="innerWrapper">
						<div class="orderBox  patternbg">profile</div>
						<div class="profile">
							
									<div class="thumbnail">
										<img src="http://placehold.it/1280x700" width="700" id="img" alt="profile-image">
										<div class="caption">
											
											<!-- <a href="#" class="btn btn-primary btn-block" role="button">Change
												Avatar</a> -->
										</div>
									</div>
								<div class="row">
								<div class="col-md-10 col-sm-9 col-xs-12">
									<form action="${ctx }/beautyTip/regist.do" method="post" enctype="multipart/form-data" class="form-horizontal">
										<div class="form-group">
											<label for="" class="col-md-2 col-sm-3 control-label">제목</label>
											<div class="col-md-10 col-sm-9">
												<input type="text" name="beautyTipTitle" class="form-control" placeholder="">
											</div>
										</div>
										<div class="form-group">
											<label for="" class="col-md-2 col-sm-3 control-label">내용</label>
											<div class="col-md-10 col-sm-9">
												<textarea rows="20" name="beautyTipContent" cols="20" class="form-control">
												</textarea>
											</div>
										</div>
										<input type="file" id="getImgFile" name="imgFileName" accept="image/*">
										<div class="form-group">
											<div class="row">
												<div class="col-md-4 col-md-offset-1 col-sm-3">
													<input type="file" class="btn btn-primary btn-block" name="" value="video">
												</div>
												<div class="col-md-4 col-md-offset-3 col-sm-3 col-sm-offset-3 ">
													<!-- <input type="hidden" id="inputImg" name="image" value="" > -->
													<input type="submit" class="btn btn-primary btn-block" value="SAVE INFO">
												</div>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</section>

		<!-- FOOTER -->
		<footer style="background-image: url(${ctx }/resources/img/home/footer-bg.jpg);">
		<!-- BACK TO TOP BUTTON --> <a href="#pageTop" class="backToTop"><i
			class="fa fa-angle-up" aria-hidden="true"></i></a> <!-- FOOTER INFO -->
		<div class="clearfix footerInfo">
			<div class="container">
				<div class="row">
					<div class="col-sm-3 col-xs-12">
						<div class="footerText">
							<a href="index.html" class="footerLogo"><img
								src="${ctx }/resources/img/logo-footer.png" alt="Footer Logo"></a>
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
					<form action="" method="post" >
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

	<!-- JAVASCRIPTS -->
	<script type="text/javascript"
		src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
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
		//paste this code under head tag or in a seperate js file.
		// Wait for window load
		$(window).load(function() {
			// Animate loader off screen
			$(".se-pre-con").fadeOut("slow");
		});
	</script>
	
	<script type="text/javascript">
	
		var imgFile = document.querySelector('#getImgFile');
	
		$(document).ready(function() {

			//선택한 이미지 보여주기
			imgFile.onchange = function(){
				var fileList = imgFile.files;
				
				var reader = new FileReader();
				reader.readAsDataURL(fileList[0]);
				
				reader.onload = function(){
					document.querySelector('#img').src = reader.result;
					
					//$("#inputImg").val(reader.result);
				};
				
			};
			
		});/* end ready */
	</script>

</body>

</html>
