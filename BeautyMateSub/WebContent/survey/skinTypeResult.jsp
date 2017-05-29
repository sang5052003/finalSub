<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<<<<<<< HEAD
피부타입 : ${skinType.baumanType }
<br>
추천성분 : ${skinType.recommendedIngredient }
<br>
비추천 성분 : ${skinType.bannedIngredient }
<br>
추천 습관 : ${skinType.habit }
<br>
추천 화장품 : ${skinType.recommendedCosmetics }
<br>
=======
	<div class="b_result">
		<h3>
			<span class="point_font1"> <!-- 유저아이디  --></span> 고객님의 피부 타입 테스트 결과
		</h3>
>>>>>>> refs/remotes/origin/sangkiSub(0529)after


		<div
			style="z-index: 5; position: absolute; float: left; width: 256px; margin: 64px 0 0px 93px;">


		</div>
		<div
			style="z-index: 7; position: absolute; width: 150px; margin: 80px 0 0px 394px; float: left; text-align: center; color: #FFFFFF; font-size: 45px; font-weight: bold; line-height: 165px;">
			피부타입</div>
		<div class="b_result_ment1">
			<font style="color: #FF0000">Don't worry~</font><br>유수분 밸런스와
			피부장벽만 튼튼하게 관리해준다면<br>건강한 피부를 유지할 수 있어요<br>닥터지와 함께 관리하세요
		</div>

		<div class="b_result_ment">
			유저아이디 님은 <span style="font-weight: bold;"> 타입설명 </span>
		</div>
		<style>
.icon_box_sty {
	padding: 40px 10px 10px 10px;
	text-align: center;
	margin: 0px auto;
	width: 94%;
	display: block;
}

.icon_sty {
	float: left;
	width: 25%;
}
</style>
		<div style="background-color: #f1f1f1; padding: 20px;">
			<div class="text_box_sty">
				<h2 class="h2_sty">
					유저이름님에게 <span style="color: #22ac38;">추천</span>드리는 화장품 성분들입니다
				</h2>

				<div class="text_sty">추천성분</div>
			</div>
		</div>
		<div style="background-color: #f1f1f1; padding: 20px;">
			<div class="text_box_sty">
				<h2 class="h2_sty">
					유저이름님에게 <span style="color: #bb0909;">비추천</span>하는 화장품 성분들입니다
				</h2>
				<div class="text_sty">비추천성분</div>
			</div>
		</div>
		<div style="background-color: #f1f1f1; padding: 20px;">
			<div class="text_box_sty">
				<h2 class="h2_sty">피부 타입 별 추천 식품이 따로 있어요.</h2>

				<div class="text_sty">음식</div>
			</div>
		</div>
		<div style="background-color: #f1f1f1; padding: 20px;">
			<div class="text_box_sty">
				<h2 class="h2_sty">추천 생활 습관을 실천해 보세요</h2>
			</div>
			<div class="text_sty">생습</div>
		</div>

	</div>
</body>
</html>