<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>
<c:set var="ctx" value="${pageContext.request.contextPath }" />
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
  <link href="${ctx }/resources/css/style.css" rel="stylesheet">
  <link href="${ctx }/resources/css/default.css" rel="stylesheet" id="option_color">


  <!-- FAVICON -->
  <link href="${ctx }/resources/img/favicon.png" rel="shortcut icon">
 
  
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
    <!-- HEADER -->
<%--     <%@ include file="../common/header.jspf"%> --%>
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
            <a class="navbar-brand" href="${ctx}/index.jsp"><img src="${ctx}/resources/img/logo.png" alt="logo" ></a>
          </div>

          <!-- Collect the nav links, forms, and other content for toggling -->
          <div class="collapse navbar-collapse navbar-ex1-collapse">
            <ul class="nav navbar-nav navbar-right">
              <li class="active">
                <a href="${ctx}/index.jsp">HOME</a>
              </li>
                <li class=" dropdown singleDrop">
                <a href="${ctx}/survey/survey.do">PICKMETEM</a>
               
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
          
          
          
          <br><br>
          
          
          <div class='text-center'>

					<select name="searchType" >
						<option value="n"
							<c:out value="${pager.searchType == null?'selected':''}"/>>
							---</option>
						<option value="t"
							<c:out value="${pager.searchType eq 't'?'selected':''}"/>>
							Title</option>
						<option value="c"
							<c:out value="${pager.searchType eq 'c'?'selected':''}"/>>
							Content</option>
					</select> <input type="text" name='keyword' id="keywordInput"
						value='${pager.keyword }'>
					<button  type="button" id='searchBtn'>Search</button>

				</div>
          
          
            <div class="text-right">
                <button class="btn btn-common btn-theme" id='newBtn'>리뷰작성</button>
            </div>
            <br>
           <div class="panel panel-default cartInfo">
            <div class="panel-heading patternbg">Review</div>
            <div class="panel-body tableArea">
              <div>
                <table class="table">
	                <tbody>
	                	<c:forEach items="${reviewList}" var="review" varStatus="status">
	                    <tr>
	                      <td style="width:50px"><div class="cartImage"><img src="http://placehold.it/100x105" alt="Image cart"></div></td>
	                      <td >카테고리<br><span>회사이름</span><br><span>제품명</span><br><span>용량 / 가격</span></td>
	                      <td style="width:0px"></td>
	                    </tr>
	                    <tr>
	                        <td colspan="3" style="text-align:left;">평점 <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i>
	                         <br><span>사용후기후기후기후기후힉</span><br>                      <br>
	                           <div class="cartImage" style="float:left; margin-right:5px;"><img src="http://placehold.it/100x105" alt="Image cart">
	                           </div>
	                           <div class="cartImage" style="float:left; margin-right:5px;"><img src="http://placehold.it/100x105" alt="Image cart">
	                           </div>
	                           </td>                         
	                    </tr>
	                    <tr>
	                        <td style="text-align:left;">사용자 <br><span>날짜</span> </td>
	                        
	                    </tr>
	                    </c:forEach>
                
                  <tbody>
                  <c:forEach items="${reviewList}" var="review" varStatus="status">
                    <tr style="cursor:pointer;"  onclick="location.href='${ctx}/review/detail.do?reviewNo=${review.reviewNo}'"
                    >
                      <td><div class="cartImage"><img src="http://placehold.it/100x105" alt="Image cart"></div></td>
                      <td>${review.reviewTitle } <br> <span>${review.reviewContent }</span></td>
                      <td><span class="price">${review.customer.id }</span></td>
                    </tr>
                    </c:forEach>
                  </tbody>
                </table>
              </div>
            </div>
            </div>
      
<br><br><br>
            <div class="paginationCommon paginationOne text-center ">
              <nav aria-label="Page navigation">
                <ul class="pagination">
                
                <c:if test="${pageMaker.prev}">
								<c:choose>
									<c:when test="${pager.keyword != null }">
										<li><a
											href="listsearch.do${pageMaker.makeSearch(pageMaker.startPage - 1) }" aria-label="Previous">
											 <span aria-hidden="true"><i class="fa fa-chevron-left" aria-hidden="true"></i></span>
											 </a>
										</li>
									</c:when>
									<c:otherwise>
										<li><a
											href="listpage.do${pageMaker.makeSearch(pageMaker.startPage - 1) }" aria-label="Previous">
											<span aria-hidden="true"><i class="fa fa-chevron-left" aria-hidden="true"></i></span>
											</a>
										</li>
									</c:otherwise>
								</c:choose>
							</c:if>
							
							<c:forEach begin="${pageMaker.startPage }"
								end="${pageMaker.endPage }" var="idx">
								<li class="active"
									<c:out value="${pageMaker.pager.page == idx?'class =active':''}"/>>
									<c:choose>
										<c:when test="${pager.keyword != null }">
											<a href="listsearch.do${pageMaker.makeSearch(idx)}">${idx}</a>
										</c:when>
										<c:otherwise>
											<a href="listpage.do${pageMaker.makeSearch(idx)}">${idx}</a>
										</c:otherwise>
									</c:choose>
							</c:forEach>
							
							<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
								<li><c:choose>
										<c:when test="${pager.keyword != null }">
											<li><a
												href="listsearch.do${pageMaker.makeSearch(pageMaker.endPage +1) }" aria-label="Next">
												<span aria-hidden="true"><i class="fa fa-chevron-right" aria-hidden="true"></i></span>
												</a>
											</li>
										</c:when>
										<c:otherwise>
											<li><a
												href="listpage.do${pageMaker.makeSearch(pageMaker.endPage +1) }" aria-label="Next">
												<span aria-hidden="true"><i class="fa fa-chevron-right" aria-hidden="true"></i></span>
												</a>
											</li>
										</c:otherwise>
									</c:choose>
							</c:if>												
                </ul>
              </nav>
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
	var result = '${msg}';

	if (result == 'SUCCESS') {
		alert("처리가 완료되었습니다.");
	}
</script>

<script>
	$(document).ready(
			function() {

				$('#searchBtn').on(
						"click",
						function(event) {

							self.location = "listsearch.do"
									+ '${pageMaker.makeQuery(1)}'
									+ "&searchType="
									+ $("select[name=searchType] option:selected").val()
									+ "&keyword=" + $('#keywordInput').val();

						});

				$('#newBtn').on("click", function(evt) {

					self.location = "register.do";

				});

			});
</script>


  <script>
  	//paste this code under head tag or in a seperate js file.
  	// Wait for window load
  	$(window).load(function() {
  		// Animate loader off screen
  		$(".se-pre-con").fadeOut("slow");
  		
  		$("tr").hover(
  			function () {
  				$(this).css("backgroundColor","#F6F6F6");	
				
			},
  			function () {
  				$(this).css("backgroundColor","#ffffff");		
				
			}
  		)
  		
  	});
  </script>
  

</body>

</html>