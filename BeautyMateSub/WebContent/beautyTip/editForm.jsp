<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx">${pageContext.request.contextPath }</c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- 	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> -->
<!--   <meta http-equiv="X-UA-Compatible" content="IE=edge"> -->
<!--   <meta name="viewport" content="width=device-width, initial-scale=1"> -->
  <title>Beauty Mate</title>

  <!-- GOOGLE FONT -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Raleway:100,300,400,600,700" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Herr+Von+Muellerhoff" rel="stylesheet">

  <!-- PLUGINS CSS STYLE -->
  <link href="${ctx }/resources/plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet">
  <link href="${ctx }/resources/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="${ctx }/resources/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="${ctx }/resources/plugins/selectbox/select_option1.css" rel="stylesheet">
  <link href="${ctx }/resources/plugins/owl-carousel/owl.carousel.min.css" rel="stylesheet" media="screen">
  <link href="${ctx }/resources/plugins/fancybox/jquery.fancybox.pack.css" rel="stylesheet">
  <link href="${ctx }/resources/plugins/isotope/isotope.min.css" rel="stylesheet">
  <link href="${ctx }/resources/plugins/datepicker/datepicker.min.css" rel="stylesheet">
  <link href="${ctx }/resources/plugins/bootstrapthumbnail/bootstrap-thumbnail.css" rel="stylesheet">

  <!-- CUSTOM CSS -->
  <link href="${ctx }/resources/css/styleJ.css" rel="stylesheet">
  <link href="${ctx }/resources/css/default.css" rel="stylesheet" id="option_color">


  <!-- FAVICON -->
  <link href="${ctx }/resources/img/favicon.png" rel="shortcut icon">
  
  <!-- 영상 -->
  <link
	href="https://cdn.rawgit.com/videojs/video.js/v5.4.4/dist/video-js.css"
	rel="stylesheet">
	<script
	src="https://cdn.rawgit.com/videojs/video.js/v5.4.4/dist/video.js"></script>
	<script
	src="https://cdn.rawgit.com/eXon/videojs-youtube/v2.0.3/dist/Youtube.js"></script>
 
   <script src="${ctx}/resources/js/jQuery-2.1.4.min.js"></script>

<style>
  .no-js #loader { display: none;  }
  .js #loader { display: block; position: absolute; left: 100px; top: 0; }
  .se-pre-con {
  	position: fixed;
  	left: 0px;
  	top: 0px;
  	width: 100%;
  	height: 100%;
  	z-index: 9999;
  	background: url(${ctx}/resources/plugins/simple-pre-loader/images/loader-64x/Preloader_2.gif) center no-repeat #fff;
  }
  </style>

</head>

