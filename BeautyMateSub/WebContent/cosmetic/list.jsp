<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<c:set var="ctx">${pageContext.request.contextPath }</c:set>
<html lang="en">
<head>

 <!-- SITE TITTLE -->
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Angel Beauty</title>

  <!-- GOOGLE FONT -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Raleway:100,300,400,600,700" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Herr+Von+Muellerhoff" rel="stylesheet">
  
  <!-- PLUGINS CSS STYLE -->
  <link href="${ctx}/resources/plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet">
  <link href="${ctx}/resources/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="${ctx}/resources/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="${ctx}/resources/plugins/selectbox/select_option1.css" rel="stylesheet">
  <link href="${ctx}/resources/plugins/owl-carousel/owl.carousel.min.css" rel="stylesheet" media="screen">
  <link href="${ctx}/resources/plugins/fancybox/jquery.fancybox.pack.css" rel="stylesheet">
  <link href="${ctx}/resources/plugins/isotope/isotope.min.css" rel="stylesheet">
  <link href="${ctx}/resources/plugins/datepicker/datepicker.min.css" rel="stylesheet">
  <link href="${ctx}/resources/plugins/bootstrapthumbnail/bootstrap-thumbnail.css" rel="stylesheet">

  
  <!-- CUSTOM CSS -->
  <link href="${ctx}/resources/css/style.css" rel="stylesheet">
  <link href="${ctx}/resources/css/default.css" rel="stylesheet" id="option_color">


  <!-- FAVICON -->
  <link href="${ctx }/resources/img/favicon.png" rel="shortcut icon">

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

<body class="body-wrapper static">
  <div class="se-pre-con"></div>
  <div class="main-wrapper">
    <!-- HEADER -->
    <header id="pageTop" class="header">

      <!-- TOP INFO BAR -->
      <div class="top-info-bar">
        <div class="container">
          <div class="top-bar-right">
            <ul class="list-inline">
                <li><select id="sel">
                          <option value="0"></option>
                          <option value="1">브랜드</option>
                          <option value="2">제품</option>
                         
                        </select></li>
                <li> <input id="search" type="text" placeholder="화장품을 검색해보세요" > <a target="_blank" href="#" class="btn btn-primary first-btn waves-effect waves-light scale-up">search</a></li>
                  <li><a id="login" target="_blank" href="#" class="btn btn-primary first-btn waves-effect waves-light scale-up">LOGIN</a></li>
                <li><a id="login" target="_blank" href="#" class="btn btn-primary first-btn waves-effect waves-light scale-up">JOIN</a></li>
                 
                
            </ul>
              
          </div>
           
        </div>
      </div>

      <!-- NAVBAR -->
      <nav id="menuBar" class="navbar navbar-default lightHeader" role="navigation">
        <div class="container">

          <!-- Brand and toggle get grouped for better mobile display -->
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.html"><img src="${ctx}/resources/img/logo.png" alt="logo" ></a>
          </div>

          <!-- Collect the nav links, forms, and other content for toggling -->
          <div class="collapse navbar-collapse navbar-ex1-collapse">
            <ul class="nav navbar-nav navbar-right">
              <li class="active">
                <a href="index.html">HOME</a>
              </li>
                <li class=" dropdown singleDrop">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">PICKMETEM</a>
               
              </li>
              <li class=" dropdown singleDrop">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">RANKING</a>
               
              </li>
              <li class=" dropdown megaDropMenu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">REVIEW</a>
               
              </li>
              <li class=" dropdown singleDrop">
                <a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">BeautyTip</a>
                
              </li>
              <li class=" dropdown singleDrop">
                <a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">MY Pouch</a>
                
              </li>
             
            </ul>
          </div>

          <!-- Cart button -->
          
        </div>
      </nav>
    </header>


<!-- ORDER SECTION -->
      

      
      
   

  
      
      
      <section class="clearfix orderSection padding">
        <div class="container">
          <div class="row">
            <div class="col-xs-12">
              <ul class="list-inline squareBtn">
                <li class="li"><a href="user-dashboard.html" class="btn btn-common">에센스</a></li>
                <li class="li"><a href="user-profile.html" class="btn btn-common">스킨</a></li>
                <li class="li"><a href="address.html" class="btn btn-common">로션</a></li>
                <li class="li"><a href="all-order.html" class="btn btn-common">크림</a></li>	
                <li class="li"><a href="wishlist.html" class="btn btn-common">미스트</a></li>
                <li class="li"><a href="wishlist.html" class="btn btn-common btn-theme">페이스오일</a></li>
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
										
										<td><a href="single-product.html" class="cartImage">
										<img src="${cosmetic.img}" alt="Image cart" width="100px" height="100px"></a></td>
												
										<td><span style="font-size: 12px;">${cosmetic.brand}</span><br> 
										<a href="single-product.html"style="font-size: 15px; font-weight: bold;">${fn:substring(cosmeticName,0,25) }</a><br>
										<span style="font-size: 12px;">${cosmetic.volume}/${cosmetic.cost} </span></td>
										
<%-- 										<td style="width: 10%;"><br> <span class="price">☆☆☆☆★ </span><br>
										&nbsp; &nbsp; &nbsp;<span style="color: DeepPink"> ${cosmetic.averageGrade} </span>&nbsp;</td> --%>
										
											<td style="width: 10%;"><br> 
											 <div style="CLEAR: both; PADDING-RIGHT: 0px; PADDING-LEFT: 0px; BACKGROUND: url(${ctx }/resources/img/icon_star2_size.png) 0px 0px; FLOAT: left; PADDING-BOTTOM: 0px; MARGIN: 0px; WIDTH: 60px; PADDING-TOP: 0px; HEIGHT: 11.5px;">
 												<p style="WIDTH:50%; PADDING-RIGHT:0px; PADDING-LEFT:0px; BACKGROUND: url(${ctx }/resources/img/icon_star_size.png) 1.6px 0px; PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-TOP: 0px; HEIGHT: 11.5px;">
											 	</p>
											 </div><br>
											&nbsp; &nbsp; &nbsp;<span style="color: DeepPink"> ${cosmetic.averageGrade} </span>&nbsp;</td>
										
										
										
										<td style="width: 10%;"><span style="color: gray">리뷰 : 1833개</span>&nbsp;</td>
										
										<td><a class="btn btn-common" href="showByNo.do?cosmeticNo=${cosmetic.cosmeticNo}">상세보기</a>
										 <a class="btn btn-common" href="#" style="font-size: 12.5px;">★ My Pouch </a>
										&nbsp; <a href="modifyForm.do?cosmeticNo=${cosmetic.cosmeticNo}" style="margin-right: 10px"><i class="fa fa-pencil"aria-hidden="true"></i> </a> 
										&nbsp;<a href="remove.do?cosmeticNo=${cosmetic.cosmeticNo}"><i class="fa fa-trash-o" aria-hidden="true"></i></a></td>


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
   
            


      

  
  <!-- JAVASCRIPTS -->
  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
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
  		$(".se-pre-con").fadeOut("slow");;
  	});
  </script>

</body>

</html>

