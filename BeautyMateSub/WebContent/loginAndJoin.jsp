<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>피부 타입 결과</title>
<%@ include file="/common/common.jspf"%>
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
		url(${ctx}/resources/plugins/simple-pre-loader/images/loader-64x/Preloader_2.gif)
		center no-repeat #fff;
}
</style>


</head>

<body>
	<%@ include file="../common/header.jspf"%>



	<div class="inner-bg">
		<div class="container">

			<div class="row">
				<div class="col-sm-8 col-sm-offset-2 text">
					<div class="secotionTitle">
						<h2>
							<span>Beauty Mate</span>Login And Join
						</h2>
						<br>
						<div>
							<p>Join our Beauty Mate! We will be support your SkinType.</p>
							<p>Let's Find Suitable Cosmetics For You. join then give us
								"Bauman" skin type survey.</p>
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-sm-5">

					<div class="form-box2">
						<div class="form-top2">
							<div class="form-top-left2">
								<h3>Login to our site</h3>
								<p>Enter ID and Password to log on:</p>
							</div>
							<div class="form-top-right2">
								<i class="fa fa-lock"></i>
							</div>
						</div>
						<div class="form-bottom2">
							<form role="form" action="" method="post" class="login-form">
								<div class="form-group">
									<label class="sr-only" for="form-username">ID</label> <input
										type="text" name="form-username" placeholder="Username..."
										class="form-username form-control" id="form-username">
								</div>
								<div class="form-group">
									<label class="sr-only" for="form-password">Password</label> <input
										type="password" name="form-password" placeholder="Password..."
										class="form-password form-control" id="form-password">
								</div>
								<button type="submit" class="btn">Sign in!</button>
							</form>
						</div>
					</div>
				</div>

				<div class="col-sm-1 middle-border"></div>
				<div class="col-sm-1"></div>

				<div class="col-sm-5">

					<div class="form-box2">
						<div class="form-top2">
							<div class="form-top-left2">
								<h3>Sign up now</h3>
								<p>Fill in the form below to get instant access:</p>
							</div>
							<div class="form-top-right2">
								<i class="fa fa-pencil"></i>
							</div>
						</div>
						<div class="form-bottom2">
							<form role="form" action="" method="post"
								class="registration-form">
								<div class="form-group">
									<label class="sr-only" for="form-first-name">ID</label>
									<input type="text" name="form-id"
										placeholder="First name..."
										class="form-first-name form-control" id="form-first-name">
								</div>
								<div class="form-group">
									<label class="sr-only" for="form-last-name">Password</label> <input
										type="password" name="form-password" placeholder="Last name..."
										class="form-last-name form-control" id="form-last-name">
								</div>
								<div class="form-group">
									<label class="sr-only" for="form-last-name">Name</label> <input
										type="text" name="form-name" placeholder="Last name..."
										class="form-last-name form-control" id="form-last-name">
								</div>
								<div class="form-group">
									<label class="sr-only" for="form-email">Email</label> <input
										type="text" name="form-email" placeholder="Email..."
										class="form-email form-control" id="form-email">
								</div>
								<div class="form-group">
									<label class="sr-only" for="form-email">Gender</label> 
									<input type="" name="form-gender" placeholder="Email..."
										class="form-email form-control" id="form-email">
								</div>
								<div class="form-group">
									<label class="sr-only" for="form-email">Birth</label> <input
										type="text" name="form-birth" placeholder="Email..."
										class="form-email form-control" id="form-email">
								</div>
								<div class="form-group">
									<label class="sr-only" for="form-about-yourself">About
										yourself</label>
									<textarea name="form-about-yourself"
										placeholder="About yourself..."
										class="form-about-yourself form-control"
										id="form-about-yourself"></textarea>
								</div>
								<button type="submit" class="btn">Sign me up!</button>
							</form>
						</div>
					</div>

				</div>
			</div>

		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<%@ include file="../common/footer.jspf"%>
</body>
</html>