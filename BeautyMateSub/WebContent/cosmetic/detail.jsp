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
  <title>Single Product - Angel Beauty</title>

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




<!-- SINGLE PRODUCT SECTION -->
    <section class="clearfix singleProduct">
      <div class="container">
        <div class="row">
          <div class="col-sm-6 col-xs-12">
            <div class="singleIamge">
              <img src="${cosmetic.img}" alt="Image Single Product" width="340px" height="340px">
            </div>
          </div>
          <div class="col-sm-6 col-xs-12">
            <div class="singleProductInfo">
              <br>
              <h5 style="font-size : 12.5px;">${cosmetic.brand} </h5>
              <h4 style="color : Dimgray"> ${cosmetic.cosmeticName} </h4> <!--<del>$50</del>-->
                
            <ul class="list-inline category">
                <li style="font-size: 13px;">tag:</li>
                <li><a href="#" style="color:orangeRed; font-size: 12px; font-weight: bold;">#Ranking</a></li>
                <li><a href="#" style="color:orangeRed; font-size: 12px; font-weight: bold;">#${cosmetic.category}</a></li>
                     <li><a href="#" style="color:orangeRed; font-size: 12px; font-weight: bold;">#${cosmetic.volume}</a></li>
                     <li><a href="#" style="color:orangeRed; font-size: 12px; font-weight: bold;">#${cosmetic.cost}원 </a></li>
               
            </ul>
                
                
                <span style="color:Dimgray; font-size: 15px; font-weight: bold;"> Review &nbsp;</span>
                <span style="color:black; font-size: 11px;"> (4.05점 / 1,800명)  </span>
                <br><br>
               
                 <div class="progressSingle" style="line-height:0px;">
                    <span style="color:gold; font-size: 18px;">★★★★★</span>&nbsp;
                      <span style="color:gray; font-size: 10px;"> (150명)</span>
                      <div class="progress">
                        <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:45%">
                          
                        </div>
                      </div>
                </div>
                
                <div class="progressSingle" style="line-height:0px;">
                    <span style="color:gold; font-size: 18px;">★★★★</span>&nbsp;
                     <span style="color:white; font-size: 18px;">★</span>
                     <span style="color:gray; font-size: 10px;">(10명)</span>
                      <div class="progress">
                            
                        <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:45%">
                          
                        </div>
                      </div>
                </div>
                
                <div class="progressSingle" style="line-height:0px;">
                    <span style="color:gold; font-size: 18px;">★★★</span>&nbsp;
                      <span style="color:white; font-size: 18px;">★★</span>
                    <span style="color:gray; font-size: 10px;"> (50명)</span>
                      <div class="progress">
                        <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:85%">
                            
                        </div>
                      </div>
                </div>
                
                <div class="progressSingle" style="line-height:0px;">
                    <span style="color:gold; font-size: 18px;">★★</span>&nbsp;
                      <span style="color:white; font-size: 18px;">★★★</span>
                    <span style="color:gray; font-size: 10px;"> (15명)</span>
                      <div class="progress">
                        <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:15%">
                          
                        </div>
                      </div>
                </div>
                
                <div class="progressSingle" style="line-height:0px;">
                    <span style="color:gold; font-size: 18px;">★</span>&nbsp;
                    <span style="color:white; font-size: 18px;">★★★★</span>
                    <span style="color:gray; font-size: 10px;"> (1명)</span>
                      <div class="progress">
                        <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:5%">
                               
                        </div>
                          
                      </div> 
                </div>
        
        <br>
        <span class="list-inline roundBtn">
        <span><a href="javascript:void(0)" class="btn btn-common btn-round btn-gray" 
                 style="font-size: 13px; padding:15px;">★ My Pouch</a></span>&nbsp;&nbsp;
            
         <span><a href="javascript:void(0)" class="btn btn-common btn-round btn-gray" 
                  style="font-size: 13px; padding:15px;">
             <i class="fa fa-credit-card" aria-hidden="true"></i> 가격정보 </a></span>&nbsp;&nbsp;
            

        <span><a href="javascript:void(0)" class="btn btn-common btn-round btn-dark" 
                 style="font-size: 13px; padding:15px;"> 
            <i class="fa fa-bell" aria-hidden="true"></i> 수정요청 </a></span> &nbsp;&nbsp;
       
  
        </span>
               
                
                   
                   
     
  
            <!--
            <div class="alert alert-success alert-common" role="alert">You succesfully read this message</div>
            <div class="alert alert-info alert-common" role="alert"> 민감성 </div>
            <div class="alert alert-warning alert-common" role="alert"> Better check yourself.You are not looking too good</div>
            <div class="alert alert-danger alert-common" role="alert">Better check yourself.You are not looking too good</div>