<body class="body-wrapper static">
	<div class="se-pre-con"></div>
	<div class="main-wrapper">
		<%@include file="../common/header.jspf" %>


		<!-- USER SECTION -->
		<section class="clearfix userSection padding">
		<div class="container">

			<div class="row">
				<div class="col-xs-12">
					<div class="innerWrapper">
						<div class="orderBox  patternbg">profile</div>
						<div class="profile">


							<div class="row">
								<div class="">
									<form action="${ctx }/beautyTip/edit.do" method="post"
										enctype="multipart/form-data" class="form-horizontal" name="editForm">
										<input type="hidden" name="beautyTipNo" value="${beautyTip.beautyTipNo }">
										<div class="row">
											<div class="form-group">
												<label for="" class="col-md-2 col-sm-3 control-label">제목</label>
												<div class="col-md-8 col-sm-7">
													<input type="text" name="beautyTipTitle"
														class="form-control" placeholder="" value="${beautyTip.beautyTipTitle }">
												</div>
												<label for="" class="col-md-2 col-sm-3 control-label"></label>
											</div>
											
										<c:forEach var="item" items="${beautyTip.imgArr }" varStatus="sts">
										<div class="myFormGroup" name="form-groupName">
										
											<div class="form-group">
												<center>
													<img src="${loadPath }${beautyTip.imgArr[sts.count - 1] }" width="400"
														height="" align="middle" id="imgId${sts.count - 1 }" name="img" class="showImgClass" alt="profile-image">
												</center>
											</div>
											<div class="form-group">
												<p class="col-md-2 col-sm-3" align="right">사진
												<div class="col-md-8 col-sm-7">
												<!-- file value = readonly이므로 바꿔주고 싶다면(설정하고 싶다면) innerHtml로 해야함 -->
													<input type="file" id="getImgFile${sts.count - 1 }" class="imgFileClass" name="imgFileName${sts.count - 1 }" accept="image/*" onchange="javascript:imgOn(this, ${sts.count - 1 })">
												</div>
											</div>
										
											<div class="form-group">
												<label for="" class="col-md-2 col-sm-3 control-label">내용</label>
												<div class="col-md-8 col-sm-7">
													<textarea cols="0" rows="0" name="beautyTipContent${sts.count - 1 }"  class="form-control">${beautyTip.contentArr[sts.count - 1] }</textarea>
												</div>
											</div>
										</div>
										
											<div class="form-group" name="lastForm">
												<label for="" class="col-md-2 col-sm-3 control-label"></label>
													<div class="col-md-4 col-sm-3">
														<a href="javascript:addTags()" class="btn btn-common btn-full-round btn-theme">정보 추가</a>
													</div>
												<label for="" class="col-md-2 col-sm-3 control-label"></label>
												
												<br>
												<!-- 분홍 라인 -->
												<div class="clearfix footerInfo" style="margin-left:220px;width:740px;"></div>
											</div>
										
										</c:forEach>
										
										<br><br><br>
										
										<div class="form-group" >
					            			<div class="countrySelect" style="width:150px;margin-left:220px">
												<select name="vSelect" id="vSelect" class="">
													<option selected="selected" value="f">파일</option>
													<option value="u">URL</option>
							                     </select>
						                	</div>
						             	</div>
										
										<div class="form-group">
											<p class="col-md-2 col-sm-3" align="right">영상
												<div class="col-md-4 col-sm-3" style="display:inline">
													<input type="file" name="vFileName" value="video" accept="video/*">
												</div>
												<div class="col-md-3 col-sm-2" style="display:none">
													<input type="text" name="vURLName" value="" placeholder="URL">
												</div>
										</div>
										
										<div class="form-group">
										<label for="" class="col-md-2 col-sm-3 control-label"></label>
											<div class="col-md-4 col-sm-3">
													<!-- <input type="hidden" id="inputImg" name="image" value="" > -->
												<input type="submit" class="btn btn-common btn-theme" value="정보 수정">&nbsp;&nbsp;&nbsp;
												<a href="${ctx }/beautyTip/listpage.do?category=${beautyTip.category}" class="btn btn-common btn-theme">작성 취소</a>	
											</div>
											
										<label for="" class="col-md-2 col-sm-3 control-label"></label>
										</div>
										
										</div> <!-- end row -->
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</section>

		<!-- FOOTER -->
	</div>
	<%@ include file="../common/footer.jspf"%>
	

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

	<script>
		//paste this code under head tag or in a seperate js file.
		// Wait for window load
		$(window).load(function() {
			// Animate loader off screen
			$(".se-pre-con").fadeOut("slow");
		});
	</script>
	
	<script type="text/javascript">
	
	
		var imgOn;
	
		var addTags;
		var removeTags;
		
		//var imgFile = $("#getImgFile");
		//var imgFile = document.querySelector("#getImgFile"); //why?
		//var imgFile = document.querySelectorAll(".imgFileClass");
	
		var getImgId = "imgId";
		var getImgIdIdx = 0;
		
		var imgId = getImgId + getImgIdIdx;
		
		var imgIdArr = ["#" + imgId];
		
		$(document).ready(function() {

			//for문으로 올라가는 이미지 셋팅..
			var len = $(".form-group[name=lastForm]").length;
			for(var i = 1; i < len; i++){
				imgId = "#" + getImgId + i;
				imgIdArr.push(imgId);
			}
			
			//추가 버튼들 셋팅
			$(".form-group[name=lastForm]").each(function(idx){
						if(idx != len - 1){
							var aTag = $(this).find("a");	
							aTag.attr("href", "javascript:removeTags(" + (idx + 1) + ")");
							aTag.removeClass("btn btn-common btn-full-round btn-theme").addClass("btn btn-common btn-full-round btn-dark");
							aTag.text("정보 삭제");	
						}
					});
			
			
			
			imgOn = function(fis, i){
				
				var fileList = fis.files;
				var reader = new FileReader();
				reader.readAsDataURL(fileList[0]);
					
				reader.onload = function(){
					var img=$(imgIdArr[i]); //
					
					img.attr("src", reader.result);
					var	width=img.width();
					var	height=img.height();
					if(width > 400){
						img.width(400);	
					}
					
					//img.height(height/2);
					//document.querySelector('#img').src=reader.result;
					};
			};
			
			
			/* $(document).on("change", imgFileArr[0], function(){
				
				console.log("change - " + 0);
				console.log("i - " + curIdx);
				
				var fileList = imgFileArr[0].files;
				var reader = new FileReader();
				reader.readAsDataURL(fileList[0]);
					
				reader.onload = function(){
					var img=$(imgIdArr[0]); //name으로 변경
					img.attr("src", reader.result);
					var	width=img.width();
					var	height=img.height();
					if(width > 400){
						img.width(400);	
					}
					
					//img.height(height/2);
					//document.querySelector('#img').src=reader.result;
					};
			}); */
			
			//
			
						
			//선택한 이미지 보여주기
			/* imgFile[i].onchange = function(){
			
			var fileList=imgFile[i].files;
			var reader = new FileReader();
			reader.readAsDataURL(fileList[0]);
				
			reader.onload = function(){
				var img=$("#imgId"); //name으로 변경
				img.attr("src", reader.result);
				var	width=img.width();
				var	height=img.height();
				if(width > 400){
					img.width(400);	
				}
				
				//img.height(height/2);
				//document.querySelector('#img').src=reader.result;
				};
			}; */
			
			
			
	/* 		<div class="form-group">
			<center>
				<img src="http://placehold.it/1280x700" width="700"
					height="400" align="middle" id="img" alt="profile-image">
			</center>
		</div>
		<div class="form-group">
			<p class="col-md-2 col-sm-3" align="right">사진
			<div class="col-md-8 col-sm-7">
				<input type="file" id="getImgFile" name="imgFileName" accept="image/*" >
			</div>
		</div>
	
		<div class="form-group">
			<label for="" class="col-md-2 col-sm-3 control-label">내용</label>
			<div class="col-md-8 col-sm-7">
				<textarea cols="0" rows="0" name="beautyTipContent"  class="form-control">
				</textarea>
			</div>
		</div> */
			
			
			addTags = function(){
				
				//마지막에 추가 함..
				var len = $(".form-group[name=lastForm]").length;
				//var lastIdx = len - 1;
				
				imgId = getImgId + len;
				var imgFileName = "imgFileName" + len; //변하는 이미지 파일이름
				var beautyTipContent = "beautyTipContent" + len; //여러개의 콘텐츠를 저장하기 위해서 변하는 이름 지정
			
				var tag = 
					'<div class="myFormGroup" name="form-groupName">' + 
					'<div class="form-group">' + 
					'<center><img src="http://placehold.it/1280x700" width="700" height="400" align="middle" id=' + imgId + ' name="img" class="showImgClass" alt="profile-image"></center></div>' +
					'<div class="form-group">' + 
					'<p class="col-md-2 col-sm-3" align="right">사진' +
					'<div class="col-md-8 col-sm-7">' +
					'<input type="file" class="imgFileClass" name=' + imgFileName + ' accept="image/*" onchange="javascript:imgOn(this, ' + len + ')" ></div></div>' + 
					
					'<div class="form-group">' +
					'<label for="" class="col-md-2 col-sm-3 control-label">내용</label>' +
					'<div class="col-md-8 col-sm-7">' +
					'<textarea cols="0" rows="0" name=' + beautyTipContent + ' class="form-control">' + 
					'</textarea></div></div></div>' +
				
					'<div class="form-group" name="lastForm">' +
					'<label for="" class="col-md-2 col-sm-3 control-label"></label>' +
					'<div class="col-md-4 col-sm-3">' +
					'<a href="javascript:addTags()" class="btn btn-common btn-full-round btn-theme">정보 추가</a>' +
					'</div>' +
					'<label for="" class="col-md-2 col-sm-3 control-label"></label>' +
					
					'<br>' + 
					'<div class="clearfix footerInfo" style="margin-left:220px;width:740px"></div>' +
					'</div>';
					
					//
					$(".form-group[name=lastForm]").each(function(idx){
						
						var aTag = $(this).find("a");
						aTag.attr("href", "javascript:removeTags(" + (idx + 1) + ")");
						aTag.removeClass("btn btn-common btn-full-round btn-theme").addClass("btn btn-common btn-full-round btn-dark");
						aTag.text("정보 삭제");
						if(idx == len - 1){
							$(this).after(tag);
							
							//디버그용
							//$(this).next().find("textarea").val("idx : " + (idx + 1));
						}
						
					});
				
				
				//#getImgFile0
				imgId = "#" + imgId;
				imgIdArr.push(imgId);
			};
			
			removeTags = function(idx){
				
				/* $(".form-group[name=lastForm]").eq(idx).fadeout("slow");
				$(".myFormGroup").eq(idx).fadeout("slow"); */
				
				$(".form-group[name=lastForm]").eq(idx).remove();
				$(".myFormGroup").eq(idx).remove();
				//
				var len = $(".form-group[name=lastForm]").length;
				
				//정렬
				$(".imgFileClass").each(function(i){
					$(this).attr("onchange", "javascript:imgOn(this, " + i + ")");
					
				});
				
				imgIdArr.splice(0, imgIdArr.length);
				$(".showImgClass").each(function(i){
					var name = "#" + getImgId + i;
					imgIdArr.push(name);
					$(this).attr("id", getImgId + i);
				});
				
				//마지막 것
				$(".form-group[name=lastForm]").eq(len - 1).find("a")
				.attr("href", "javascript:addTags()")
				.removeClass("btn btn-common btn-full-round btn-dark").addClass("btn btn-common btn-full-round btn-theme")
				.text("정보 추가");
				
				//하나만 남으면(원래 있던거..)
				if(len == 1){
					
					var aTag = $(".form-group[name=lastForm]").find("a");
					aTag.attr("href", "javascript:addTags()");
					aTag.removeClass("btn btn-common btn-full-round btn-dark").addClass("btn btn-common btn-full-round btn-theme");
					aTag.text("정보 추가");
				}
				
				//imgIdArr.splice(idx, 1);
			};
			
			//
			$("#vSelect").change(function(){
				
				//console.log($(this).val());
				
				var selValue = $(this).val();
				
				console.log(selValue);
				if(selValue == "u"){
					$("input[name=vURLName]").parent().show();
					$("input[name=vFileName]").parent().hide();
					$("input[name=vFileName]").val(""); //초기화
					
				}else{
					$("input[name=vURLName]").parent().hide();
					$("input[name=vFileName]").parent().show();
					$("input[name=vURLName]").val("");
				}
			});
			
			//
			$("form[name=editForm]").submit(function(event) {
				
				$(".imgFileClass").each(function(i){
					var x = $(this).val();
					if (x == "") {
				        alert("그림 파일들을 모두 등록 해야 됨!!!");
				        event.preventDefault();
				        return false;
				    }	
				});
			});
			
		});/* endready */
		
		</script>
	

</body>

</html>
