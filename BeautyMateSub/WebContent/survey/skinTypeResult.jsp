<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>피부 타입 결과</title>
<%@ include file="/common/common.jsp"%>
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
<script type="text/javascript">
	function recommendedIngredientImageSet() {
		var beforeStr = '<c:out value='${skinType.recommendedIngredient }'/>';
		beforeStr = beforeStr.replaceAll(" ", "");
		var afterStr = beforeStr.split(',');

		alert(afterStr[0]);

		document.getElementById("recommendedIngredientImg1").src = '${ctx}/resources/img/xmlImg/'
				+ afterStr[0] + '.jpg';
		document.getElementById("recommendedIngredientImg2").src = '${ctx}/resources/img/xmlImg/'
				+ afterStr[1] + '.jpg';
		document.getElementById("recommendedIngredientImg3").src = '${ctx}/resources/img/xmlImg/'
				+ afterStr[2] + '.jpg';

		alert(document.getElementById("recommendedIngredientImg1").src);
	}
</script>



</head>
<body>
	<form action="#">
		<div class="container">

			<div class="blogPost singlePost">
				
				<img src="http://placehold.it/1140x600" alt="Image Blog"
					class="img-responsive">
				<h2>피부타입 : ${skinType.baumanType }</h2>
				<hr>
				<p>타입별 맞춤 설명 : ${skinType.explanation}</p>
				<hr>
				<br> <br> <br> <br> <br> <br> <br>
				<div>
					<img id="recommendedIngredientImg1" src="" alt="Image Blog"
						class="img-responsive"> <img id="recommendedIngredientImg2"
						src="" alt="Image Blog" class="img-responsive"> <img
						id="recommendedIngredientImg3" src="" alt="Image Blog"
						class="img-responsive"> <img
						src="${ctx}/resources/img/xmlImg/녹차.jpg" alt="Image Blog"
						width="100" height="100">
				</div>
				<br> <br> <br> <br> <br>
				<p>추천 성분 : ${skinType.recommendedIngredient }</p>
				<p>비추천 성분 : ${skinType.bannedIngredient }</p>
				<p>추천 음식 : ${skinType.recommendedFood }</p>
				<p>추천 습관 : ${skinType.habit }</p>
				<ul class="list-inline">
					<li><button type="submit"
							class="btn btn-common btn-full-round btn-theme"
							onclick="recommendedIngredientImageSet();">나에게 맞는 화장품 추천
							받기</button></li>

				</ul>
			</div>
		</div>
	</form>
</body>
</html>