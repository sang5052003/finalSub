<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <c:set var="ctx">${pageContext.request.contextPath }</c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <!-- SITE TITTLE -->
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Blog - Angel Beauty</title>

  <!-- GOOGLE FONT -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Raleway:100,300,400,600,700" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Herr+Von+Muellerhoff" rel="stylesheet">

  <link href="${pageContext.request.contextPath}/resources/plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/plugins/selectbox/select_option1.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/plugins/owl-carousel/owl.carousel.min.css" rel="stylesheet" media="screen">
  <link href="${pageContext.request.contextPath}/resources/plugins/fancybox/jquery.fancybox.pack.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/plugins/isotope/isotope.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/plugins/datepicker/datepicker.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/plugins/bootstrapthumbnail/bootstrap-thumbnail.css" rel="stylesheet">

  <!-- CUSTOM CSS -->
  <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/css/default.css" rel="stylesheet" id="option_color">
  

  <!-- FAVICON -->
  <link href="${pageContext.request.contextPath}/resources/img/favicon.png" rel="shortcut icon">

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
  	background: url(${pageContext.request.contextPath}/resources/plugins/simple-pre-loader/images/loader-64x/Preloader_2.gif) center no-repeat #fff;
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
              <li><a href=""><i class="fa fa-envelope" aria-hidden="true"></i> info@yourdomain.com</a></li>
              <li><span><i class="fa fa-phone" aria-hidden="true"></i>+1 234 567 8900</span></li>
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
            <a class="navbar-brand" href="index.html"><img src="${pageContext.request.contextPath}/resources/img/logo.png" alt="logo"></a>
          </div>

          <!-- Collect the nav links, forms, and other content for toggling -->
          <div class="collapse navbar-collapse navbar-ex1-collapse">
            <ul class="nav navbar-nav navbar-right">
              <li class="">
                <a href="index.html">Home</a>
              </li>
              <li class=" dropdown singleDrop">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Services</a>
                <ul class="dropdown-menu dropdown-menu-left">
                  <li><a href="service.html">Services</a></li>
                  <li><a href="single-service.html">Single Services</a></li>
                </ul>
              </li>
              <li class=" dropdown megaDropMenu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Store</a>
                <ul class="row dropdown-menu">
                  <li class="col-sm-3 col-xs-12">
                    <ul class="list-unstyled">
                      <li><a href="product-right-sidebar.html">Product Right Sidebar</a></li>
                      <li><a href="product-left-sidebar.html">Product Left Sidebar</a></li>
                      <li><a href="product-3col.html">Product 3 Col</a></li>
                      <li><a href="product-4col.html">Product 4 Col</a></li>
                      <li><a href="single-product.html">Single product</a></li>
                    </ul>
                  </li>
                  <li class="col-sm-3 col-xs-12">
                    <ul class="list-unstyled">
                      <li><a href="user-dashboard.html">User Dashboard</a></li>
                      <li><a href="user-profile.html">User Profile</a></li>
                      <li><a href="address.html">Address</a></li>
                      <li><a href="all-order.html">All Order</a></li>
                      <li><a href="wishlist.html">Wishlist</a></li>
                    </ul>
                  </li>
                  <li class="col-sm-3 col-xs-12">
                    <ul class="list-unstyled">
                      <li><a href="cart.html">Cart</a></li>
                      <li><a href="checkout.html">Checkout</a></li>
                      <li><a href="success.html">Confirmation</a></li>
                      <li><a href="pricing.html">Price table</a></li>
                    </ul>
                  </li>
                  <li class="col-sm-3 col-xs-12 mega-img">
                    <a href="#"><img src="http://placehold.it/326x218" alt="logo"></a>
                  </li>
                </ul>
              </li>
              <li class=" dropdown singleDrop">
                <a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Pages</a>
                <ul class="dropdown-menu dropdown-menu-left">
                  <li><a href="about.html">About Us</a></li>
                  <li><a href="contact.html">Contact Us</a></li>
                  <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Team</a>
                    <ul class="dropdown-menu">
                      <li><a href="member.html">Our Team</a></li>
                      <li><a href="single-member-profile.html">Single Team</a></li>
                    </ul>
                  </li>
                  <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Gallery</a>
                    <ul class="dropdown-menu">
                      <li><a href="gallery-v1.html">Gallery 3 Col</a></li>
                      <li><a href="gallery-v2.html">Gallery 4 Col</a></li>
                    </ul>
                  </li>
                  <li><a href="login-signup.html">Login SignUp</a></li>
                  <li><a href="404.html">404 Not Found</a></li>
                  <li><a href="coming-soon.html">Coming Soon</a></li>
                </ul>
              </li>
              <li class="active dropdown singleDrop">
                <a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Blog</a>
                <ul class="dropdown-menu dropdown-menu-right">
                  <li class="dropdown dropdown-submenu">
                    <a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown">Blog</a>
                    <ul class="dropdown-menu">
                      <li><a href="blog-right-sidebar.html">Right Sidebar</a></li>
                      <li><a href="blog-left-sidebar.html">Left Sidebar</a></li>
                      <li><a href="blog-fullwidth.html">Fullwidth</a></li>
                    </ul>
                  </li>
                  <li class="dropdown dropdown-submenu">
                    <a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown">Single Blog</a>
                    <ul class="dropdown-menu">
                      <li><a href="blog-single-right-sidebar.html">Right Sidebar</a></li>
                      <li><a href="blog-single-left-sidebar.html">Left Sidebar</a></li>
                      <li><a href="blog-single-fullwidth.html">Fullwidth</a></li>
                    </ul>
                  </li>
                </ul>
              </li>
              <li class=" dropdown singleDrop">
                <a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Components</a>
                <ul class="dropdown-menu">
                  <li><a href="tabs-pagination.html">Tab & Pagination</a></li>
                  <li><a href="accrodion.html">Accrodions</a></li>
                  <li><a href="buttons-alerts.html">Buttons & Alerts</a></li>
                </ul>
              </li>
            </ul>
          </div>

          <!-- Cart button -->
          <div class="cart_btn">
            <a href="cart.html"><i class="fa fa-shopping-basket" aria-hidden="true"></i><span class="badge">0</span></a>
          </div>

        </div>
      </nav>
    </header>


