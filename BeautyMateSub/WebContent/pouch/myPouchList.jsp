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
<title>My Pouch - Beauty Mate</title>
<head>
 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript"
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
<script type="text/javascript"
	src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
 
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
 
 
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"
	integrity="sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ=="
	crossorigin="anonymous">
 
 
<style type="text/css">
@import
	url('https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css')
	;
 
*, *:after, *:before {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}
 
.clearfix:before, .clearfix:after {
	content: " ";
	display: table;
}
 
.clearfix:after {
	clear: both;
}
 
body {
	font-family: sans-serif;
	background: #f6f9fa;
}
 
h1 {
	color: #606060;
	text-align: center;
}
 
a {
	color: #606060;
	text-decoration: none;
	outline: none;
}
.table{
margin-top:10px;
}

th {
 
      border: none;
      background-color: #ec5598;
      padding: 0;
      height: 50px;
      vertical-align: middle;
      font-size: 14px;
      color: #ffffff;
      padding: 10px 10px 10px 10px;
     
      border-bottom: none;
      text-align: center; 
}

 
/*Fun begins*/
.tab_container {
	width: 90%;
	margin: 0 auto;
	padding-top: 70px;
	position: relative;
}
 
#tab1,#tab2,#tab3, #content1,#content2,#content3 {
	clear: both;
	padding-top: 10px;
	display: none;
}
 
label {
	font-weight: 700;
	font-size: 18px;
	display: block;
	float: left;
	width: 20%;
	padding: 1.5em;
	color: #757575;
	cursor: pointer;
	text-decoration: none;
	text-align: center;
	background: #f0f0f0;
}
 
#tab0:checked ~ #content0, #tab1:checked ~ #content1, #tab2:checked ~
	#content2, #tab3:checked ~ #content3, #tab4:checked ~ #content4, #tab5:checked 
	 ~ #content5, #tab6:checked ~ #content6 {
	display: block;
	padding: 20px;
	background: #fff;
	color: #606060;
	border-bottom: 2px solid #f0f0f0;
	-webkit-animation: aniload 1s;
	-moz-animation: aniload 1s;
	-ms-animation: aniload 1s;
	-o-animation: aniload 1s;
	animation: aniload 1s;
}
 
.tab_container .tab-content p, .tab_container .tab-content h3 {
	
}
 
.tab_container .tab-content h3 {
	text-align: center;
}
 
.tab_container [id^="tab"]:checked+label {
	background: #fff;
	box-shadow: inset 0 3px #ec5598;
}
 
.tab_container [id^="tab"]:checked+label .fa {
	color: #ec5598;
}
 
label .fa {
	font-size: 1.3em;
	margin: 0 0.4em 0 0;
}
 
