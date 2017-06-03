<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="application/json; charset=UTF-8">
<title>피부 타입 결과</title>
<!-- CUSTOM CSS -->
<link href="${ctx}/resources/css/stylejun.css" rel="stylesheet">
<script src="${ctx}/resources/js/customjun.js"></script>
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

<script type="text/javascript">
	$(document).ready(function() {
		recommendedIngredientImageSet()
		bannedIngredientImageSet()
		recommendedFoodImageSet()
	});

	function recommendedIngredientImageSet() {
		var beforeStr = document.getElementById("recoIngre").value;
		beforeStr = beforeStr.replace(/\s/gi, "");
		var afterStr = beforeStr.split(',');
		document.getElementById("recommendedIngredientImg1").src = '${ctx}/resources/img/xmlImg/'
				+ afterStr[0] + '.jpg';
		document.getElementById("rii1show").style.display = 'block';
		document.getElementById("rii1").value = afterStr[0];
		if (afterStr[1] != null && afterStr[0] != afterStr[1]) {
			document.getElementById("recommendedIngredientImg2").src = '${ctx}/resources/img/xmlImg/'
					+ afterStr[1] + '.jpg';
			document.getElementById("rii2show").style.display = 'block';
			document.getElementById("rii2").value = afterStr[1];
			if (afterStr[2] != null && afterStr[1] != afterStr[2]) {
				document.getElementById("recommendedIngredientImg3").src = '${ctx}/resources/img/xmlImg/'
						+ afterStr[2] + '.jpg';
				document.getElementById("rii3show").style.display = 'block';
				document.getElementById("rii3").value = afterStr[2];
			}
		}
	};

	function bannedIngredientImageSet() {
		var beforeStr = document.getElementById("bannedIngre").value;
		beforeStr = beforeStr.replace(/\s/gi, "");
		var afterStr = beforeStr.split(',');
		document.getElementById("bannedIngredientImg1").src = '${ctx}/resources/img/xmlImg/'
				+ afterStr[0] + '.jpg';
		document.getElementById("bii1show").style.display = 'block';
		document.getElementById("bii1").value = afterStr[0];
		if (afterStr[1] != null && afterStr[0] != afterStr[1]) {
			document.getElementById("bannedIngredientImg2").src = '${ctx}/resources/img/xmlImg/'
					+ afterStr[1] + '.jpg';
			document.getElementById("bii2show").style.display = 'block';
			document.getElementById("bii2").value = afterStr[1];
			if (afterStr[2] != null && afterStr[1] != afterStr[2]) {
				document.getElementById("bannedIngredientImg3").src = '${ctx}/resources/img/xmlImg/'
						+ afterStr[2] + '.jpg';
				document.getElementById("bii3show").style.display = 'block';
				document.getElementById("bii3").value = afterStr[2];
			}
		}
	};

	function recommendedFoodImageSet() {
		var beforeStr = document.getElementById("recoFood").value;
		beforeStr = beforeStr.replace(/\s/gi, "");
		var afterStr = beforeStr.split(',');
		document.getElementById("recommendedFoodImg1").src = '${ctx}/resources/img/xmlImg/'
				+ afterStr[0] + '.jpg';
		document.getElementById("rfi1show").style.display = 'block';
		document.getElementById("rfi1").value = afterStr[0];
		if (afterStr[1] != null && afterStr[0] != afterStr[1]) {
			document.getElementById("recommendedFoodImg2").src = '${ctx}/resources/img/xmlImg/'
					+ afterStr[1] + '.jpg';
			document.getElementById("rfi2show").style.display = 'block';
			document.getElementById("rfi2").value = afterStr[1];
			if (afterStr[2] != null && afterStr[1] != afterStr[2]) {
				document.getElementById("recommendedFoodImg3").src = '${ctx}/resources/img/xmlImg/'
						+ afterStr[2] + '.jpg';
				document.getElementById("rfi3show").style.display = 'block';
				document.getElementById("rfi3").value = afterStr[2];
			}
		}
	};
</script>

<script>
	function goToSurvey() {
		document.gotoSurvey.action = "${ctx}/survey/survey.do";
		document.gotoSurvey.method = "get";
		document.gotoSurvey.submit();
	}

	function goToReco() {
		document.gotoSurvey.action = "${ctx}/survey/gradeRegistForm.do";
		document.gotoSurvey.method = "get";
		document.gotoSurvey.submit();
	}
</script>
</head>

