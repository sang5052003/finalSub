<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<!-- SITE TITTLE -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Login SignUp - Beauty Mate</title>

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

<link href="plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet">
<link href="plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<link href="plugins/selectbox/select_option1.css" rel="stylesheet">
<link href="plugins/owl-carousel/owl.carousel.min.css" rel="stylesheet"
	media="screen">
<link href="plugins/fancybox/jquery.fancybox.pack.css" rel="stylesheet">
<link href="plugins/isotope/isotope.min.css" rel="stylesheet">
<link href="plugins/datepicker/datepicker.min.css" rel="stylesheet">
<link href="plugins/bootstrapthumbnail/bootstrap-thumbnail.css"
	rel="stylesheet">

<!-- CUSTOM CSS -->
<link href="css/style.css" rel="stylesheet">
<link href="css/default.css" rel="stylesheet" id="option_color">


<!-- FAVICON -->
<link href="img/favicon.png" rel="shortcut icon">

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

input[type=radio].css-checkbox {
	position: absolute;
	z-index: -1000;
	left: -1000px;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	height: 1px;
	width: 1px;
	margin: -1px;
	padding: 0;
	border: 0;
}

input[type=radio].css-checkbox+label.css-label {
	padding-left: 17px;
	height: 12px;
	display: inline-block;
	line-height: 12px;
	background-repeat: no-repeat;
	background-position: 0 0;
	font-size: 14px;
	vertical-align: middle;
	cursor: pointer;
}

input[type=radio].css-checkbox:checked+label.css-label {
	background-position: 0 -12px;
}

label.css-label {
	background-image:
		url(http://csscheckbox.com/checkboxes/u/csscheckbox_d7934d7b4f2a8223f39419d9e7af69c1.png);
	-webkit-touch-callout: none;
	-webkit-user-select: none;
	-khtml-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
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

				<div class="container">

					<div class="top-bar-right">
						<ul class="list-inline">
							<li><select id="sel">
									<option value="0"></option>
									<option value="1">브랜드</option>
									<option value="2">제품</option>

							</select></li>
							<li><input id="search" type="text" placeholder="화장품을 검색해보세요">
								<a target="_blank" href="#"
								class="btn btn-primary first-btn waves-effect waves-light scale-up">search</a></li>
							<li><a id="login" target="_blank" href="#"
								class="btn btn-primary first-btn waves-effect waves-light scale-up">LOGIN</a></li>
							<li><a id="login" target="_blank" href="#"
								class="btn btn-primary first-btn waves-effect waves-light scale-up">JOIN</a></li>


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
							src="img/logo.png" alt="logo"></a>
					</div>

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
							<li class=" dropdown singleDrop"><a
								href="javascript:void(0)" class="dropdown-toggle"
								data-toggle="dropdown" role="button" aria-haspopup="true"
								aria-expanded="false">BeautyTip</a></li>
							<li class=" dropdown singleDrop"><a
								href="javascript:void(0)" class="dropdown-toggle"
								data-toggle="dropdown" role="button" aria-haspopup="true"
								aria-expanded="false">MY Pouch</a></li>

						</ul>
					</div>

					<!-- Cart button -->

				</div>
			</nav>
		</header>



		<!-- FORM AREA SECTION -->
		<section class="clearfix formArea">
			<div class="container">
				<div class="row">
					<div class="col-md-4 col-md-offset-2 col-sm-6 col-xs-12">
						<div class="panel panel-default formPart">
							<div class="panel-heading patternbg">
								log in your <span>account</span>
							</div>
							<div class="panel-body">
								<form>
									<div class="form-group">
										<i class="fa fa-info-circle" aria-hidden="true"></i> <input
											type="text" class="form-control" id="id" placeholder="ID">
									</div>
									<div class="form-group">
										<i class="fa fa-lock" aria-hidden="true"></i> <input
											type="password" class="form-control" id="pwd"
											placeholder="Password">
									</div>
									<div class="checkbox">
										<label><input type="checkbox"> Remember me</label>
									</div>
									<button type="submit" class="btn btn-primary btn-block">Log
										In</button>
								</form>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 col-xs-12">
						<div class="panel panel-default formPart">
							<div class="panel-heading patternbg">
								Create an <span>account</span>
							</div>
							<div class="panel-body">
								<form method="post" action="register.do">
									<div class="form-group">
										<i class="fa fa-user" aria-hidden="true"></i> <input
											type="text" class="form-control" name="name" id="fullname"
											placeholder="Full Name">
									</div>
									<div class="form-group">
										<i class="fa fa-info-circle" aria-hidden="true"></i> <input
											type="text" class="form-control" name="id" id="id1"
											placeholder="ID">
									</div>
									<div class="form-group">
										<i class="fa fa-lock" aria-hidden="true"></i> <input
											type="password" class="form-control" name="password"
											id="pwd1" placeholder="Password">
									</div>

									<div class="form-group">
										<i class="fa fa-envelope" aria-hidden="true"></i> <input
											type="email" class="form-control" name="email" id="email1"
											placeholder="Email">
									</div>
									<div class="form-group">
                    <i class="fa fa-birthday-cake" aria-hidden="true"></i>
                    <input type="date" class="form-control" name="birth" id="birth" placeholder="Birth">
                  </div>
									

									<div class="form-group">
         
      <input type="radio" name="gender" id="radio1" class="css-checkbox" checked="checked"  value="f"/>
                    <label for="radio1" class="css-label radGroup1" style="margin-right:15px;">여자</label>
               
                    <input type="radio" name="gender" id="radio2" class="css-checkbox" value="m"  />
                    <label for="radio2" class="css-label radGroup1">남자</label>
                   
                    </div>
								
									<input class="btn btn-xs btn-default" type="submit" value="등록">
									<button type="submit" class="btn btn-primary btn-block">Sign
										UP</button>
								</form>
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

	<!-- JAVASCRIPTS -->
	<script type="text/javascript"
		src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script src="plugins/jquery-ui/jquery-ui.min.js"></script>
	<script src="plugins/bootstrap/js/bootstrap.min.js"></script>
	<script src="plugins/selectbox/jquery.selectbox-0.1.3.min.js"></script>
	<script src="plugins/owl-carousel/owl.carousel.min.js"></script>
	<script src="plugins/isotope/isotope.min.js"></script>
	<script src="plugins/fancybox/jquery.fancybox.pack.js"></script>
	<script src="plugins/isotope/isotope-triger.min.js"></script>
	<script src="plugins/smoothscroll/SmoothScroll.min.js"></script>
	<script src="plugins/datepicker/bootstrap-datepicker.min.js"></script>
	<script src="plugins/syotimer/jquery.syotimer.min.js"></script>
	<script src="js/custom.js"></script>

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
