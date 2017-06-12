<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>reply Page
	<form class="bs-example form-horizontal" method="POST"
		action="${pageContext.request.contextPath}/reply/beautyTip/edit.do">
		<fieldset>
			<div class="form-group">
				<label class="col-lg-2 control-label">리플 테스트</label>
					<input  type="hidden" class="form-control" name="replyNo" value="${replyNo }">
				<div class="col-lg-10">내용
					<input type="text" class="form-control" name="replyContent" value="${contents }">
				</div>
				<div class="col-lg-10">포스트No
					<input type="text" class="form-control" name="postNo" value="${postNo }">
				</div>
			</div>

			<div class="form-group">
				<div class="col-lg-10 col-lg-offset-2">
					<button type="submit" class="btn btn-default">확인</button>
					<button class="btn btn-primary">취소</button>
				</div>
			</div>

		</fieldset>
	</form>
</body>
</html>