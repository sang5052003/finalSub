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
  <link href="${ctx}/resources/img/favicon.png" rel="shortcut icon">

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



<!-- SINGLE PRODUCT SECTION -->
    <section class="clearfix singleProduct">
      <div class="container">
        <div class="row">
          <div class="col-sm-6 col-xs-12">
            <div class="singleIamge">
              <img src="http://file.beautynet.co.kr/updata2/upload/goods/64/75964/cream_75964_20161031171620468.jpg" alt="Image Single Product" width="340px" height="340px">
            </div>
          </div>
          <div class="col-sm-6 col-xs-12">
            <div class="singleProductInfo">
              <br>
              <h5>미샤 </h5>
              <h4 style="color : Dimgray"> [니어스킨] 토탈 세라마이드 크림 </h4> <!--<del>$50</del>-->
                
            <ul class="list-inline category">
                <li>tag:</li>
                <li><a href="#" style="color:orangeRed;">Ranking</a></li>
                <li><a href="#" style="color:orangeRed;">skin</a></li>
                <li><a href="#" style="color:orangeRed;">4.0점</a></li>
                <li><a href="#" style="color:orangeRed;">1,800명</a></li>
            </ul>
                
        
        
           
               <div class="progressSingle" style="line-height:0px;">
                    <span style="color:gold; font-size: 18px;">★★★★★</span>
                      <div class="progress">
                        <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:75%">  
                             
                        </div> 
                         <!-- <span style="margin-left:250px; color:black;">75명</span> -->
                           
                      </div>
                
               
                </div>
                
                <div class="progressSingle" style="line-height:0px;">
                    <span style="color:gold; font-size: 18px;">★★★★</span>
                      <div class="progress">
                        <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:45%">
                        </div>
                      </div>
                </div>
                
                <div class="progressSingle" style="line-height:0px;">
                    <span style="color:gold; font-size: 18px;">★★★</span>
                      <div class="progress">
                        <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:85%">
                        </div>
                      </div>
                </div>
                
                <div class="progressSingle" style="line-height:0px;">
                    <span style="color:gold; font-size: 18px;">★★</span>
                      <div class="progress">
                        <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:15%">
                        </div>
                      </div>
                </div>
                
                <div class="progressSingle" style="line-height:0px;">
                    <span style="color:gold; font-size: 18px;">★</span>
                      <div class="progress">
                        <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:5%">
                        </div>
                      </div>
                </div>
                
             
                   
              
                
            
                       
                
            <br>                           
              <div class="finalCart">
                <a href="cart.html" class="btn btn-primary"></i>★ My Pouch</a>
              </div>
         
            </div>
          </div>
        </div>
        
        <div class="row">
          <div class="col-xs-12">
            <div class="tabCommon tabOne singleTab">
              <ul class="nav nav-tabs">
              <li class="active"><a data-toggle="tab" href="#details">Details</a></li>
                <li><a data-toggle="tab" href="#reviews">Reviews (2)</a></li>
              </ul>

              <div class="tab-content patternbg">
              <div id="details" class="tab-pane fade in active">
                  <h4>Product Description</h4>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut per spici</p>
                  <ul class="list-inline">
                    <li><i class="fa fa-check" aria-hidden="true"></i>Vestibulum iaculis quam.</li>
                    <li><i class="fa fa-check" aria-hidden="true"></i>Vestibulum iaculis quam.</li>
                    <li><i class="fa fa-check" aria-hidden="true"></i>Quam ac libero volutpat placerat.</li>
                    <li><i class="fa fa-check" aria-hidden="true"></i>Quam ac libero volutpat placerat.</li>
                  </ul>
                </div>
                <div id="reviews" class="tab-pane fade">
                  <div class="blogCommnets">
                    <div class="media">
                      <a class="media-left" href="#">
                        <img class="media-object" src="http://placehold.it/70x70" alt="Image">
                      </a>
                      <div class="media-body">
                        <h4 class="media-heading">Integer blandit</h4>
                        <h5><span><i class="fa fa-calendar" aria-hidden="true"></i>22 September, 2016</span></h5>
                        <p>Reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.</p>
                        <button class="btn btn-link">Reply</button>
                      </div>
                    </div>
                    <div class="media mediaMargin">
                      <a class="media-left" href="#">
                        <img class="media-object" src="http://placehold.it/70x70" alt="Image">
                      </a>
                      <div class="media-body">
                        <h4 class="media-heading">Integer blandit</h4>
                        <h5><span><i class="fa fa-calendar" aria-hidden="true"></i>22 September, 2016</span></h5>
                        <p>Reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.</p>
                        <button class="btn btn-link">Reply</button>
                      </div>
                    </div>
                    <div class="media">
                      <a class="media-left" href="#">
                        <img class="media-object" src="http://placehold.it/70x70" alt="Image">
                      </a>
                      <div class="media-body">
                        <h4 class="media-heading">Integer blandit</h4>
                        <h5><span><i class="fa fa-calendar" aria-hidden="true"></i>22 September, 2016</span></h5>
                        <p>Reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.</p>
                        <button type="button" class="btn btn-link">Reply</button>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-xs-12">
            <div class="relatedTitle">
              <h2>Related Products</h2>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-3 col-sm-6 col-xs-12">
            <a href="#" class="realatedInner">
              <div class="productBox">
                <img src="http://placehold.it/300x375" alt="Image Product" class="img-responsive">
              </div>
              <div class="productName">Oil Set</div>
              <div class="productPrice">$15</div>
            </a>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12">
            <a href="#" class="realatedInner">
              <div class="productBox">
                <img src="http://placehold.it/300x375" alt="Image Product" class="img-responsive">
              </div>
              <div class="productName">Herbal Body Cream</div>
              <div class="productPrice">$50</div>
            </a>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12">
            <a href="#" class="realatedInner">
              <div class="productBox">
                <img src="http://placehold.it/300x375" alt="Image Product" class="img-responsive">
              </div>
              <div class="productName">Flying Ninja</div>
              <div class="productPrice">$75</div>
            </a>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12">
            <a href="#" class="realatedInner">
              <div class="productBox">
                <img src="http://placehold.it/300x375" alt="Image Product" class="img-responsive">
              </div>
              <div class="productName">Ninja Silhouette</div>
              <div class="productPrice">$35</div>
            </a>
          </div>
        </div>
      </div>
    </section>



  <!-- JAVASCRIPTS -->
  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
  <script src="plugins/jquery-ui/jquery-ui.min.js"></script>
  <script src="plugins/bootstrap/js/bootstrap.min.js"></script>
  <script src="plugins/selectbox/jquery.selectbox-0.1.3.min.js"></script>
  <script src="plugins/owl-carousel/owl.carousel.min.js"></script>
  <script src="plugins/isotope/isotope.min.js"></script>
  <script src="plugins/fancybox/jquery.fancybox.pack.js"></script>
  <script src="plugins/isotope/isotope-triger.min.js"></script>
  <script src="plugins/smoothscroll/SmoothScroll.min.js"></script>
  <script src="plugins/datepicker/bootstrap-datepicker.min.js"></script>
  <script src="plugins/syotimer/jquery.syotimer.min.js"></script>
  <script src="js/custom.js"></script>

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
