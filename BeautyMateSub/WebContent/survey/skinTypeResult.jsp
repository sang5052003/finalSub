<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <c:set var="ctx" value="${pageContext.request.contextPath}" />
        <!DOCTYPE html>
        <html>
        <!-- SITE TITTLE -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>피부 타입 결과</title>
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
        <!-- FAVICON -->
        <link href="${ctx}/resources/img/favicon.png" rel="shortcut icon">
        <!-- CUSTOM CSS -->
        <link href="${ctx}/resources/css/stylejun.css" rel="stylesheet">
        <script type="text/javascript" src="http://code.jquery.com/jquery-2.1.0.min.js" ></script>
        <style>
            .no-js #loader {
                display: none;
            }
            
            .js #loader {
                display: block;
                position: absolute;
                left: 100px;
                top: 0;
            }
            
<<<<<<< HEAD
            .se-pre-con {
=======
             .se-pre-con {
>>>>>>> refs/remotes/origin/0609JM1758
                position: fixed;
                left: 0px;
                top: 0px;
                width: 100%;
                height: 100%;
                z-index: 9999;
                background: url(${ctx}/resources/plugins/simple-pre-loader/images/loader-64x/Preloader_2.gif) center no-repeat #fff;
            }
        </style>
        <script type="text/javascript">
            $(document).ready(function () {
                recommendedIngredientImageSet()
                bannedIngredientImageSet()
                recommendedFoodImageSet()
            });

            function recommendedIngredientImageSet() {
                var beforeStr = document.getElementById("recoIngre").value;
                beforeStr = beforeStr.replace(/\s/gi, "");
                var afterStr = beforeStr.split(',');
                document.getElementById("recommendedIngredientImg1").src = '${ctx}/resources/img/xmlImg/' + afterStr[0] + '.jpg';
                document.getElementById("rii1show").style.display = 'block';
                document.getElementById("rii1").value = afterStr[0];
                if (afterStr[1] != null && afterStr[0] != afterStr[1]) {
                    document.getElementById("recommendedIngredientImg2").src = '${ctx}/resources/img/xmlImg/' + afterStr[1] + '.jpg';
                    document.getElementById("rii2show").style.display = 'block';
                    document.getElementById("rii2").value = afterStr[1];
                    if (afterStr[2] != null && afterStr[1] != afterStr[2]) {
                        document.getElementById("recommendedIngredientImg3").src = '${ctx}/resources/img/xmlImg/' + afterStr[2] + '.jpg';
                        document.getElementById("rii3show").style.display = 'block';
                        document.getElementById("rii3").value = afterStr[2];
                    }
                }
            };

            function bannedIngredientImageSet() {
                var beforeStr = document.getElementById("bannedIngre").value;
                beforeStr = beforeStr.replace(/\s/gi, "");
                var afterStr = beforeStr.split(',');
                document.getElementById("bannedIngredientImg1").src = '${ctx}/resources/img/xmlImg/' + afterStr[0] + '.jpg';
                document.getElementById("bii1show").style.display = 'block';
                document.getElementById("bii1").value = afterStr[0];
                if (afterStr[1] != null && afterStr[0] != afterStr[1]) {
                    document.getElementById("bannedIngredientImg2").src = '${ctx}/resources/img/xmlImg/' + afterStr[1] + '.jpg';
                    document.getElementById("bii2show").style.display = 'block';
                    document.getElementById("bii2").value = afterStr[1];
                    if (afterStr[2] != null && afterStr[1] != afterStr[2]) {
                        document.getElementById("bannedIngredientImg3").src = '${ctx}/resources/img/xmlImg/' + afterStr[2] + '.jpg';
                        document.getElementById("bii3show").style.display = 'block';
                        document.getElementById("bii3").value = afterStr[2];
                    }
                }
            };

            function recommendedFoodImageSet() {
                var beforeStr = document.getElementById("recoFood").value;
                beforeStr = beforeStr.replace(/\s/gi, "");
                var afterStr = beforeStr.split(',');
                document.getElementById("recommendedFoodImg1").src = '${ctx}/resources/img/xmlImg/' + afterStr[0] + '.jpg';
                document.getElementById("rfi1show").style.display = 'block';
                document.getElementById("rfi1").value = afterStr[0];
                if (afterStr[1] != null && afterStr[0] != afterStr[1]) {
                    document.getElementById("recommendedFoodImg2").src = '${ctx}/resources/img/xmlImg/' + afterStr[1] + '.jpg';
                    document.getElementById("rfi2show").style.display = 'block';
                    document.getElementById("rfi2").value = afterStr[1];
                    if (afterStr[2] != null && afterStr[1] != afterStr[2]) {
                        document.getElementById("recommendedFoodImg3").src = '${ctx}/resources/img/xmlImg/' + afterStr[2] + '.jpg';
                        document.getElementById("rfi3show").style.display = 'block';
                        document.getElementById("rfi3").value = afterStr[2];
                    }
                }
            };
        </script>
        <script>
            function goToSurvey() {
                document.gotoSurvey.action = "${ctx}/survey/survey.jsp";
                document.gotoSurvey.method = "get";
                document.gotoSurvey.submit();
            }

            function goToReco() {
                document.gotoSurvey.action = "${ctx}/survey/gradeRegistForm.do";
                document.gotoSurvey.method = "get";
                document.gotoSurvey.submit();
            }
        </script>
        </head>

        <body>
            <%@ include file="../common/header.jspf"%>
                <div class="secotionTitle">
                    <h2>
			<span>Beauty Mate</span>고객님의 피부타입은 ${skinType.baumanType } 입니다.
		</h2> </div>
                <div class="main-wrapper">
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="collapse-style2">
                                    <div class="collapse navbar-collapse navbar-ex1-collapse content-collapse">
                                        <ul class="nav navbar-nav collapse-nav">
                                            <li class="active"><a class="collapsed" href="javascript:;" data-toggle="collapse" data-target="#collapse6" aria-expanded="false">${skinType.baumanType } 은/는? <i
										class="fa fa-minus"></i></a>
                                                <div id="collapse6" class="collapseItem collapse" aria-expanded="false" style="height: 0px;">
                                                    <div class="collapse-inner">
                                                        <div class="media common-media">
                                                            <div class="media-left"> <img src="${ctx}/resources/img/xmlImg/bauman.jpg" alt="Image"> </div>
                                                            <div class="media-body">
                                                                <p>고객님은 ${skinType.baumanType } ${skinType.explanation}</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class=""><a class="collapsed" href="javascript:;" data-toggle="collapse" data-target="#collapse7" aria-expanded="false">고객님께 추천드리는 화장품 성분들은.. <i
										class="fa fa-plus"></i></a>
                                                <div id="collapse7" class="collapseItem collapse" aria-expanded="false" style="height: 0px;">
                                                    <div class="collapse-inner">
                                                        <div>
                                                            <table>
                                                                <tr>
                                                                    <td>
                                                                        <div id="rii1show" style="display: none"><img id="recommendedIngredientImg1" src="" alt="Recommended Ingredient" class="img-responsive" width="100" height="100">
                                                                            <input id="rii1" name="rii1" value="" style="border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px; readonly: true;"> </div>
                                                                    </td>
                                                                    <td>
                                                                        <div id="rii2show" style="display: none"><img id="recommendedIngredientImg2" src="" alt="Recommended Ingredient" class="img-responsive" width="100" height="100">
                                                                            <input id="rii2" name="rii2" value="" style="border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px; readonly: true;"> </div>
                                                                    </td>
                                                                    <td>
                                                                        <div id="rii3show" style="display: none"><img id="recommendedIngredientImg3" src="" alt="Recommended Ingredient" class="img-responsive" width="100" height="100">
                                                                            <input id="rii3" name="rii3" value="" style="border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px; readonly: true;"> </div>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </div>
                                                        <hr>
                                                        <p>${skinType.recommendedIngredient }</p>
                                                        <input type="hidden" id="recoIngre" name="recoIngre" value="${skinType.recommendedIngredient }"> </div>
                                                </div>
                                            </li>
                                            <li class=""><a class="collapsed" href="javascript:;" data-toggle="collapse" data-target="#collapse8" aria-expanded="false">고객님께 비추천드리는 화장품 성분들은..<i
										class="fa fa-plus"></i></a>
                                                <div id="collapse8" class="collapseItem collapse" aria-expanded="false" style="height: 0px;">
                                                    <div class="collapse-inner">
                                                        <div>
                                                            <table>
                                                                <tr>
                                                                    <td>
                                                                        <div id="bii1show" style="display: none"><img id="bannedIngredientImg1" src="" alt="Image Blog" class="img-responsive" width="100" height="100">
                                                                            <input id="bii1" name="bii1" value="" style="border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px; readonly: true;"> </div>
                                                                    </td>
                                                                    <td>
                                                                        <div id="bii2show" style="display: none"><img id="bannedIngredientImg2" src="" alt="Image Blog" class="img-responsive" width="100" height="100">
                                                                            <input id="bii2" name="bii2" value="" style="border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px; readonly: true;"> </div>
                                                                    </td>
                                                                    <td>
                                                                        <div id="bii3show" style="display: none"><img id="bannedIngredientImg3" src="" alt="Image Blog" class="img-responsive" width="100" height="100">
                                                                            <input id="bii3" name="bii3" value="" style="border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px; readonly: true;"> </div>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </div>
                                                        <hr>
                                                        <p>${skinType.bannedIngredient }</p>
                                                        <input type="hidden" id="bannedIngre" name="bannedIngre" value="${skinType.bannedIngredient }"> </div>
                                                </div>
                                            </li>
                                            <li class=""><a class="collapsed" href="javascript:;" data-toggle="collapse" data-target="#collapse9" aria-expanded="false">고객님께 추천드리는 음식은..<i class="fa fa-plus"></i></a>
                                                <div id="collapse9" class="collapseItem collapse" aria-expanded="false" style="height: 0px;">
                                                    <div class="collapse-inner">
                                                        <div>
                                                            <table>
                                                                <tr>
                                                                    <td>
                                                                        <div id="rfi1show" style="display: none"><img id="recommendedFoodImg1" src="" alt="Image Blog" class="img-responsive" width="100" height="100">
                                                                            <input id="rfi1" name="rfi1" value="" style="border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px; readonly: true;"> </div>
                                                                    </td>
                                                                    <td>
                                                                        <div id="rfi2show" style="display: none"><img id="recommendedFoodImg2" src="" alt="Image Blog" class="img-responsive" width="100" height="100">
                                                                            <input id="rfi2" name="rfi2" value="" style="border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px; readonly: true;"> </div>
                                                                    </td>
                                                                    <td>
                                                                        <div id="rfi3show" style="display: none"><img id="recommendedFoodImg3" src="" alt="Image Blog" class="img-responsive" width="100" height="100">
                                                                            <input id="rfi3" name="rfi3" value="" style="border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px; readonly: true;"> </div>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </div>
                                                        <hr>
                                                        <p>${skinType.recommendedFood }</p>
                                                        <input type="hidden" id="recoFood" name="recoFood" value="${skinType.recommendedFood }"> </div>
                                                </div>
                                            </li>
                                            <li class=""><a class="collapsed" href="javascript:;" data-toggle="collapse" data-target="#collapse10" aria-expanded="false">고객님 이런 생활습관을 길러보시는건 어떠신가요?<i
										class="fa fa-plus"></i></a>
                                                <div id="collapse10" class="collapseItem collapse" aria-expanded="false" style="height: 0px;">
                                                    <div class="collapse-inner">
                                                        <p>${skinType.habit }</p>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br>
                        <ul class="list-inline">
                            <li>
                                <form name="gotoReco">
                                    <button type="button" class="btn btn-common btn-full-round btn-theme" onclick="goToReco()">나에게 맞는 화장품 추천 받기</button>
                                </form>
                            </li>
                            <li>
                                <form name="gotoSurvey">
                                    <button type="button" class="btn btn-common btn-full-round btn-theme" onclick="goToSurvey();">설문 다시하기</button>
                                </form>
                            </li>
                        </ul>
                        <br>
                        <br>
                        <br> </div>
                </div>
                <%@ include file="../common/footer.jspf"%>
                    <!-- JAVASCRIPTS -->
                    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
                    <script src="${ctx}/resources/plugins/jquery-ui/jquery-ui.min.js"></script>
                    <script src="${ctx}/resources/plugins/selectbox/jquery.selectbox-0.1.3.min.js"></script>
                    <script src="${ctx}/resources/plugins/owl-carousel/owl.carousel.min.js"></script>
                    <script src="${ctx}/resources/plugins/isotope/isotope.min.js"></script>
                    <script src="${ctx}/resources/plugins/fancybox/jquery.fancybox.pack.js"></script>
                    <script src="${ctx}/resources/plugins/isotope/isotope-triger.min.js"></script>
                    <script src="${ctx}/resources/plugins/smoothscroll/SmoothScroll.min.js"></script>
                    <script src="${ctx}/resources/plugins/datepicker/bootstrap-datepicker.min.js"></script>
                    <script src="${ctx}/resources/plugins/syotimer/jquery.syotimer.min.js"></script>
                    <script src="${ctx}/resources/js/custom.js"></script>
                    <script>
                        //paste this code under head tag or in a seperate js file.
                        // Wait for window load
                        $(window).load(function () {
                            // Animate loader off screen
                            $(".se-pre-con").fadeOut("slow");;
                        });
                    </script>
        </body>

        </html>