<body>
	<%@ include file="../common/header.jspf"%>
	<div class="secotionTitle">
		<h2>
			<span>Beauty Mate</span>고객님의 피부타입은 ${skinType.baumanType } 입니다.
		</h2>
	</div>
	<div class="main-wrapper">
		<div class="container">
			<div class="row">
				<div class="col-xs-12">
					<div class="collapse-style2">
						<div
							class="collapse navbar-collapse navbar-ex1-collapse content-collapse">
							<ul class="nav navbar-nav collapse-nav">
								<li class="active"><a class="collapsed" href="javascript:;"
									data-toggle="collapse" data-target="#collapse6"
									aria-expanded="false">${skinType.baumanType } 은/는? <i
										class="fa fa-minus"></i></a>
									<div id="collapse6" class="collapseItem collapse"
										aria-expanded="false" style="height: 0px;">
										<div class="collapse-inner">
											<div class="media common-media">
												<div class="media-left">
													<img src="${ctx}/resources/img/xmlImg/bauman.jpg"
														alt="Image">
												</div>
												<div class="media-body">
													<p>고객님은 ${skinType.baumanType } ${skinType.explanation}</p>
												</div>
											</div>
										</div>
									</div></li>
								<li class=""><a class="collapsed" href="javascript:;"
									data-toggle="collapse" data-target="#collapse7"
									aria-expanded="false">고객님께 추천드리는 화장품 성분들은.. <i
										class="fa fa-plus"></i></a>
									<div id="collapse7" class="collapseItem collapse"
										aria-expanded="false" style="height: 0px;">
										<div class="collapse-inner">
											<div>
												<table>
													<tr>
														<td>
														<div id="rii1show" style="display: none"><img id="recommendedIngredientImg1" src=""
															alt="Recommended Ingredient" class="img-responsive"
															width="100" height="100"> <input id="rii1"
															name="rii1" value=""
															style="border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px; readonly: true;">
														</div>
														</td>
														<td>
														<div id="rii2show" style="display: none"><img id="recommendedIngredientImg2" src=""
															alt="Recommended Ingredient" class="img-responsive"
															width="100" height="100"> <input id="rii2"
															name="rii2" value=""
															style="border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px; readonly: true;">
															</div>
														</td>
														<td>
														<div id="rii3show" style="display: none"><img id="recommendedIngredientImg3" src=""
															alt="Recommended Ingredient" class="img-responsive"
															width="100" height="100"> <input id="rii3"
															name="rii3" value=""
															style="border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px; readonly: true;">
														</div>
														</td>
													</tr>
												</table>
											</div>
											<hr>
											<p>${skinType.recommendedIngredient }</p>
											<input type="hidden" id="recoIngre" name="recoIngre"
												value="${skinType.recommendedIngredient }">
										</div>
									</div></li>
								<li class=""><a class="collapsed" href="javascript:;"
									data-toggle="collapse" data-target="#collapse8"
									aria-expanded="false">고객님께 비추천드리는 화장품 성분들은..<i
										class="fa fa-plus"></i></a>
									<div id="collapse8" class="collapseItem collapse"
										aria-expanded="false" style="height: 0px;">
										<div class="collapse-inner">
											<div>
												<table>
													<tr>
														<td>
														<div id="bii1show" style="display: none"><img id="bannedIngredientImg1" src=""
															alt="Image Blog" class="img-responsive" width="100"
															height="100"> <input id="bii1" name="bii1" value=""
															style="border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px; readonly: true;">
														</div>
														</td>
														<td><div id="bii2show" style="display: none"><img id="bannedIngredientImg2" src=""
															alt="Image Blog" class="img-responsive" width="100"
															height="100"> <input id="bii2" name="bii2" value=""
															style="border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px; readonly: true;">
														</div>
														</td>
														<td><div id="bii3show" style="display: none"><img id="bannedIngredientImg3" src=""
															alt="Image Blog" class="img-responsive" width="100"
															height="100"> <input id="bii3" name="bii3" value=""
															style="border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px; readonly: true;">
														</div>
														</td>
													</tr>
												</table>
											</div>
											<hr>
											<p>${skinType.bannedIngredient }</p>
											<input type="hidden" id="bannedIngre" name="bannedIngre"
												value="${skinType.bannedIngredient }">
										</div>
									</div></li>
								<li class=""><a class="collapsed" href="javascript:;"
									data-toggle="collapse" data-target="#collapse9"
									aria-expanded="false">고객님께 추천드리는 음식은..<i class="fa fa-plus"></i></a>
									<div id="collapse9" class="collapseItem collapse"
										aria-expanded="false" style="height: 0px;">
										<div class="collapse-inner">
											<div>
												<table>
													<tr>
														<td><div id="rfi1show" style="display: none"><img id="recommendedFoodImg1" src=""
															alt="Image Blog" class="img-responsive" width="100"
															height="100"> <input id="rfi1" name="rfi1" value=""
															style="border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px; readonly: true;">
														</div>
														</td>
														<td><div id="rfi2show" style="display: none"><img id="recommendedFoodImg2" src=""
															alt="Image Blog" class="img-responsive" width="100"
															height="100"> <input id="rfi2" name="rfi2" value=""
															style="border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px; readonly: true;">
														</div>
														</td>
														<td><div id="rfi3show" style="display: none"><img id="recommendedFoodImg3" src=""
															alt="Image Blog" class="img-responsive" width="100"
															height="100"> <input id="rfi3" name="rfi3" value=""
															style="border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px; readonly: true;">
														</div>
														</td>
													</tr>
												</table>
											</div>
											<hr>
											<p>${skinType.recommendedFood }</p>
											<input type="hidden" id="recoFood" name="recoFood"
												value="${skinType.recommendedFood }">
										</div>
									</div></li>
								<li class=""><a class="collapsed" href="javascript:;"
									data-toggle="collapse" data-target="#collapse10"
									aria-expanded="false">고객님 이런 생활습관을 길러보시는건 어떠신가요?<i
										class="fa fa-plus"></i></a>
									<div id="collapse10" class="collapseItem collapse"
										aria-expanded="false" style="height: 0px;">
										<div class="collapse-inner">
											<p>${skinType.habit }</p>
										</div>
									</div></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<br>
			<ul class="list-inline">
				<li>
					<form name="gotoReco">
						<button type="button"
							class="btn btn-common btn-full-round btn-theme"
							onclick="goToReco()">나에게 맞는 화장품 추천 받기</button>
					</form>
				</li>
				<li>
					<form name="gotoSurvey">
						<button type="button"
							class="btn btn-common btn-full-round btn-theme"
							onclick="goToSurvey();">설문 다시하기</button>
					</form>
				</li>
			</ul>
			<br> <br> <br>
		</div>
	</div>
	<%@ include file="../common/footer.jspf"%>
</body>
</html>