<!-- PAGE TITLE SECTION -->
    <section class="clearfix pageTitleArea" style="background-image: url(http://placehold.it/1920x250);">
        <div class="container">
	        <div class="pageTitle">
	            <h1>blog page</h1>
	        </div>
        </div>
    </section>

<!-- BLOG SINGLE SECTION -->
    <section class="container-fluid clearfix blog padding">
      <div class="container">
        <div class="row">

					<div id="searchDiv" class="row">
						
	            		<div class="form-group col-sm-2" >
	            			<div class="countrySelect" style="margin-left:15px;">
	            		
								<select name="guiest_id2" id="guiest_id2" class="select-drop" style="margin-left:15px;">
									<option value="n"
										<c:out value="${pageMaker.pager.searchType == null?'selected':''}"/>>
										---</option>
									<option value="t"
										<c:out value="${pageMaker.pager.searchType eq 't'?'selected':''}"/>>
										Title</option>
									<option value="c"
										<c:out value="${pageMaker.pager.searchType eq 'c'?'selected':''}"/>>
										Author</option>
			                          <!-- <option value="0">작성자</option>
			                          <option value="1">제목</option> -->
			                     </select>
		                	</div>
		             	</div>
		             
		              <div class="input-group col-sm-7" >
		                <input type="text" class="form-control" name="searchInput" placeholder="메이크업 정보 검색..." aria-describedby="basic-addon2" >
		                <a href="#" class="input-group-addon" id="basic-addon2"><i class="fa fa-search "></i></a>
		              </div>
		              
		              <div class="input-group col-sm-1"></div>
		              
	              </div>
	              <br><br>

          <div class="col-sm-4 col-xs-12">
            <div class="blogSidebar">
            
            	
            	
            <a href="${ctx }/beautyTip/registForm.do" class="btn btn-block btn-theme">등록</a><br>
            	
	            
              <div class="panel panel-default">
                <div class="panel-heading">Categories</div>
                <div class="panel-body">
                  <ul class="list-unstyle categoryList">
                    <li><a href="#" id="makeUpInfoTab">메이크업 정보</a></li>
                    <li><a href="#" id="saleInfoTab">세일 정보</a></li>
                  </ul>
                </div>
              </div>
              
              <!-- 에.. -->
              <div class="panel panel-default recentBlogPosts">
                <div class="panel-heading">Resent Posts</div>
                <div class="panel-body">
                <c:forEach var="beautyTip" items="${recentList }">
                  <div class="media">
                    <a class="media-left" href="#">
                      <img class="media-object" src="${loadPath}${beautyTip.firstImage }" width="80px" alt="Image">
                    </a>
                    <div class="media-body">
                      <h4 class="media-heading"><a href="#">"${beautyTip.beautyTipTitle }"</a></h4>
                      <ul class="list-inline">
                        <li><a href="#"><i class="fa fa-user" aria-hidden="true"></i>${beautyTip.customer.id }</a></li>
                        <li><a href="#"><i class="fa fa-comments-o" aria-hidden="true"></i>${beautyTip.beautyTipReplys.size() } Comments</a></li>
                      </ul>
                    </div>
                  </div>
                  </c:forEach>
                  
                </div>
              </div>
            </div>
          </div>

