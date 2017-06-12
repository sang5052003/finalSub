<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<c:set var="ctx">${pageContext.request.contextPath }</c:set>
<html>
<head>
<%@ include file="../common/common.jspf"%>
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
		url(../resources/plugins/simple-pre-loader/images/loader-64x/Preloader_2.gif)
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
	

	<%@ include file="../common/header.jspf"%>


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
								<form id="submitForm" method="post" action="register.do">
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
										<i class="fa fa-birthday-cake" aria-hidden="true"></i> <input
											type="date" class="form-control" name="birth" id="birth"
											placeholder="Birth">
									</div>


									<div class="form-group">

										<input type="radio" name="gender" id="radio1"
											class="css-checkbox" checked="checked" value="f" /> <label
											for="radio1" class="css-label radGroup1"
											style="margin-right: 15px;">여자</label> <input type="radio"
											name="gender" id="radio2" class="css-checkbox" value="m" />
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
		<footer style="background-image: url(../resources/img/home/footer-bg.jpg);">
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

	<script type="text/javascript">
		//paste this code under head tag or in a seperate js file.
		// Wait for window load
		$(window).load(function() {
			// Animate loader off screen
			$(".se-pre-con").fadeOut("slow");
			
			var result = '${msg}';

			if (result == 'SUCCESS') {
				alert("처리가 완료되었습니다.");
			}
			
			
		});
		

								<form method="post" action="login.do">
									<div class="form-group">
										<i class="fa fa-info-circle" aria-hidden="true"></i> <input
											name="id" type="text" class="form-control" id="id" placeholder="ID">
									</div>
									<div class="form-group">
										<i class="fa fa-lock" aria-hidden="true"></i> <input name="password"
											type="password" class="form-control" id="pwd"
											placeholder="Password">
									</div>
									<div class="checkbox">
										<label><input id="idSaveCheck" type="checkbox"> Remember me</label>
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
											<div class="id_err"></div>
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
										<i class="fa fa-birthday-cake" aria-hidden="true"></i> <input
											type="date" class="form-control" name="birth" id="birth"
											placeholder="Birth">
									</div>


									<div class="form-group">

										<input type="radio" name="gender" id="radio1"
											class="css-checkbox" checked="checked" value="f" /> <label
											for="radio1" class="css-label radGroup1"
											style="margin-right: 15px;">여자</label> <input type="radio"
											name="gender" id="radio2" class="css-checkbox" value="m" />
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



	<script type="text/javascript">
		//paste this code under head tag or in a seperate js file.
		// Wait for window load
		$(window).load(function() {
			// Animate loader off screen
			$(".se-pre-con").fadeOut("slow");
			
		});
		
		var result = '${msg}';

		if (result == 'SUCCESS') {
			alert("가입 완료");
		}
		if(result=='FAIL'){
			alert("가입 실패")
		}
		if(result=='LOGINFAIL'){
			alert("로그인 실패")
		}
		(function($) {
		    $.fn.err_border = function() {
		        $(this).css("border", "2px solid red");
		    }
		    
		    $.fn.focus_border = function() {
		        $(this).focus(function() {
		            $(this).css("border", "2px solid #0080ff");
		        })
		    }
		    
		    $.fn.valid_border = function() {
		        $(this).css("border", "2px solid #1DDB16");
		    }
		    
		    $.fn.bad_inform = function(message) {
		        $(this).css({
		            display: "block",
		            color: "red"
		        }).text(message);
		    }
		    
		    $.fn.valid_inform = function(message) {
		        $(this).css({
		            display: "block",
		            color: "#008000"
		        }).text(message);
		    }
		})(jQuery)


		$(document).ready(function() {
			
			var userInputId = getCookie("userInputId");
		    $("input[name='id']").val(userInputId); 
		     
		    if($("input[name='id']").val() != ""){ // 그 전에 ID를 저장해서 처음 페이지 로딩 시, 입력 칸에 저장된 ID가 표시된 상태라면,
		        $("#idSaveCheck").attr("checked", true); // ID 저장하기를 체크 상태로 두기.
		    }
		     
		    $("#idSaveCheck").change(function(){ // 체크박스에 변화가 있다면,
		        if($("#idSaveCheck").is(":checked")){ // ID 저장하기 체크했을 때,
		            var userInputId = $("input[name='id']").val();
		            setCookie("userInputId", userInputId, 7); // 7일 동안 쿠키 보관
		        }else{ // ID 저장하기 체크 해제 시,
		            deleteCookie("userInputId");
		        }
		    });
		     
		    // ID 저장하기를 체크한 상태에서 ID를 입력하는 경우, 이럴 때도 쿠키 저장.
		    $("input[name='id']").keyup(function(){ // ID 입력 칸에 ID를 입력할 때,
		        if($("#idSaveCheck").is(":checked")){ // ID 저장하기를 체크한 상태라면,
		            var userInputId = $("input[name='id']").val();
		            setCookie("userInputId", userInputId, 7); // 7일 동안 쿠키 보관
		        }
		    });
			
			
		    $("#id1").focus_border();
		    $("#id1").blur(function() {
		        var id = $(this).val();
		        var len = id.length;
		        var regex = /^[A-Za-z0-9]{2,14}$/;
		        
		        $(this).err_border();
		        
		        $.ajax({
		            type: "POST",
		            url: "http://localhost:8888/rest/customer/findId/id/"+id,
		            dataType: "json",
		            contentType: "application/json;charset=UTF-8",
		            context: this,
		            data :id,
		            success: function(data) {
		                if(data == 0) 
		                    $('.id_err').bad_inform("이미 사용중인 아이디입니다.");
		                else{$(this).valid_border();
	                    $('.id_err').valid_inform("사용가능한 아이디입니다.");}
		                	
		            },
		            error: function () {
		            	
		                if(len == 0) $('.id_err').bad_inform("아이디를 입력하세요.");
		                else if(len < 2) $('.id_err').bad_inform("아이디는 2자 이상만 사용가능합니다.");
		                else if(!regex.test(id)) $('.id_err').bad_inform("사용할 수 없는 문자가 있습니다. (영 소,대문자 숫자만 사용 가능)");
		                else {
		                    $(this).valid_border();
		                    $('.id_err').valid_inform("사용가능한 아이디입니다.");
		                }
		            }
		        })
		    })
		})
		

		function setCookie(cookieName, value, exdays){
    var exdate = new Date();
    exdate.setDate(exdate.getDate() + exdays);
    var cookieValue = escape(value) + ((exdays==null) ? "" : "; expires=" + exdate.toGMTString());
    document.cookie = cookieName + "=" + cookieValue;
}
 
function deleteCookie(cookieName){
    var expireDate = new Date();
    expireDate.setDate(expireDate.getDate() - 1);
    document.cookie = cookieName + "= " + "; expires=" + expireDate.toGMTString();
}
 
function getCookie(cookieName) {
    cookieName = cookieName + '=';
    var cookieData = document.cookie;
    var start = cookieData.indexOf(cookieName);
    var cookieValue = '';
    if(start != -1){
        start += cookieName.length;
        var end = cookieData.indexOf(';', start);
        if(end == -1)end = cookieData.length;
        cookieValue = cookieData.substring(start, end);
    }
    return unescape(cookieValue);
}

		
	</script>
	
	
	

</body>

</html>
