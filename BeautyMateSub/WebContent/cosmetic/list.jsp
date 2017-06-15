<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<c:set var="ctx">${pageContext.request.contextPath }</c:set>
<html lang="en">

<head>
<%@ include file="../common/common.jspf"%>
<%@ include file="../common/header.jspf"%>

 <!-- SITE TITTLE -->
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Angel Beauty</title>

  <!-- CUSTOM CSS -->
  <link href="${ctx}/resources/css/style.css" rel="stylesheet">
  <link href="${ctx}/resources/css/default.css" rel="stylesheet" id="option_color">


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
  .no-js #loader { display: none;  }
  .js #loader { display: block; position: absolute; left: 100px; top: 0; }
  .se-pre-con {
  	position: fixed;
  	left: 0px;
  	top: 0px;
  	width: 100%;
  	height: 100%;
  	z-index: 9999;
  	background: url(plugins/simple-pre-loader/images/loader-64x/Preloader_2.gif) center no-repeat #fff;
  }
  </style>

</head>

<body>
<!-- ORDER SECTION -->


      
      <section class="clearfix orderSection padding">
        <div class="container">
          <div class="row">
            <div class="col-xs-12">
              <ul class="list-inline squareBtn">
                <li class="li"><a href="showByCategory.do?cosmeticCategory=essence" class="btn btn-common">에센스</a></li>
                <li class="li"><a href="showByCategory.do?cosmeticCategory=skin" class="btn btn-common">스킨</a></li>
                <li class="li"><a href="showByCategory.do?cosmeticCategory=lotion" class="btn btn-common">로션</a></li>
                <li class="li"><a href="showByCategory.do?cosmeticCategory=cream" class="btn btn-common">크림</a></li>	
                <li class="li"><a href="showByCategory.do?cosmeticCategory=mist" class="btn btn-common">미스트</a></li>
                <li class="li"><a href="showByCategory.do?cosmeticCategory=faceOil" class="btn btn-common ">페이스오일</a></li>
              </ul>
              
            </div>
          </div>
          <div class="row">
            <div class="col-xs-12">
              <form>
                <div class="panel panel-default cartInfo">
                  <div class="panel-heading patternbg"><!-- 문자입력--> </div>
                  <div class="panel-body tableArea">
                    <div class="table-responsive">
                      <table class="table">
							<tbody>
								<c:forEach items="${cosmetics}" var="cosmetic" varStatus="sts">
								<c:set var="cosmeticName" value="${cosmetic.cosmeticName}" />	
									<tr>
										<td style="width: 5%;">
										<c:choose>
										<c:when test="${sts.count == 1}">
										&nbsp;&nbsp;&nbsp;&nbsp;<img src="${ctx }/resources/img/gold.png" alt="Image cart" width="25px" height="25px">
										</c:when>
										<c:when test="${sts.count == 2}">
										&nbsp;&nbsp;&nbsp;&nbsp;<img src="${ctx }/resources/img/silver.png" alt="Image cart" width="25px" height="25px">
										</c:when>
										<c:when test="${sts.count == 3}">
										&nbsp;&nbsp;&nbsp;&nbsp;<img src="${ctx }/resources/img/bronze.png" alt="Image cart" width="25px" height="25px">
										</c:when>
										</c:choose> 										
										<span id="rank" style="font-weight: bold;">${sts.count}</span>
										</td>
										
										<td><a class="cartImage">
										<img src="${cosmetic.img}" alt="Image cart" width="100px" height="100px"></a></td>
												
										<td><span style="font-size: 12px;">${cosmetic.brand}</span><br> 
										<a style="font-size: 15px; font-weight: bold;">${fn:substring(cosmeticName,0,25) }</a><br>
										<span style="font-size: 12px;">${cosmetic.volume}/${cosmetic.cost} </span></td>
										
<%-- 										<td style="width: 10%;"><br> <span class="price">☆☆☆☆★ </span><br>
										&nbsp; &nbsp; &nbsp;<span style="color: DeepPink"> ${cosmetic.averageGrade} </span>&nbsp;</td> --%>
										
											<td style="width: 10%;"><br> 
											 <div style="CLEAR: both; PADDING-RIGHT: 0px; PADDING-LEFT: 0px; BACKGROUND: url(${ctx }/resources/img/icon_star2_size.png) 0px 0px; FLOAT: left; PADDING-BOTTOM: 0px; MARGIN: 0px; WIDTH: 60px; PADDING-TOP: 0px; HEIGHT: 11.5px;">
 												<p style="WIDTH:50%; PADDING-RIGHT:0px; PADDING-LEFT:0px; BACKGROUND: url(${ctx }/resources/img/icon_star_size.png) 1.6px 0px; PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-TOP: 0px; HEIGHT: 11.5px;">
											 	</p>
											 </div><br>
											&nbsp; &nbsp; &nbsp;<span style="color: DeepPink"> ${cosmetic.averageGrade} </span>&nbsp;</td>
										
										
										 <td style="width: 10%;"><a href="#" style="color: gray; font-size:12px;">리뷰 : ${cosmetic.reviews.size() }개</a>&nbsp;</td>
										
										<td><a class="btn btn-common" href="showByNo.do?cosmeticNo=${cosmetic.cosmeticNo}">상세보기</a>
										 <a class="btn btn-common" onclick="javascript:insertPouch(${cosmetic.cosmeticNo})" style="font-size: 12.5px;">★ My Pouch </a>
										 
											<c:if test="${loginedCustomer eq 'admin' }">
											&nbsp; <a href="modifyForm.do?cosmeticNo=${cosmetic.cosmeticNo}" style="margin-right: 10px"><i class="fa fa-pencil"aria-hidden="true"></i> </a> 
											&nbsp;<a href="remove.do?cosmeticNo=${cosmetic.cosmeticNo}"><i class="fa fa-trash-o" aria-hidden="true"></i></a></td>
											</c:if>

										<td>
											<button type="button" class="close" data-dismiss="alert" aria-label="Close">
												<!--  <span aria-hidden="true">×</span> -->
											</button>

										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
                    </div>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
      </section>

    <!-- FOOTER -->

   
 
</body>
<script type="text/javascript">
var insertPouch;

$(document).ready(function() {
	insertPouch = function(cosmeticNo){
		console.log(cosmeticNo);
		$.ajax({
			url:"http://localhost:8888/rest/myPouch/customerNo/"+${customerNo}+"/cosmetic/insert/cosmeticNo/"+cosmeticNo+"/myPouch/customerNo/"+${customerNo}
			,type:"get"
			,dataType:"json"
			,success:successCallback
			,error:errorCallback
		});
	};
	
	var errorCallback = function() {
		alert("수행중 오류가 발생했습니다.");
	};
	var successCallback = function(){
		alert("파우치에 등록 되었습니다.");
	};

});



</script>
</html>