<!-- blog list start -->
          <div class="col-sm-8 col-xs-12">
          	<div id="post">
				<c:forEach var="beautyTip" items="${beautyTipList }">
					<div class="panel panel-default"  style="margin-left:50px;" >
					<br>
		              <img src="${loadPath}${beautyTip.firstImage }" alt="Image Blog" class="img-responsive" style="width:400px;margin-left:160px;margin-top:50px;margin-bottom:50px;" >
			              <div class="clearfix reviewSection patternbg text-center">
				              
				              <div style="margin:30px">
				              	<h2><a href="${ctx }/beautyTip/showDetail.do?beautyTipNo=${beautyTip.beautyTipNo }">${beautyTip.beautyTipTitle }</a></h2>
				              	<div class="text-left">
					              <p>${beautyTip.firstContent } </p>
					              
				              	</div>
				              </div>
				              
				              
			              </div>
			              		<br>
			              		<ul class="list-inline" style="margin-left:20px">
					                <li><i class="fa fa-user" aria-hidden="true"></i> ${beautyTip.customer.id }</li>
					                <li><i class="fa fa-comments-o" aria-hidden="true"></i> ${beautyTip.beautyTipReplys.size() } Comments</li>
					                <c:if test="${beautyTip.customer.id eq loginedId }">
						                <li style="margin-left:360px"><a href="javascript:delFunc(${beautyTip.beautyTipNo })" class="btn btn-common btn-dark">삭제</a></li>
					                </c:if>
					              </ul>
					              <br>
		            </div>
				</c:forEach>
			</div>
			
			<div class="paginationCommon paginationOne text-center " style="margin-right:50px;">
              <nav aria-label="Page navigation">
                <ul class="pagination">
                	<div id = "pageDiv">
                			<c:if test="${pageMaker.prev}">
                				<c:choose>
                				
                					<c:when test="${pageMaker.pager.keyword != null }">
                						<li><a
											href="listsearch.do${pageMaker.makeSearchForBeautyTip(pageMaker.startPage - 1) }" aria-label="Previous">
											 <span aria-hidden="true"><i class="fa fa-chevron-left" aria-hidden="true"></i></span>
											 </a>
										</li>
                					</c:when>
                					<c:otherwise>
                						<li><a href="listpage.do${pageMaker.makeQueryForBeautyTip(pageMaker.startPage - 1, category) }" aria-label="Previous">
											<span aria-hidden="true"><i class="fa fa-chevron-left" aria-hidden="true"></i></span>
											</a>
										</li>	
                					</c:otherwise>
                				</c:choose>
								
							</c:if>
							
							<c:forEach begin="${pageMaker.startPage }"
								end="${pageMaker.endPage }" var="idx">
								<li 
									<c:out value="${pageMaker.pager.page == idx?'class =active':''}"/>>
									
									<c:choose>
										<c:when test="${pager.keyword != null }">
											<a href="listsearch.do${pageMaker.makeSearchForBeautyTip(idx)}">${idx}</a>										
										</c:when>
										<c:otherwise>
											<a href="listpage.do${pageMaker.makeQueryForBeautyTip(idx, pageMaker.pager.category) }">${idx}</a>	
										</c:otherwise>	
									</c:choose>
									
									
							</c:forEach>
							
							<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
								<c:choose>
									<c:when test="${pager.keyword != null }">
										<li><a
											href="listsearch.do${pageMaker.makeSearchForBeautyTip(pageMaker.endPage +1) }" aria-label="Next">
											<span aria-hidden="true"><i class="fa fa-chevron-right" aria-hidden="true"></i></span>
											</a>
										</li>
									</c:when>
									<c:otherwise>
										<li>
											<a href="listpage.do${pageMaker.makeQueryForBeautyTip(pageMaker.endPage +1, pageMaker.category) }" aria-label="Next">
											<span aria-hidden="true"><i class="fa fa-chevron-right" aria-hidden="true"></i></span>
											</a>
										</li>
									</c:otherwise>
								</c:choose>
							</c:if>		
					</div>										
                </ul>
              </nav>
            </div>
			
            


          </div>

        </div>
      </div>
    </section>

    <!-- FOOTER -->
    <footer style="background-image: url(${ctx}/resources/img/home/footer-bg.jpg);">
      <!-- BACK TO TOP BUTTON -->
      <a href="#pageTop" class="backToTop"><i class="fa fa-angle-up" aria-hidden="true"></i></a>
      <!-- FOOTER INFO -->
      <div class="clearfix footerInfo">
        <div class="container">
          <div class="row">
            <div class="col-sm-3 col-xs-12">
              <div class="footerText">
                <a href="index.html" class="footerLogo"><img src="${pageContext.request.contextPath }/resources/img/logo-footer.png" alt="Footer Logo"></a>
                <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa officia.Lorem ipsum dolor sit amet.</p>
                <p>consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
              </div>
            </div>
            <div class="col-sm-3 col-xs-12 paddingLeft">
              <div class="footerInfoTitle">
                <h4>Useful Links</h4>
              </div>
              <div class="useLink">
                <ul class="list-unstyled">
                  <li><a href="#"><i class="fa fa-angle-double-right" aria-hidden="true"></i>Web Design</a></li>
                  <li><a href="#"><i class="fa fa-angle-double-right" aria-hidden="true"></i>About Anzel Beauty Spa</a></li>
                  <li><a href="#"><i class="fa fa-angle-double-right" aria-hidden="true"></i>Mobile</a></li>
                  <li><a href="#"><i class="fa fa-angle-double-right" aria-hidden="true"></i>Why Anzel Beauty Spa</a></li>
                  <li><a href="#"><i class="fa fa-angle-double-right" aria-hidden="true"></i>Social Media</a></li>
                </ul>
              </div>
            </div>
            <div class="col-sm-3 col-xs-12">
              <div class="footerInfoTitle">
                <h4>Gallery</h4>
              </div>
              <div class="footerGallery row">
                <div class="col-xs-4">
                  <a href="gallery-v2.html" style="background-image: url(http://placehold.it/75x75);"></a>
                </div>
                <div class="col-xs-4">
                  <a href="gallery-v2.html" style="background-image: url(http://placehold.it/75x75);"></a>
                </div>
                <div class="col-xs-4">
                  <a href="gallery-v2.html" style="background-image: url(http://placehold.it/75x75);"></a>
                </div>
                <div class="col-xs-4">
                  <a href="gallery-v2.html" style="background-image: url(http://placehold.it/75x75);"></a>
                </div>
                <div class="col-xs-4">
                  <a href="gallery-v2.html" style="background-image: url(http://placehold.it/75x75);"></a>
                </div>
                <div class="col-xs-4">
                  <a href="gallery-v2.html" style="background-image: url(http://placehold.it/75x75);"></a>
                </div>
              </div>
            </div>
            <div class="col-sm-3 col-xs-12">
              <div class="footerInfoTitle">
                <h4>Newsletters</h4>
              </div>
              <div class="footerText">
                <p>Sign up for our mailing list to get latest updates and offers.</p>
                <div class="input-group">
                  <input type="text" class="form-control" placeholder="Email address" aria-describedby="basic-addon21">
                  <button type="submit" class="input-group-addon" id="basic-addon21">Send</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- COPY RIGHT -->
      <div class="clearfix copyRight">
        <div class="container">
          <div class="row">
            <div class="col-sm-5 col-sm-push-7 col-xs-12">
              <ul class="list-inline socialLink">
                <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                <li><a href="#"><i class="fa fa-skype" aria-hidden="true"></i></a></li>
                <li><a href="#"><i class="fa fa-pinterest-p" aria-hidden="true"></i></a></li>
              </ul>
            </div>
            <div class="col-sm-7 col-sm-pull-5 col-xs-12">
              <div class="copyRightText">
                <p>&copy; 2017 Copyright <a target="_blank" href="http://www.iamabdus.com/">Angel Beauty Spa Salon Bootstrap Template</a> by <a target="_blank" href="http://www.iamabdus.com/">Abdus</a></p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </footer>
  </div>

  <!-- APPOINMENT MODAL -->
  <div id="appoinmentModal" class="modal fade modalCommon" role="dialog" tabindex="-1">
    <div class="modal-dialog">
      <!-- MODAL CONTENT-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Appointment For Hair Color</h4>
        </div>
        <div class="modal-body">
          <form action="">
            <div class="form-group categoryTitle">
              <h5>Service Date and Time</h5>
            </div>
            <div class="dateSelect form-half form-left">
              <div class="input-group date ed-datepicker filterDate" data-provide="datepicker">
                <input type="text" class="form-control" placeholder="MM/DD/YYYY">
                <div class="input-group-addon">
                  <span class="fa fa-calendar"></span>
                </div>
              </div>
            </div>
            <div class="timeSelect form-half form-right">
              <select name="guiest_id1" id="guiest_id1" class="select-drop">
                <option value="0">10.00 AM</option>
                <option value="1">9.00 AM</option>
                <option value="2">8.00 AM</option>
                <option value="3">11.00 AM</option>
              </select>
            </div>
            <div class="form-group categoryTitle">
              <h5>Personal info</h5>
            </div>
            <div class="form-group form-half form-left">
              <input type="text" class="form-control" id="exampleInputEmail2" placeholder="Full name">
            </div>
            <div class="form-group form-half form-right">
              <input type="email" class="form-control" id="exampleInputEmail3" placeholder="Your email">
            </div>
            <div class="form-group form-half form-left">
              <input type="text" class="form-control" id="exampleInputEmail4" placeholder="Phone number">
            </div>
            <div class="form-group form-half form-right">
              <input type="text" class="form-control" id="exampleInputEmail5" placeholder="Your address">
            </div>
            <div class="form-group">
              <textarea class="form-control" placeholder="Your Message"></textarea>
            </div>
          </form>
        </div>
        <div class="modal-footer">
          <div class="form-group">
            <button type="submit" class="btn btn-primary first-btn">Submit Now</button>
          </div>
        </div>
      </div>
    </div>
  </div>

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
  
  <script type="text/javascript">
	
  		var loadPath = "http://localhost:8080/BeautyMate/resources/img/save/";
  
  		var cate = "";
  		
		var delFunc;
		//var curPage = parseInt("${pageMaker.pager.page}");
		
		$(document).ready(function() {

			//리스트상태에서 지우는 ajax
			delFunc = function(beautyTipNo){

				/* "beautyTip/remove/" + removeNo */
				/* /remove/ajax/{id}&{category} */
				
				
				//console.log(curPage);
				$.ajax({
					url:"http://localhost:8888/rest/beautyTip/remove/ajax/id/" + beautyTipNo + "/page/" + "${pageMaker.pager.page}"
					,type:"get"
					,dataType:"json"
					//,data:{articleId:$("#articleId").val(), comm:$("#comment").val()}
					,success:displayListWithPage
					,error:errorCallback
				});
			};
			
			///catePage/pagStart/{pagStart}/pagEnd/{pagEnd}/category/{category}
			//카테고리 검색(탭)
			$("#makeUpInfoTab").click(function(){
				
				cate = 'makeupInformation';
				var pagStart = 1;
				var pagEnd = 10;
				var vUrl = "http://localhost:8888/rest/beautyTip/";
				vUrl += "catePage/pagStart/" + pagStart + "/pagEnd/" + pagEnd + "/category/" + cate + "/page/" + 1;
					$.ajax({
						url:vUrl
						,type:"get"
						,dataType:"json"
						//,data:{articleId:$("#articleId").val(), comm:$("#comment").val()}
						,success:displayListWithPage
						,error:errorCallback
					});
					
					$("#searchDiv").show();
					
					console.log(pagStart);
					console.log(pagEnd);
			});
			
			
			$("#saleInfoTab").click(function(){
				
				cate = 'saleInformation';
				var pagStart = 1;
				var pagEnd = 10;
				var vUrl = "http://localhost:8888/rest/beautyTip/";
				vUrl += "catePage/pagStart/" + pagStart + "/pagEnd/" + pagEnd + "/category/" + cate + "/page/" + 1;
					$.ajax({
						url:vUrl
						,type:"get"
						,dataType:"json"
						//,data:{articleId:$("#articleId").val(), comm:$("#comment").val()}
						,success:displayListWithPage
						,error:errorCallback
					});
					
					$("#searchDiv").hide();
			});
			
			//검색버튼
			var searchInput = $(":input[name=searchInput]");
			searchInput.next().click(function(){
				
				self.location = "listsearch.do"
					+ '${pageMaker.makeQuery(1)}'
					+ "&searchType="
					+ $("select[name=guiest_id2] option:selected").val()
					+ "&keyword=" + $(":input[name=searchInput]").val();
				
				//searchAjax(searchInput.val(), $("select[name=guiest_id2]").val());
			});
			
			var searchAjax = function(content, select){
				
				var vUrl = "http://localhost:8888/rest/beautyTip/page/find/";
				if(select == 0){ //작성자
					
					//검색값 없는 경우
					if(content == ""){
						content = "admin";
					}
					
					vUrl += "author/" + content;
				}else{ //제목
					
					if(content == ""){
						content = "§";
					}
					
					vUrl += "title/" + content;
				}
				
				$.ajax({
					url:vUrl
					,type:"get"
					,dataType:"json"
					//,data:{articleId:$("#articleId").val(), comm:$("#comment").val()}
					,success:displayListWithPage
					,error:errorCallback
				});
				
			};
			
			//
			//ajax성공시..(page)
			var displayListWithPage = function(resultData) {
	            
				var listHtml = "";
				
				//로그인 아이디 검사(삭제버튼 활성)
				var loginId = "${loginedId}";

				//
				
				$.each(resultData.beautyTipList, function(index, beautyTip){
					
					//
					cate = beautyTip.category;	
					
					
					listHtml += '<div class="panel panel-default" style="margin-left:50px;"><br>';
					listHtml += '<img src=' + loadPath + beautyTip.firstImage + ' alt="Image Blog" class="img-responsive" style="width:400px;margin-left:160px;margin-top:50px;margin-bottom:50px;">';
					listHtml += '<div class="clearfix reviewSection patternbg text-center">';
					listHtml += '<div style="margin:30px">';
					listHtml += '<h2><a href="${ctx }/beautyTip/showDetail.do?beautyTipNo=' + beautyTip.beautyTipNo + '">' + beautyTip.beautyTipTitle + '</a></h2>';
					listHtml += '<div class="text-left">';
					listHtml += '<p>' + beautyTip.firstContent + '</p>';
					listHtml += '</div></div></div><br>';
					listHtml += '<ul class="list-inline" style="margin-left:20px">';
					listHtml += '<li><i class="fa fa-user" aria-hidden="true"></i> ' + beautyTip.customer.id + '</li>';
					listHtml += '<li><i class="fa fa-comments-o" aria-hidden="true"></i>' + beautyTip.replySize + ' Comments</li>';
					
					if(loginId == beautyTip.customer.id){
						
						listHtml += '<li style="margin-left:360px"><a href="javascript:delFunc(' + beautyTip.beautyTipNo + ');"' + ' class="btn btn-common btn-dark">삭제</a></li>'
					}
					
					listHtml += '</ul><br></div>';
				});
				
				if(cate == ""){
					cate = "makeupInformation";
				}
				
				//div태그에다가 넣는 방식.. /div가 필요없다
				$("#post").empty();
				$("#post").append(listHtml);
				/* $("#comment").val(""); */
				
				/////
				var pageMaker = resultData.pageMaker;
				listHtml = "";
    			var prev = pageMaker.prev;
    			var next = pageMaker.next;
    			
    			
    				var len = pageMaker.endPage;
    				console.log(len);
    				for(var idx = 0; idx < len; idx++){
    					
    					if((idx + 1) == pageMaker.pager.page){
    						listHtml += '<li class="active">';
    					}
    					else{
    						listHtml += '<li class="">';
    					}
    					//1 2
    					var vStart = idx * pageMaker.pager.perPageNum;
    					listHtml += '<a href="listpage.do?pagStart=' + (vStart + 1) + '&pagEnd=' + (vStart + pageMaker.pager.perPageNum) + '&page=' + (idx + 1) + '&category=' + cate + '">' + (idx + 1) + '</a></li>';
    				}
    			
    				var endPage = pageMaker.endPage;
    			 	 if(next == true){
    			 		listHtml +=
    			 		'<li>' +
    			 		'<a href="" aria-label="Next">' +
    			 		'<span aria-hidden="true"><i class="fa fa-chevron-right" aria-hidden="true"></i></span>' + 
    			 		'</a></li>';
    			 	 }
    				
    			$("#pageDiv").empty();
    			$("#pageDiv").append(listHtml);
				
			};
			
			
			//ajax실패
			var errorCallback = function() {
				alert("수행중 오류가 발생했습니다.");
			};
			
			
		});/* end ready */
	</script>

</body>

</html>