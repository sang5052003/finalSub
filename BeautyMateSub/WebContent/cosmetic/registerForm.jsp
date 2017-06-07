<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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



<!-- USER SECTION -->
      <section class="clearfix userSection padding">
        <div class="container">
          
          <div class="row">
            <div class="col-xs-12">
              <div class="innerWrapper">
                <div class="orderBox  patternbg">
                  화장품 등록
                </div>
                <div class="profile">
                  <div class="row">
                    <div class="col-md-2 col-sm-3 col-xs-12">
                      <div class="thumbnail">
                        <img src="http://placehold.it/270x270" alt="profile-image">
                        <div class="caption">
                          <a href="#" class="btn btn-primary btn-block" role="button">사진</a>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-10 col-sm-9 col-xs-12">
                        <form class="form-horizontal" method="post" action="register.do">
                    <div class="form-group">
                      <label class="control-label col-md-2 col-sm-3 col-xs-12" for="cvcnumber">카테고리</label>
                      <div class="countrySelect col-sm-7 col-xs-12">
                        <select name="category" id="guiest_id2" class="select-drop">
                        <option value="" selected>-- 선택하세요 --</option>
                         <option value="essence">에센스</option>
							<option value="mist">미스트</option>
							<option value="lotion">로션</option>
							<option value="faceOil">페이스오일</option>
							<option value="skin">스킨</option>
							<option value="cream">크림</option>
                        </select>
                      </div>
                      
                      
                    </div>
                          <div class="form-group">
                            <label for="" class="col-md-2 col-sm-3 control-label">브랜드</label>
                            <div class="col-md-10 col-sm-9">
                              <input name="brand" type="text" value="" class="form-control" id="" placeholder="">
                            </div>
                          </div>
                          <div class="form-group">
                            <label for="" class="col-md-2 col-sm-3 control-label">제품명</label>
                            <div class="col-md-10 col-sm-9">
                              <input name="cosmeticName" type="text" value="" class="form-control" id="" placeholder="">
                            </div>
                          </div>
                          <div class="form-group">
                            <label for="" class="col-md-2 col-sm-3 control-label">용량</label>
                            <div class="col-md-10 col-sm-9">
                              <input name="volume" type="text" value="" class="form-control" id="" placeholder="">
                            </div>
                          </div>
                          <div class="form-group">
                            <label for="" class="col-md-2 col-sm-3 control-label">가격</label>
                            <div class="col-md-10 col-sm-9">
                              <input name="cost" type="text" value="" class="form-control" id="" placeholder="">
                            </div>
                          </div>
                          <div class="form-group">
                            <label for="" class="col-md-2 col-sm-3 control-label">이미지 주소</label>
                            <div class="col-md-10 col-sm-9">
                              <input name="img" type="text" value="" class="form-control" id="" placeholder="">
                            </div>
                          </div>
                          <div class="form-group">
                            <label for="" class="col-md-2 col-sm-3 control-label">성분</label>
                            <div class="col-md-10 col-sm-9">
                                <textarea class="form-control" name="ingredients" rows="13" cols="50"></textarea>
                            </div>
                          </div>
                          
                          <div class="form-group">
                            <div class="col-md-offset-10 col-md-2 col-sm-offset-9 col-sm-3">
                              <button type="submit" class="btn btn-primary btn-block">등록</button>
                            </div>
                          </div>
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
