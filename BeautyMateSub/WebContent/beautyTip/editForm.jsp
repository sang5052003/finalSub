<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>editForm Page
	<form action="${pageContext.request.contextPath}/beautyTip/edit.do"
		method="post" class="form-signin">
		
		<div class="row form-btn">
			<input type="submit" class="btn btn-large btn-warning" value="로그인">
			<button class="btn btn-large btn-default">뷰티팁 등록</button>
			<!-- <a ? -->
		</div>
	</form>
</body>
</html>