@import url(http://fonts.googleapis.com/earlyaccess/jejugothic.css);
 
@
keyframes fade-in {from { opacity:0;
	
}
 
to {
	opacity: 1;
}
 
}
@
-moz-keyframes fade-in {from { opacity:0;
	
}
 
to {
	opacity: 1;
}
 
}
@
-webkit-keyframes fade-in {from { opacity:0;
	
}
 
to {
	opacity: 1;
}
 
}
@
-ms-keyframes fade-in {from { opacity:0;
	
}
 
to {
	opacity: 1;
}
 
}
@
-o-keyframes fade-in {from { opacity:0;
	
}
 
to {
	opacity: 1;
}
 
}
body {
	font-family: "Jeju Gothic";
}
 
@
-webkit-keyframes aniload {
	from {-webkit-transform: translate(0px, 1000px)
}
 
to {
	-webkit-transform: translate(0px, 0px)
}
 
}
@
-moz-keyframes aniload {
	from {-moz-transform: translate(0px, 1000px)
}
 
to {
	-moz-transform: translate(0px, 0px)
}
 
}
@
-ms-keyframes aniload {
	from {-ms-transform: translate(0px, 1000px)
}
 
to {
	-ms-transform: translate(0px, 0px)
}
 
}
@
-o-keyframes aniload {
	from {-o-transform: translate(0px, 1000px)
}
 
to {
	-o-transform: translate(0px, 0px)
}
 
}
@
keyframes aniload {
	from {transform: translate(0px, 1000px)
}
 
to {
	transform: translate(0px, 0px)
}
 
}
 
/*Media query*/
@media only screen and (max-width: 900px) {
	label span {
		display: none;
	}
	.tab_container {
		width: 98%;
	}
}
 
/*Content Animation*/
@
keyframes fadeInScale { 0% {
	transform: scale(0.9);
	opacity: 0;
}
 
100%
{
transform
 
 
 
 
:
 
 
 
 
 
scale
 
 
 
 
(1);
opacity
 
 
 
 
:
 
 
 
 
 
1;
}
}
.no_wrap {
	text-align: center;
	color: #0ce;
}
 
.link {
	text-align: center;
}
</style>
 
</head>
 
<body>
<%@ include file="../common/header.jspf"%>
	<div class="tab_container">
 
		<input id="tab1" type="radio" name="tabs" onclick="check(0)">
		<label for="tab1"><i class="fa fa-heart"></i><span>내
				화장품</span></label> <input id="tab2" type="radio" name="tabs" onclick="check(1)">
		<label for="tab2"><i class="fa fa-file-text-o"></i><span>내
				뷰티팁</span></label>
				<input id="tab3" type="radio" name="tabs" onclick="check(2)">
		<label for="tab3"><i class="fa fa-thumbs-o-up"></i><span>내
				추천화장품</span></label>
 
 
		<section id="content1" class="tab-content">
			
 
			<div class="section text-center">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<table class="table">
								<thead>
									<tr>
										<th style="text-align:center;">No.</th>
										<th style="text-align:center;">브랜드</th>
										<th style="text-align:center;">화장품명</th>
										<th style="text-align:center;"></th>
									</tr>
								</thead>
								<tbody>
 
 
									<c:forEach items="${list }" var="cosmetic" varStatus="sts">
 
										<tr>
											<td class="ranking">${sts.count}</td>
											<td>${cosmetic.brand }</td>
											
											<td><a href="#">${cosmetic.cosmeticName }</a></td>
											<td><form id="cosmeticDeleteForm"
													action="${ctx }/myPouch/cosmeticClear.do" method="get">
													<!-- <input name="recruitID" type="hidden" value="${recruit.id }">  -->
													<input id="cosmeticNo" name="cosmeticNo" type="hidden"
														value="${cosmetic.cosmeticNo }"> <input
														id="tabCheckedId" name="tabChecked" type="hidden"
														value="100"> <input class="btn-xs btn-danger btnPlay"
														type="button" value="삭제" style="border-color:rgba(0,0,0,.0001);"
														onclick="cosmeticDeletFormFunc(${cosmetic.cosmeticNo })">
 
												</form></td>
 
 
										</tr>
 
 
									</c:forEach>
 
 
 
								</tbody>
 
							</table>
 
 
						</div>
					</div>
				</div>
			</div>
		</section>
 
		<section id="content2" class="tab-content">
			
 
			<div class="section text-center">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<table class="table">
								<thead>
									<tr>
										<th style="text-align:center;">No.</th>
 
										<th style="text-align:center;">제목</th>
										<th style="text-align:center;"></th>
									</tr>
								</thead>
 
								<tbody>
 
									<c:forEach items="${blist }" var="BeautyTip" varStatus="sts">
 
										<tr>
											<td class="ranking">${sts.count}</td>
 
											<td><a href="#">${BeautyTip.beautyTipTitle }</a></td>
											<td><form id="beautyTipDeleteForm"
													action="${ctx }/myPouch/beautyTipClear.do" method="get">
													<!-- <input name="recruitID" type="hidden" value="${recruit.id }">  -->
													<input id="beautyTipNo" name="beautyTipNo" type="hidden"
														value="${BeautyTip.beautyTipNo }"> <input
														id="tabCheckedId" name="tabChecked" type="hidden"
														value="100"> <input
														class="btn-xs btn-danger btnPlay" type="button"
														value="삭제" style="border-color:rgba(0,0,0,.0001);"
														onclick="beautyTipDeletFormFunc(${BeautyTip.beautyTipNo })">
 
												</form></td>
 
 
										</tr>
 
 
									</c:forEach>
 
 
 
 
 
								</tbody>
 
							</table>
 
 
						</div>
					</div>
				</div>
			</div>
		</section>
		<section id="content3" class="tab-content">
			
			<div class="section text-center">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<table class="table">
								<thead>
									<tr>
										<th style="text-align:center;">No.</th>
										<th style="text-align:center;">브랜드</th>
										<th style="text-align:center;">화장품명</th>
										<th style="text-align:center;"></th>
									</tr>
								</thead>
								<tbody>
 
									<c:forEach items="${rlist }" var="cosmetic" varStatus="sts">
 
										<tr>
											<td class="ranking">${sts.count}</td>
											<td>${cosmetic.brand }</td>
											<td><a href="#">${cosmetic.cosmeticName }</a></td>
											<td><form id="cosmeticDeleteForm2"
													action="${ctx }/myPouch/recommendClear.do" method="get">
													<!-- <input name="recruitID" type="hidden" value="${recruit.id }">  -->
													<input id="cosmeticNum" name="cosmeticNum" type="hidden"
														value="${cosmetic.cosmeticNo }"> <input
														id="tabCheckedId" name="tabChecked" type="hidden"
														value="100"> <input class="btn-xs btn-danger"
														type="button" value="삭제" style="border-color:rgba(0,0,0,.0001);"
														onclick="cosmeticDeletFormFunc2(${cosmetic.cosmeticNo })">
 
												</form></td>
 
 
										</tr>
 
 
									</c:forEach>
 
 
 
								</tbody>
 
							</table>
 
 
						</div>
					</div>
				</div>
			</div>
		</section>
		
		
 
 
	</div>
 
 
	<script type="text/javascript">
		
		$(document).ready(function() {
			
			//체크 해제할 라디오버튼 불러오기
	        var tab1 = document.getElementById("tab1");
	        var tab2 = document.getElementById("tab2");
	        var tab3 = document.getElementById("tab3");
	        if("${tab }" == 0){
	        	tab1.checked = true;
	        	
	        }
	        else if("${tab}" == 1){
		        tab2.checked = true;
	        }else{
	        	tab3.checked = true;
	        }
		});
		
		//라디오버튼 선택
		var tab = 0;
		function check(n) {
			tab =  n;
			
		};
		
		
		
		//뷰티팁 form전송
		function beautyTipDeletFormFunc(n) {
			//each돌아서 삭제해야함
			document.getElementById("beautyTipNo").value = n;
			document.getElementById("tabCheckedId").value = tab;
			document.getElementById("beautyTipDeleteForm").submit();
			
		};
		
		
		
		
		//화장품 스크랩 form전송
		function cosmeticDeletFormFunc(n) {
				
				document.getElementById("cosmeticNo").value = n;
				document.getElementById("tabCheckedId").value = tab;
				document.getElementById("cosmeticDeleteForm").submit();
		};
		
		//추천템 스크랩 form전송
		function cosmeticDeletFormFunc2(n) {
			
			document.getElementById("cosmeticNum").value = n;
			document.getElementById("tabCheckedId").value = tab;
			document.getElementById("cosmeticDeleteForm2").submit();
	};
		
	</script>
 
	<script type="text/javascript">
	
		$(document).ready(function() {
 
 
			$("#scrap").click(function() {
				
				if("${loginUser }" == ""){
					alert("로그인 이후 사용가능한 서비스입니다");
					return false;
 
				}
			});		
		});
		
	</script>
 
</body>
 
</html>
 