-->
    
       
                    
                
                   
              
                
            
                      
                
         
            </div>
          </div>
        </div>
        
        <div class="row">
          <div class="col-xs-12">
            <div class="tabCommon tabOne singleTab">
              <ul class="nav nav-tabs">
              <li class="active"><a data-toggle="tab" href="#details">Ingredients</a></li>
                <li><a data-toggle="tab" href="#reviews">Reviews (2)</a></li>
              </ul>
 
              <div class="tab-content patternbg">
              <div id="details" class="tab-pane fade in active">
                              
 
        <div class="row">
          <div class="col-md-6 col-xs-12">
            <div class="collapse-style1">
              <div class="collapse navbar-collapse navbar-ex1-collapse content-collapse" style="width:800px;">
                <ul class="nav navbar-nav collapse-nav">
                  <li>
                    <a  class="collapsed" data-target="#collapse1" aria-expanded="true"> 성분 구성 <span id="allCount" style="color:black; font-size: 10px;">  </span> </a> 
                    <div id="collapse1" class="collapse collapseItem in">
                      <div class="collapse-inner">
                        <div class="container">
                            <br>
                           <div class="progress" style="width:630px; height:25px; margin-left:10px;" >
                          <div id="infoProgressbar" class="progress-bar progress-bar-info" role="progressbar" style="width:80%"> 
                              <span id="componentCount"></span>
                            
                            </div>
                            <div id="warningProgressbar" class="progress-bar progress-bar-warning" role="progressbar" style="width:10%">
                           	<span id="allergyCount"></span>
                               
                            </div>
                            <div id="dangerProgressbar" class="progress-bar progress-bar-danger" role="progressbar" style="width:10%">
                            <span id="twentyCount"></span>
                            </div>
                          </div>
                            <br>
                            
   
                          
                            
                            <div class="alert alert-warning alert-dismissible" role="alert" 
                                 style="width:650px; background-color: #FFFFFF;">
                                <img src="${ctx}/resources/img/flower.png"style="width:30px;">
                                
                                 <span style="font-size:12px; color:orangeRed; font-weight:bold;"> 전성분 </span><br>
                                 <span style="font-size:12px; color: deepPink; font-weight:bold;"> ─────────────────────────────────────────────────── </span>
                                <span id="phrase" style="font-size:12px; color: lightSeaGreen;">${cosmetic.ingredients}</span>
                                 <span id="phrase2" style="display:none;">${cosmetic.ingredients}</span>
  							                               
                            </div>    
                      
                               
                            <div class="alert alert-warning alert-dismissible" role="alert" 
                                 style="width:650px; background-color: #FFFFFF;">
                                <img src="${ctx}/resources/img/allergy.jpg" style="width:30px;">
                                  <span style="font-size:12px; color:orangeRed; font-weight:bold;"> 알레르기 주의성분 </span><br>
                                  <span style="font-size:12px; color: deepPink; font-weight:bold;"> ─────────────────────────────────────────────────── </span>
                                    <div id="allergyCaution" style="font-size:12px; color: orange;">  </div>
                                


                            </div>      
                            
                            
            
                            <div class="alert alert-warning alert-dismissible" role="alert" 
                                 style="width:650px; background-color: #FFFFFF;">
                                <img src="${ctx}/resources/img/20danger.png" style="width:30px;">
                                 <span style="font-size:12px; color:orangeRed; font-weight:bold;"> 20가지 주의성분 </span><br>
                                 <span style="font-size:12px; color: deepPink; font-weight:bold;"> ─────────────────────────────────────────────────── </span>                         
                               	 <div id="twentyCaution" style="font-size:12px; color: crimson;">  </div>
                 
  							

                                
                            </div>    
                            
                        
                        </div>
                      </div>
                    </div>
                  </li>
                    
                    
                    
                  
                </ul>
              </div>
            </div>
          </div>
            
            <div class="pull-right">
             <div class="col-md-6 col-xs-12">
            <div class="collapse-style1">
              <div class="collapse navbar-collapse navbar-ex1-collapse content-collapse" style="width:230px;">
                <ul class="nav navbar-nav collapse-nav">
                    
                  <li>
                    <a  class="collapsed" href="javascript:;" data-toggle="collapse" data-target="#collapse2" style="height:80px;">
                        <img src="${ctx}/resources/img/allergy.jpg" style="width:20px;">
                        <span style="font-size:13px; color:indianRed; ">알레르기 주의성분</span><i class="fa fa-plus"></i>
                        <br><span style="font-size:10px; color:tomato; ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 식약처 고시 "화장품 알러지 성분"</span> </a>
                    
                        
                    <div id="collapse2" class="collapse collapseItem">
                      <div class="collapse-inner">
                          <span style="font-size:11px; color:darkGreen;"> 
                              ─────────────────
                              
                               <span style="font-size:11px; color:olive;"> 
                              · 아밀신남알 <br>
                              · 벤질알코올 <br>
                              · 신나밀알코올 
                              · 시트랄 <br>
                              · 유제놀 <br>
                              · 하이드록시시트로넬알 <br>
                              · 이소유제놀 <br>
                              · 아밀신나밀알코올 <br>
                              · 벤질살리실레이트 <br>
                              · 신남알 <br>
                              · 쿠마린 <br>
                              · 제라니올 <br>
                              · 하이드록시이소헥실3-사이클로헥센카복스알데하이드 <br>
                              · 아니스에탄올 <br>
                              · 벤질신나메이트 <br>
                              · 파네솔 <br>
                              · 부틸페닐메칠프로피오날 <br>
                              · 리날룰 <br>
                              · 벤질베조에이트 <br>
                              · 시트로넬롤 <br>
                              · 헥실신남알 <br>
                              · 리모넨 <br>
                              · 메칠2-옥티노에이트 <br>
                              · 알파-이소메칠이오논 <br>
                              · 참나무이끼추출물 <br>
                              · 나무이끼추출물
                       </span>
                          </span>

                      </div>
                    </div>
                  </li>
                  <li>
                   <a  class="collapsed" href="javascript:;" data-toggle="collapse" data-target="#collapse3" style="height:80px;">
                        <img src="${ctx}/resources/img/20danger.png" style="width:20px;">
                        <span style="font-size:13px; color:indianRed; ">20가지 주의성분</span><i class="fa fa-plus"></i>
                        <br><span style="font-size:10px; color:tomato; ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 도서 "대한민국 화장품의 비밀"</span> </a>
                    
                    <div id="collapse3" class="collapse collapseItem">
                      <div class="collapse-inner">
                        <span style="font-size:11px; color:darkGreen;"> 
                            ─────────────────
                             <span style="font-size:11px; color:olive;"> 
                              · 디부틸히드록시톨루엔 <br>
                              · 미네랄오일<br>
                              · 부틸하이드록시아니솔<br>
                              · 소듐라우릴설페이트/소듐라우레스설페이트<br>
                              · 소르빈산/소르빅애씨드<br>
                              · 아보벤젠/부틸메톡시디벤조일메탄<br>
                              · 옥시벤존/벤조페논-3<br>
                              · 이미다졸리디닐우레아/디아졸리디닐우레아/디엠디엠하이단토인<br>
                              · 이소프로필메틸페놀<br>
                              · 이소프로필알코올/프로필알코올<br>
                              · 인공향료<br>
                              · 티몰<br>
                              · 트리에탄올아민<br>
                              · 트리이소프로파놀아민<br>
                              · 트리클로산<br>
                              · 파라벤<br>
                              · 페녹시에탄올<br>
                              · 폴리에틸렌글라이콜<br>
                              · 합성착색료<br>
                              · 호르몬류<br>
                            </span>

                       </span>
                      </div>
                    </div>
                  </li>
                  
                  
                </ul>
              </div>
            </div>
          </div>    
            </div>
           
                  </div>

             
                  
                  
                  
            

               <!--   <ul class="list-inline">
                    <li><i class="fa fa-check" aria-hidden="true"></i>Vestibulum iaculis quam.</li>
                    <li><i class="fa fa-check" aria-hidden="true"></i>Vestibulum iaculis quam.</li>
                    <li><i class="fa fa-check" aria-hidden="true"></i>Quam ac libero volutpat placerat.</li>
                    <li><i class="fa fa-check" aria-hidden="true"></i>Quam ac libero volutpat placerat.</li>
                  </ul>
