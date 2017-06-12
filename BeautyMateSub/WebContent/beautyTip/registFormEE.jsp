<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>registForm Page
	<form action="${pageContext.request.contextPath}/beautyTip/regist.do"
		method="post" class="form-signin">
		<div class="col-lg-10">
			<input type="text" class="form-control" name="beautyTipTitle">title
			<input type="text" class="form-control" name="image">image
			<input type="text" class="form-control" name="beautyTipContent">contents
			<input type="text" class="form-control" name="video">video
			<input type="text" class="form-control" name="category">category
		</div>
		<div class="row form-btn">
			<input type="submit" class="btn btn-large btn-warning" value="등록">
			<button class="btn btn-large btn-default">뷰티팁 등록</button>
			<!-- <a ? -->
		</div>
	</form>
</body>
</html>