-->
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
      <!--  <div class="row">
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
    </section>-->

  <script> /* 알레르기 주의성분 */
	
  var allergyColor="";
  var allCount = 0;
  var allergyCount = 0;

  
  var allComponent = document.getElementById('phrase'),
 	  allergyComponent = allComponent.innerHTML.split('· ').map(function(el) {
 		 allCount++;
  		allergyColor += '<span class="char-' + el + '">' + el + '</span>';
  		allergyColor += ' ';
         if(el==='아밀신남알' ||el==='벤질알코올' ||el==='신나밀알코올' 
         	||el==='시트랄' ||el==='유제놀'||el==='하이드록시시트로넬알'
         	||el==='이소유제놀' ||el==='아밀신나밀알코올'||el==='벤질살리실레이트' 
         	||el==='신남알' ||el==='쿠마린'||el==='제라니올' 
         	||el==='하이드록시이소헥실3-사이클로헥센카복스알데하이드' ||el==='아니스에탄올'||el==='벤질신나메이트' 
         	||el==='파네솔' ||el==='부틸페닐메칠프로피오날'||el==='리날룰' 
         	||el==='벤질베조에이트' ||el==='시트로넬롤'||el==='헥실신남알'
         	||el==='리모넨' ||el==='메칠2-옥티노에이트'||el==='알파-이소메칠이오논' 
         	||el==='참나무이끼추출물' ||el==='나무이끼추출물'
         	){
        	 allergyCount++;
        	 return el;
        	 
         }
          
      }).join('  ');

    

  allComponent.innerHTML = allergyColor;

  var allergyCautionDiv = document.getElementById('allergyCaution');
  allergyCautionDiv.innerHTML = allergyComponent;
  
  var allCountSpan = document.getElementById('allCount');
  allCountSpan.innerHTML = "(총" + allCount + "개)";
  
  var allergyCountSpan = document.getElementById('allergyCount');
  allergyCountSpan.innerHTML = allergyCount +"개";
  
  
  
 /* 20가지 주의성분 */
	
 var twentyColor="";
 var twentyCount=0;

 var allComponent = document.getElementById('phrase2'),
 	 twentyComponent = allComponent.innerHTML.split('· ').map(function(el) {
 		twentyColor += '<span class="char-' + el + '">' + el + '</span>';
 		twentyColor += ' ';
        if(el==='디부틸히드록시톨루엔' ||el==='미네랄오일' ||el==='소듐라우릴설페이트' 
        	||el==='소듐라우레스설페이트' ||el==='소르빈산'||el==='소르빅애씨드' 
        	||el==='아보벤젠' ||el==='부틸메톡시디벤조일메탄' ||el==='옥시벤존' 
        	||el==='벤조페논-3'||el==='이미다졸리디닐우레아' ||el==='디아졸리디닐우레아' 
        	||el==='디엠디엠하이단토인' ||el==='이소프로필메틸페놀' ||el==='이소프로필알코올'
	    	||el==='프로필알코올' ||el==='인공향료' ||el==='티몰' 
	    	||el==='트리에탄올아민' ||el==='트리이소프로파놀아민'
	  		||el==='트리클로산' ||el==='파라벤' ||el==='페녹시에탄올' 
	  		||el==='폴리에틸렌글라이콜' ||el==='합성착색료' ||el==='호르몬류'
	  		||el==='향료'){
        	
        	twentyCount++;
        	return el;
        }
          
     }).join('  ');
   

 allComponent.innerHTML = twentyColor;

 var twentyCautionDiv = document.getElementById('twentyCaution');
 twentyCautionDiv.innerHTML = twentyComponent;
 
 var twentyCountSpan = document.getElementById('twentyCount');
 twentyCountSpan.innerHTML = twentyCount +"개";
 
 var componentCount = allCount - allergyCount - twentyCount;
 var componentCountSpan = document.getElementById('componentCount');
 componentCountSpan.innerHTML = componentCount +"개";
 
 var infowidth = componentCount / allCount * 100 +"%"; 
 var warningwidth = allergyCount / allCount * 100 +"%";
 var dangerwidth =  twentyCount / allCount * 100 +"%";

 
 $(function(){
 var infoProgressbar = $('#infoProgressbar');
 var warningProgressbar = $('#warningProgressbar');
 var dangerProgressbar = $('#dangerProgressbar');
 
 infoProgressbar.css('width', infowidth);
 warningProgressbar.css('width',warningwidth);
 dangerProgressbar.css('width', dangerwidth);
 });

 
</script> 

 






</body>

</html>
