<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <c:set var="ctx" value="${pageContext.request.contextPath}" />
        <!DOCTYPE html>
        <html>

        <head>
            <!-- SITE TITTLE -->
            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <title>Beauty Mate</title>
            
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
                        position: fixed;
                        left: 0px;
                        top: 0px;
                        width: 100%;
                        height: 100%;
                        z-index: 9999;
                        background: url(${ctx}/resources/plugins/simple-pre-loader/images/loader-64x/Preloader_2.gif) center no-repeat #fff;
                    }
                    
                    a {
                        fornt-weight: bold;
                        font-size: 20px;
                    }
                </style>
                <script type="text/javascript">
                     function tryCheckType() {
                    	/* var ptStr1, ptStr2, ptStr3, ptStr4;
                        var skinType = null;
                        var checked_index = 0;
                        var checked_value = 0;
                        var checkNull = 0;
                        var checked_index2 = 0;
                        var checked_value2 = 0;
                        var checkNull2 = 0;
                        var checked_index3 = 0;
                        var checked_value3 = 0;
                        var checkNull3 = 0;
                        var checked_index4 = 0;
                        var checked_value4 = 0;
                        var checkNull4 = 0;
                        for (var j = 1; j < 12; j++) {
                            var obj = document.getElementsByName('pt_' + j + 'radio');
                            for (i = 0; i < obj.length; i++) {
                                if (obj[i].checked) {
                                    checked_index = i + 1;
                                    checked_value = Number(obj[i].value) + Number(checked_value);
                                }
                            }
                            if (checked_value == Number(checkNull)) {
                                document.getElementById('checkAlert').value = 'Part.1 질문 번호' + j + '번의 항목을 완성 해 주세요';
                                document.getElementById('checkAlertDiv').style.display = 'block';
                                //alert('Part.1 질문 번호' + j + '번의 항목을 완성 해 주세요');
                                document.getElementById('tabpt').href = '#pt1tab';
                                document.getElementById('goqu').href = '#pt1_qu'+j;
                                return;
                            }
                            else {
                                checkNull = checked_value + 0;
                                continue;
                            }
                        }
                        for (var j = 1; j < 20; j++) {
                            var obj = document.getElementsByName('pt_' + j + 'radio2');
                            for (i = 0; i < obj.length; i++) {
                                if (obj[i].checked) {
                                    checked_index2 = i + 1;
                                    checked_value2 = Number(obj[i].value) + Number(checked_value2);
                                }
                            }
                            if (checked_value2 == Number(checkNull2)) {
                                document.getElementById('checkAlert').value = 'Part.2 질문 번호' + j + '번의 항목을 완성 해 주세요';
                                document.getElementById('checkAlertDiv').style.display = 'block';
                                //alert('Part.2 질문 번호' + j + '번의 항목을 완성 해 주세요');
                                document.getElementById('tabpt').href = '#pt2tab';
                                alert('주소바꿨다 ' + document.getElementById('tabpt').href);
                                document.getElementById('goqu').href = '#pt2_qu'+j;
                                return;
                            }
                            else {
                                checkNull2 = checked_value2 + 0;
                                continue;
                            }
                        }
                        for (var j = 1; j < 14; j++) {
                            var obj = document.getElementsByName('pt_' + j + 'radio3');
                            for (i = 0; i < obj.length; i++) {
                                if (obj[i].checked) {
                                    checked_index3 = i + 1;
                                    checked_value3 = Number(obj[i].value) + Number(checked_value3);
                                }
                            }
                            if (checked_value3 == Number(checkNull3)) {
                                document.getElementById('checkAlert').value = 'Part.3 질문 번호' + j + '번의 항목을 완성 해 주세요';
                                document.getElementById('checkAlertDiv').style.display = 'block';
                                //alert('Part.3 질문 번호' + j + '번의 항목을 완성 해 주세요');
                                document.getElementById('tabpt').href = '#pt3tab';
                                alert('주소바꿨다 ' + document.getElementById('tabpt').href);
                                document.getElementById('goqu').href = '#pt3_qu'+j;
                                return;
                            }
                            else {
                                checkNull3 = checked_value3 + 0;
                                continue;
                            }
                        }
                        for (var j = 1; j < 22; j++) {
                            var obj = document.getElementsByName('pt_' + j + 'radio4');
                            for (i = 0; i < obj.length; i++) {
                                if (obj[i].checked) {
                                    checked_index4 = i + 1;
                                    checked_value4 = Number(obj[i].value) + Number(checked_value4);
                                }
                            }
                            if (checked_value4 == Number(checkNull4)) {
                                document.getElementById('checkAlert').value = 'Part.4 질문 번호' + j + '번의 항목을 완성 해 주세요';
                                document.getElementById('checkAlertDiv').style.display = 'block';
                                // alert('Part.4 질문 번호' + j + '번의 항목을 완성 해 주세요'); 
                                document.getElementById('tabpt').href = '#pt4tab';
                                document.getElementById('goqu').href = '#pt4_qu'+j;
                                return;
                            }
                            else {
                                checkNull4 = checked_value4 + 0;
                                continue;
                            }
                        }
                        if (checked_value <= 44 && checked_value >= 27) {
                            ptStr1 = 'O';
                        }
                        else {
                            ptStr1 = 'D';
                        }
                        if (checked_value2 <= 72 && checked_value2 >= 30) {
                            ptStr2 = 'S';
                        }
                        else {
                            ptStr2 = 'R';
                        }
                        if (checked_value3 <= 52 && checked_value3 >= 29) {
                            ptStr3 = 'P';
                        }
                        else {
                            ptStr3 = 'N';
                        }
                        if (checked_value4 <= 85 && checked_value4 >= 41) {
                            ptStr4 = 'W';
                        }
                        else {
                            ptStr4 = 'T';
                   .se-pre-con {
                position: fixed;
                left: 0px;
                top: 0px;
                width: 100%;
                height: 100%;
                z-index: 9999;
                background: url(${ctx}/resources/plugins/simple-pre-loader/images/loader-64x/Preloader_2.gif) center no-repeat #fff;
            }
                    
                    a {
                        fornt-weight: bold;
                        font-size: 20px;
                    }
                </style>
                <script type="text/javascript">
                     function tryCheckType() {
                    	 /* var ptStr1, ptStr2, ptStr3, ptStr4;
                        var skinType = null;
                        var checked_index = 0;
                        var checked_value = 0;
                        var checkNull = 0;
                        var checked_index2 = 0;
                        var checked_value2 = 0;
                        var checkNull2 = 0;
                        var checked_index3 = 0;
                        var checked_value3 = 0;
                        var checkNull3 = 0;
                        var checked_index4 = 0;
                        var checked_value4 = 0;
                        var checkNull4 = 0;
                        for (var j = 1; j < 12; j++) {
                            var obj = document.getElementsByName('pt_' + j + 'radio');
                            for (i = 0; i < obj.length; i++) {
                                if (obj[i].checked) {
                                    checked_index = i + 1;
                                    checked_value = Number(obj[i].value) + Number(checked_value);
                                }
                            }
                            if (checked_value == Number(checkNull)) {
                                document.getElementById('checkAlert').value = 'Part.1 질문 번호' + j + '번의 항목을 완성 해 주세요';
                                document.getElementById('checkAlertDiv').style.display = 'block';
                                //alert('Part.1 질문 번호' + j + '번의 항목을 완성 해 주세요');
                                document.getElementById('tabpt').href = '#pt1tab';
                                document.getElementById('goqu').href = '#pt1_qu'+j;
                                return;
                            }
                            else {
                                checkNull = checked_value + 0;
                                continue;
                            }
                        }
                        for (var j = 1; j < 20; j++) {
                            var obj = document.getElementsByName('pt_' + j + 'radio2');
                            for (i = 0; i < obj.length; i++) {
                                if (obj[i].checked) {
                                    checked_index2 = i + 1;
                                    checked_value2 = Number(obj[i].value) + Number(checked_value2);
                                }
                            }
                            if (checked_value2 == Number(checkNull2)) {
                                document.getElementById('checkAlert').value = 'Part.2 질문 번호' + j + '번의 항목을 완성 해 주세요';
                                document.getElementById('checkAlertDiv').style.display = 'block';
                                //alert('Part.2 질문 번호' + j + '번의 항목을 완성 해 주세요');
                                document.getElementById('tabpt').href = '#pt2tab';
                                alert('주소바꿨다 ' + document.getElementById('tabpt').href);
                                document.getElementById('goqu').href = '#pt2_qu'+j;
                                return;
                            }
                            else {
                                checkNull2 = checked_value2 + 0;
                                continue;
                            }
                        }
                        for (var j = 1; j < 14; j++) {
                            var obj = document.getElementsByName('pt_' + j + 'radio3');
                            for (i = 0; i < obj.length; i++) {
                                if (obj[i].checked) {
                                    checked_index3 = i + 1;
                                    checked_value3 = Number(obj[i].value) + Number(checked_value3);
                                }
                            }
                            if (checked_value3 == Number(checkNull3)) {
                                document.getElementById('checkAlert').value = 'Part.3 질문 번호' + j + '번의 항목을 완성 해 주세요';
                                document.getElementById('checkAlertDiv').style.display = 'block';
                                //alert('Part.3 질문 번호' + j + '번의 항목을 완성 해 주세요');
                                document.getElementById('tabpt').href = '#pt3tab';
                                alert('주소바꿨다 ' + document.getElementById('tabpt').href);
                                document.getElementById('goqu').href = '#pt3_qu'+j;
                                return;
                            }
                            else {
                                checkNull3 = checked_value3 + 0;
                                continue;
                            }
                        }
                        for (var j = 1; j < 22; j++) {
                            var obj = document.getElementsByName('pt_' + j + 'radio4');
                            for (i = 0; i < obj.length; i++) {
                                if (obj[i].checked) {
                                    checked_index4 = i + 1;
                                    checked_value4 = Number(obj[i].value) + Number(checked_value4);
                                }
                            }
                            if (checked_value4 == Number(checkNull4)) {
                                document.getElementById('checkAlert').value = 'Part.4 질문 번호' + j + '번의 항목을 완성 해 주세요';
                                document.getElementById('checkAlertDiv').style.display = 'block';
                                // alert('Part.4 질문 번호' + j + '번의 항목을 완성 해 주세요'); 
                                document.getElementById('tabpt').href = '#pt4tab';
                                document.getElementById('goqu').href = '#pt4_qu'+j;
                                return;
                            }
                            else {
                                checkNull4 = checked_value4 + 0;
                                continue;
                            }
                        }
                        if (checked_value <= 44 && checked_value >= 27) {
                            ptStr1 = 'O';
                        }
                        else {
                            ptStr1 = 'D';
                        }
                        if (checked_value2 <= 72 && checked_value2 >= 30) {
                            ptStr2 = 'S';
                        }
                        else {
                            ptStr2 = 'R';
                        }
                        if (checked_value3 <= 52 && checked_value3 >= 29) {
                            ptStr3 = 'P';
                        }
                        else {
                            ptStr3 = 'N';
                        }
                        if (checked_value4 <= 85 && checked_value4 >= 41) {
                            ptStr4 = 'W';
                        }
                        else {
                            ptStr4 = 'T';
                        }  */
                        skinType = 'ORNW';
                        //skinType = ptStr1 + ptStr2 + ptStr3 + ptStr4;
                        document.getElementById('skinType').value = skinType;
                        /* alert(skinType); */
                        commitSkinType();

                        function commitSkinType() { //0클라이언트 부분에서의 에러검증 코드 자리 
                            document.research_answer.action = "${ctx}/survey/skinTypeRegist.do";
                            document.research_answer.method = "post";
                            document.research_answer.submit();
                        }
                    };
                </script>
                <script type="text/javascript">
                 function fn() {
                	gotab();
                	goqu();
                    };
                function gotab(){
                	var hr = document.getElementById('tabpt').href;
                	window.location.href = hr;
                };
                function goqu() {
                	var qu = document.getElementById('goqu').href;
                	window.location.href = qu;
                    };  
                    
                   /*  $(function(){
                $("#tabpt").click(function () { 
                	var hr = document.getElementById('tabpt').href;
                	window.location.href = hr;
                	var qu = document.getElementById('goqu').href;
                	$("#goqu").trigger('click') 
                	});
                    });  */
                    
                  

                </script>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>설문으로 알아보는 바우만 타입</title>
        </head>

        <body>
            <%@ include file="../common/header.jspf"%>
                <section class="clearfix varietySection">
                    <div class="container">
                        <div class="secotionTitle">
                            <h2>
					<span>Beauty Mate</span>Bauman Skin Type
				</h2> </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="collapse-style2">
                                    <div class="collapse navbar-collapse navbar-ex1-collapse content-collapse">
                                        <ul class="nav navbar-nav collapse-nav">
                                            <li class="active"><a class="collapsed" href="javascript:;" data-toggle="collapse" data-target="#collapseBeforCheck" aria-expanded="true">작성 전에 확인해주세요. <i class="fa fa-plus"></i></a>
                                                <div id="collapseBeforCheck" class="collapseItem collapse" aria-expanded="true" style="height: 0px;">
                                                    <div class="collapse-inner">
                                                        <ol style="display: inline-block; text-align: left; list-style: inside; list-style-type: circle; clear: both; width: 100%; padding: 0px;">
                                                            <li><i class="fa fa-check" aria-hidden="true"></i>설문 조사는 약 5분 정도 소요 됩니다.</li>
                                                            <li><i class="fa fa-check" aria-hidden="true"></i>설문은 지성vs건성 , 민감성vs저항성, 색소성vs비색소성, 주름vs탱탱함 4개의 파트로 구성 되어있습니다. (전부 선택 하셔야 합니다. )</li>
                                                            <li><i class="fa fa-check" aria-hidden="true"></i>설문은 솔직하게 답변해 주세요.</li>
                                                            <li><i class="fa fa-check" aria-hidden="true"></i>자신의 선입관이나, 타인의 조언으로 인해 답변이 바뀌지 않도록 주의 하세요.</li>
                                                            <li><i class="fa fa-check" aria-hidden="true"></i>설문은 오직 피부타입 산출에만 이용됩니다.</li>
                                                        </ol>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <div class="container">
                    <form name="research_answer" method="post" action="javascript:tryCheckType;">
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="tabCommon tabOne singleTab">
                                    <ul class="nav nav-tabs">
                                        <li class="active"><a data-toggle="tab" href="#pt1tab">Part.1</a></li>
                                        <li><a data-toggle="tab" href="#pt2tab">Part.2</a></li>
                                        <li><a data-toggle="tab" href="#pt3tab">Part.3</a></li>
                                        <li><a data-toggle="tab" href="#pt4tab">Part.4</a></li>
                                    </ul>
                                    <div class="tab-content patternbg">
                                        <!-- pt1 시작 -->
                                        <div id="pt1tab" class="tab-pane fade in active">
                                            <h4>Part.1 지성 (Oily)vs건성(Dry)</h4>
                                            <h3>피지 생성 및 수분 측정</h3>
                                            <table>
                                                <tbody>
                                                    <!-- -----1---- -->
                                                    <tr>
                                                        <td style="font-weight: bold;">
                                                            <div id=pt1_qu1><a href="javascript:;" id="pt_01tab">1. 세안 이후에 보습제, 자외선 차단제. 색조화장품, 파우더 혹은 다른
													제품을 바르지 않고 2~3시간 후에 밝은 조명 아래에서 거울을 보았을 때, 당신의 이마와 양 볼의 느낌이나
													외양은? </a></div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_1radio" value="1" style="margin-bottom: -5px; padding: 0px;"> ① 매우 거칠거나, 각질이 떨어지거나, 혹은 창백하다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_1radio" value="2" style="margin-bottom: -5px; padding: 0px;"> ② 탱탱하다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_1radio" value="3" style="margin-bottom: -5px; padding: 0px;"> ③ 빛의 반사가 없으며 수화가 잘되어 있다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_1radio" value="4" style="margin-bottom: -5px; padding: 0px;"> ④ 밝은 빛을 반사하며 윤기가 난다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 10px;"></td>
                                                    </tr>
                                                    <!-- -----2---- -->
                                                    <tr>
                                                        <td style="font-weight: bold;">
                                                        <div id=pt1_qu2><a href="javascript:;" id="pt_02tab">2. 위 1번과 같은 상황에서, 얼굴은 윤기가 있나요? </a></div></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_2radio" value="1" style="margin-bottom: -5px; padding: 0px;"> ① 전혀 아니다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_2radio" value="2" style="margin-bottom: -5px; padding: 0px;"> ② 때때로 그렇다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_2radio" value="3" style="margin-bottom: -5px; padding: 0px;"> ③ 자주 그렇다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_2radio" value="4" style="margin-bottom: -5px; padding: 0px;"> ④ 항상 그렇다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 10px;"></td>
                                                    </tr>
                                                    <!-- -----3---- -->
                                                    <tr>
                                                        <td style="font-weight: bold;">
                                                        <div id=pt1_qu3><a href="javascript:;" id="pt_03tab">3. 파우더 사용하지 않은 기초화장(메이크업 파운데이션, 베이스)을 끝낸
													2~3시간 후에 당신의 화장 상태 </a></div></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_3radio" value="1" style="margin-bottom: -5px; padding: 0px;"> ① 각질이 떨어지거나 주름 사이에 덕지덕지 붙어 있다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_3radio" value="2" style="margin-bottom: -5px; padding: 0px;"> ② 매끈하다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_3radio" value="3" style="margin-bottom: -5px; padding: 0px;"> ③ 윤기가 흐른다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_3radio" value="4" style="margin-bottom: -5px; padding: 0px;"> ④ 줄줄이 묻어있고 윤기가 흐른다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_3radio" value="5" style="margin-bottom: -5px; padding: 0px;"> ⑤ 나는 기초화장(파운데이션)을 하지 않는다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 10px;"></td>
                                                    </tr>
                                                    <!-- -----4---- -->
                                                    <tr>
                                                        <td style="font-weight: bold;">
                                                        <div id=pt1_qu4><a href="javascript:;" id="pt_04tab">4. 습도가 낮은 환경(예, 늦가을, 겨울철)에서 보습제나 자외선차단제를
													사용하지 않으면, 얼굴의 피부는? </a></div></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_4radio" value="1" style="margin-bottom: -5px; padding: 0px;"> ① 매우 건조한 느낌이 들거나 갈라진다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_4radio" value="2" style="margin-bottom: -5px; padding: 0px;"> ② 탱탱한 느낌이다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_4radio" value="3" style="margin-bottom: -5px; padding: 0px;"> ③ 정상적인 느낌이다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_4radio" value="4" style="margin-bottom: -5px; padding: 0px;"> ④ 윤기가 있다. 혹은 보습제가 필요하다고 느낀적이 있다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_4radio" value="5" style="margin-bottom: -5px; padding: 0px;"> ⑤ 모르겠다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 10px;"></td>
                                                    </tr>
                                                    <!-- -----5---- -->
                                                    <tr>
                                                        <td style="font-weight: bold;">
                                                        <div id=pt1_qu5><a href="javascript:;" id="pt_05tab">5. 거울로 가까이에서 자세히 보았을 때 핀 끝 크기 혹은 그보다 더 큰
													크기의 커다한 구멍(큰 모공)이 얼마나 많이 있나요? </a></div></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_5radio" value="1" style="margin-bottom: -5px; padding: 0px;"> ① 없다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_5radio" value="2" style="margin-bottom: -5px; padding: 0px;"> ② T - 구역(이마와 코)에만 약간 있다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_5radio" value="3" style="margin-bottom: -5px; padding: 0px;"> ③ 많다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_5radio" value="4" style="margin-bottom: -5px; padding: 0px;"> ④ 대단히 많다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_5radio" value="5" style="margin-bottom: -5px; padding: 0px;"> ⑤ 모르겠다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 10px;"></td>
                                                    </tr>
                                                    <!-- -----6---- -->
                                                    <tr>
                                                        <td style="font-weight: bold;">
                                                        <div id=pt1_qu6><a href="javascript:;" id="pt_06tab">6. 자신의 얼굴 피부는 다음 중에서 어떠한 상태인가 </a></div></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_6radio" value="1" style="margin-bottom: -5px; padding: 0px;"> ① 건성.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_6radio" value="2" style="margin-bottom: -5px; padding: 0px;"> ② 정상.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_6radio" value="3" style="margin-bottom: -5px; padding: 0px;"> ③ 복합.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_6radio" value="4" style="margin-bottom: -5px; padding: 0px;"> ④ 지성.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 10px;"></td>
                                                    </tr>
                                                    <!-- -----7---- -->
                                                    <tr>
                                                        <td style="font-weight: bold;">
                                                        <div id=pt1_qu7><a href="javascript:;" id="pt_07tab">7. 비눗방울, 거품이 심하게 발생하는 비누를 사용하면 당신의 얼굴 피부는?
													(세안제에 의해 당신의 피부가 건조해지면 1을 고르세요) </a></div></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_7radio" value="1" style="margin-bottom: -5px; padding: 0px;"> ① 건조한 느낌이거나 갈라진다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_7radio" value="2" style="margin-bottom: -5px; padding: 0px;"> ② 약간 건조한 느낌이나 갈라지지 않는다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_7radio" value="3" style="margin-bottom: -5px; padding: 0px;"> ③ 정상적인 느낌이다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_7radio" value="4" style="margin-bottom: -5px; padding: 0px;"> ④ 기름이 흐르는 느낌이다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_7radio" value="5" style="margin-bottom: -5px; padding: 0px;"> ⑤ 나는 비누나 거품이 생기는 클렌저를 사용하지 않는다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 10px;"></td>
                                                    </tr>
                                                    <!-- -----8---- -->
                                                    <tr>
                                                        <td style="font-weight: bold;">
                                                        <div id=pt1_qu8><a href="javascript:;" id="pt_08tab">8. 보습제를 사용하지 않으면 얼굴 피부는 탱탱한 느낌입니까?</a></div></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_8radio" value="1" style="margin-bottom: -5px; padding: 0px;"> ① 항상 그렇다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_8radio" value="2" style="margin-bottom: -5px; padding: 0px;"> ② 때때로 그렇다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_8radio" value="3" style="margin-bottom: -5px; padding: 0px;"> ③ 거의 그렇지 않다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_8radio" value="4" style="margin-bottom: -5px; padding: 0px;"> ④ 전혀 그렇지않다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 10px;"></td>
                                                    </tr>
                                                    <!-- -----9---- -->
                                                    <tr>
                                                        <td style="font-weight: bold;">
                                                        <div id=pt1_qu9><a href="javascript:;" id="pt_09tab">9. 얼굴에 모공은 어느 정도 있습니까?</a></div></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_9radio" value="1" style="margin-bottom: -5px; padding: 0px;"> ① 전혀 없다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_9radio" value="2" style="margin-bottom: -5px; padding: 0px;"> ② 거의 없다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_9radio" value="3" style="margin-bottom: -5px; padding: 0px;"> ③ 때때로 있다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_9radio" value="4" style="margin-bottom: -5px; padding: 0px;"> ④ 항상 있다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 10px;"></td>
                                                    </tr>
                                                    <!-- -----10---- -->
                                                    <tr>
                                                        <td style="font-weight: bold;">
                                                        <div id=pt1_qu10><a href="javascript:;" id="pt_10tab">10. 얼굴의 T－구역(이마와 코)에 기름기는?</a></div></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_10radio" value="1" style="margin-bottom: -5px; padding: 0px;"> ① 전혀 없다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_10radio" value="2" style="margin-bottom: -5px; padding: 0px;"> ② 거의 없다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_10radio" value="3" style="margin-bottom: -5px; padding: 0px;"> ③ 때때로 있다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_10radio" value="4" style="margin-bottom: -5px; padding: 0px;"> ④ 항상 있다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 10px;"></td>
                                                    </tr>
                                                    <!-- -----11---- -->
                                                    <tr>
                                                        <td style="font-weight: bold;">
                                                        <div id=pt1_qu11><a href="javascript:;" id="pt_01tab">11. 보습제를 바르고 2∼3시간 이후에 양 볼의 상태는?</a></div></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_11radio" value="1" style="margin-bottom: -5px; padding: 0px;"> ① 매우 거칠거나, 피부가 벗겨지거나 창백하다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_11radio" value="2" style="margin-bottom: -5px; padding: 0px;"> ② 매끄럽다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_11radio" value="3" style="margin-bottom: -5px; padding: 0px;"> ③ 약간 윤기가 흐른다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_11radio" value="4" style="margin-bottom: -5px; padding: 0px;"> ④ 윤기가 흐르고 번들거린다. 혹은 나는 보습제를 사용하지 않는다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 10px;"></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <!-- pt1 끝 -->
                                        <!-- pt2 시작 -->
                                        <div id="pt2tab" class="tab-pane fade">
                                            <h4>Part.2 민감성 (Sensitive) vs 저항성 (Resistant)</h4>
                                            <h2>여드름, 발적, 홍조 및 가려움증이 발생하는 경향 측정</h2>
                                            <table>
                                                <tbody>
                                                    <!-- -----1---- -->
                                                    <tr>
                                                        <td style="font-weight: bold;">
                                                            <div id=pt2_qu1><a href="javascript:;" id="pt_01tab2">1. 얼굴에 붉게 돌출된 병변이 발생한 경험은?</a></div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_1radio2" value="1" style="margin-bottom: -5px; padding: 0px;"> ①전혀 없다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_1radio2" value="2" style="margin-bottom: -5px; padding: 0px;"> ②거의 없다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_1radio2" value="3" style="margin-bottom: -5px; padding: 0px;"> ③최소한 1개월에 1회 있다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_1radio2" value="4" style="margin-bottom: -5px; padding: 0px;"> ④최소한 1주일에 1회 있다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 10px;"></td>
                                                    </tr>
                                                    <!-- -----2---- -->
                                                    <tr>
                                                        <td style="font-weight: bold;">
                                                        <div id=pt2_qu2><a href="javascript:;" id="pt_02tab2">2. 피부 관리용 제품(클렌저, 보습제, 색조화장품, 및 화장품 등을
													포함)을 사용하면 얼굴에 뾰루지가 나거나 발진, 가려움증 혹은 따끔거리는 증상 등이 나타난 경험이
													있습니까? </a></div></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_2radio2" value="1" style="margin-bottom: -5px; padding: 0px;"> ①전혀 없다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_2radio2" value="2" style="margin-bottom: -5px; padding: 0px;"> ②거의 없다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_2radio2" value="3" style="margin-bottom: -5px; padding: 0px;"> ③자주 있다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_2radio2" value="4" style="margin-bottom: -5px; padding: 0px;"> ④항상 있다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_2radio2" value="5" style="margin-bottom: -5px; padding: 0px;"> ⑤나는 얼굴에 피부 관리용 제품을 바르지 않는다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 10px;"></td>
                                                    </tr>
                                                    <!-- -----3---- -->
                                                    <tr>
                                                        <td style="font-weight: bold;">
                                                        <div id=pt2_qu3><a href="javascript:;" id="pt_03tab2">3. 최근 5년 이내에 여드름에 대한 진단을 받은 적이 있습니까?</a></div></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_3radio2" value="1" style="margin-bottom: -5px; padding: 0px;"> ①없다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_3radio2" value="2" style="margin-bottom: -5px; padding: 0px;"> ②친구와 지인이 나에게 이런 증상이 있다고 얘기한다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_3radio2" value="3" style="margin-bottom: -5px; padding: 0px;"> ③진단을 받았다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_3radio2" value="4" style="margin-bottom: -5px; padding: 0px;"> ④심각한 경우에 해당한다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_3radio2" value="5" style="margin-bottom: -5px; padding: 0px;"> ⑤잘 모르겠다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 10px;"></td>
                                                    </tr>
                                                    <!-- -----4---- -->
                                                    <tr>
                                                        <td style="font-weight: bold;"><div id=pt2_qu4><a href="javascript:;" id="pt_04tab2">4. 14K 금이 아닌 장신구를 착용할 경우에 피부 발진이 자주
<<<<<<< HEAD
													발생합니까?</a></td>
=======
													발생합니까?</a></div></td>
>>>>>>> refs/remotes/origin/0609JM1758
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_4radio2" value="1" style="margin-bottom: -5px; padding: 0px;"> ①전혀 안 나타난다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_4radio2" value="2" style="margin-bottom: -5px; padding: 0px;"> ②거의 안 나타난다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_4radio2" value="3" style="margin-bottom: -5px; padding: 0px;"> ③자주 나타난다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_4radio2" value="4" style="margin-bottom: -5px; padding: 0px;"> ④항상 나타난다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_4radio2" value="5" style="margin-bottom: -5px; padding: 0px;"> ⑤잘 모르겠다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 10px;"></td>
                                                    </tr>
                                                    <!-- -----5---- -->
                                                    <tr>
                                                        <td style="font-weight: bold;">
                                                        <div id=pt2_qu5><a href="javascript:;" id="pt_05tab2">5. 자외선차단제를 바르면 피부가 가렵거나, 타거나, 돋아 오르거나,
													붉어진 경험은?</a></div></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_5radio2" value="1" style="margin-bottom: -5px; padding: 0px;"> ① 전혀 없다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_5radio2" value="2" style="margin-bottom: -5px; padding: 0px;"> ② 거의 없다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_5radio2" value="3" style="margin-bottom: -5px; padding: 0px;"> ③ 자주 있다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_5radio2" value="4" style="margin-bottom: -5px; padding: 0px;"> ④ 항상 있다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_5radio2" value="5" style="margin-bottom: -5px; padding: 0px;"> ⑤ 자외선 차단제를 전혀 바르지 않는다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 10px;"></td>
                                                    </tr>
                                                    <!-- -----6---- -->
                                                    <tr>
                                                        <td style="font-weight: bold;">
                                                        <div id=pt2_qu6><a href="javascript:;" id="pt_06tab2">6. 아토피 피부염, 습진, 또는 접촉 피부염(알레르기성 피부 발진)으로
													진단된 과거력이 있나요?</a></div></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_6radio2" value="1" style="margin-bottom: -5px; padding: 0px;"> ①없다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_6radio2" value="2" style="margin-bottom: -5px; padding: 0px;"> ②친구들이 나에게 이런 질환이 있는 것 같다고 한다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_6radio2" value="3" style="margin-bottom: -5px; padding: 0px;"> ③있다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_6radio2" value="4" style="margin-bottom: -5px; padding: 0px;"> ④있다. 심각한 경우에 해당한다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_6radio2" value="5" style="margin-bottom: -5px; padding: 0px;"> ⑤잘 모르겠다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 10px;"></td>
                                                    </tr>
                                                    <!-- -----7---- -->
                                                    <tr>
                                                        <td style="font-weight: bold;">
                                                        <div id=pt2_qu7><a href="javascript:;" id="pt_07tab2">7. 반지를 낀 손가락에 발진이 얼마나 자주 발생하나요?</a></div></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_7radio2" value="1" style="margin-bottom: -5px; padding: 0px;"> ① 전혀 안 나타난다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_7radio2" value="2" style="margin-bottom: -5px; padding: 0px;"> ② 거의 안 나타난다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_7radio2" value="3" style="margin-bottom: -5px; padding: 0px;"> ③ 자주 나타난다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_7radio2" value="4" style="margin-bottom: -5px; padding: 0px;"> ④ 항상 나타난다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_7radio2" value="5" style="margin-bottom: -5px; padding: 0px;"> ⑤ 나는 반지를 끼지 않는다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 10px;"></td>
                                                    </tr>
                                                    <!-- -----8---- -->
                                                    <tr>
                                                        <td style="font-weight: bold;">
                                                        <div id=pt2_qu8><a href="javascript:;" id="pt_08tab2">8. 향료가 포함된 거품 입욕제, 마사지 오일, 혹은 바디 로션 등을
													사용하면 피부 발진이 생기거나, 가렵거나 건조한 느낌이 있나요? (주의 : 이런 제품에 의해 피부에 문제가
													생겨서 사용하지 않으면 “④”로 답해주세요).</a></div></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_8radio2" value="1" style="margin-bottom: -5px; padding: 0px;"> ① 전혀 없다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_8radio2" value="2" style="margin-bottom: -5px; padding: 0px;"> ② 거의 없다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_8radio2" value="3" style="margin-bottom: -5px; padding: 0px;"> ③ 자주 나타난다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_8radio2" value="4" style="margin-bottom: -5px; padding: 0px;"> ④ 항상 나타난다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_8radio2" value="5" style="margin-bottom: -5px; padding: 0px;"> ⑤ 나는 이런 종류의 제품을 전혀 사용하지 않는다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 10px;"></td>
                                                    </tr>
                                                    <!-- -----9---- -->
                                                    <tr>
                                                        <td style="font-weight: bold;">
                                                        <div id=pt2_qu9><a href="javascript:;" id="pt_09tab2">9. 호텔에 비치된 비누를 몸이나 얼굴에 아무런 문제없이 사용할 수
													있나요?</a></div></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_9radio2" value="1" style="margin-bottom: -5px; padding: 0px;"> ① 아무 문제없이 사용할 수 있다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_9radio2" value="2" style="margin-bottom: -5px; padding: 0px;"> ② 대부분 가능하며, 아무런 문제가 없다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_9radio2" value="3" style="margin-bottom: -5px; padding: 0px;"> ③ 없다. 피부가 가렵고 붉게 변하거나 돋아 오른다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_9radio2" value="4" style="margin-bottom: -5px; padding: 0px;"> ④ 사용하지 않을 것이다. 과거에 사용하고 너무나 많은 문제가 있었다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_9radio2" value="5" style="margin-bottom: -5px; padding: 0px;"> ⑤ 잘 모르겠다. 혹은 그런 제품을 사용한 적이 없다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 10px;"></td>
                                                    </tr>
                                                    <!-- -----10---- -->
                                                    <tr>
                                                        <td style="font-weight: bold;">
                                                        <div id=pt2_qu10><a href="javascript:;" id="pt_10tab2">10. 가족 중에서 아토피 피부염, 습진, 천식, 알레르기로 진단받은 분이
													있나요?</a></div></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_10radio2" value="1" style="margin-bottom: -5px; padding: 0px;"> ①없다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_10radio2" value="2" style="margin-bottom: -5px; padding: 0px;"> ② 가족 중 한 명이 진단 받았다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_10radio2" value="3" style="margin-bottom: -5px; padding: 0px;"> ③ 가족 중 몇 명이 진단 받았다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_10radio2" value="4" style="margin-bottom: -5px; padding: 0px;"> ④ 가족 중 많은 사람이 피부염, 습진, 천식, 알레르기를 가지고 있다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_10radio2" value="5" style="margin-bottom: -5px; padding: 0px;"> ⑤ 잘 모르겠다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 10px;"></td>
                                                    </tr>
                                                    <!-- -----11---- -->
                                                    <tr>
                                                        <td style="font-weight: bold;">
                                                        <div id=pt2_qu11><a href="javascript:;" id="pt_11tab2">11. 향료가 첨가된 세탁용 세제를 사용하거나, 빨래 건조기 속에 포함된
													정전기 방지용 시트를 사용하면 어떤 일이 발생하나요?</a></div></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_11radio2" value="1" style="margin-bottom: -5px; padding: 0px;"> ① 피부의 상태가 좋다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_11radio2" value="2" style="margin-bottom: -5px; padding: 0px;"> ② 피부가 약간 건조한 느낌이다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_11radio2" value="3" style="margin-bottom: -5px; padding: 0px;"> ③ 피부가 가렵다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_11radio2" value="4" style="margin-bottom: -5px; padding: 0px;"> ④ 피부가 가렵고 발진이 나타난다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_11radio2" value="5" style="margin-bottom: -5px; padding: 0px;"> ⑤ 잘 모르겠다. 혹은 그런 제품을 사용한 적이 없다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 10px;"></td>
                                                    </tr>
                                                    <!-- -----12---- -->
                                                    <tr>
                                                        <td style="font-weight: bold;">
                                                        <div id=pt2_qu12><a href="javascript:;" id="pt_12tab2">12. 운동, 스트레스 또는 격한 감정(분노 등)에 의해 얼굴과 목이
													붉어지나요?</a></div></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_12radio2" value="1" style="margin-bottom: -5px; padding: 0px;"> ① 전혀 그런 적이 없다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_12radio2" value="2" style="margin-bottom: -5px; padding: 0px;"> ② 때때로 그렇다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_12radio2" value="3" style="margin-bottom: -5px; padding: 0px;"> ③ 자주 그렇다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_12radio2" value="4" style="margin-bottom: -5px; padding: 0px;"> ④ 항상 그렇다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 10px;"></td>
                                                    </tr>
                                                    <!-- -----13---- -->
                                                    <tr>
                                                        <td style="font-weight: bold;">
                                                        <div id=pt2_qu13><a href="javascript:;" id="pt_13tab2">13. 음주 후에 피부가 붉어지나요?</a></div></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_13radio2" value="1" style="margin-bottom: -5px; padding: 0px;"> ① 전혀 그런 적이 없다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_13radio2" value="2" style="margin-bottom: -5px; padding: 0px;"> ② 때때로 그렇다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_13radio2" value="3" style="margin-bottom: -5px; padding: 0px;"> ③ 자주 그렇다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_13radio2" value="4" style="margin-bottom: -5px; padding: 0px;"> ④ 항상 그렇다. 혹은 이런 문제 때문에 술을 마시지 않는다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_13radio2" value="5" style="margin-bottom: -5px; padding: 0px;"> ⑤ 알코올을 전혀 마시지 않는다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 10px;"></td>
                                                    </tr>
                                                    <!-- -----14---- -->
                                                    <tr>
                                                        <td style="font-weight: bold;">
                                                        <div id=pt2_qu14><a href="javascript:;" id="pt_14tab2">14. 맵거나 뜨거운 음식 혹은 음료를 섭취한 후에 피부가 붉어지거나
													달아오르나요?</a></div></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_14radio2" value="1" style="margin-bottom: -5px; padding: 0px;"> ① 전혀 그런 적이 없다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_14radio2" value="2" style="margin-bottom: -5px; padding: 0px;"> ② 때때로 그렇다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_14radio2" value="3" style="margin-bottom: -5px; padding: 0px;"> ③ 자주 그렇다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_14radio2" value="4" style="margin-bottom: -5px; padding: 0px;"> ⑤ 매운 음식을 전혀 먹지 않는다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 10px;"></td>
                                                    </tr>
                                                    <!-- -----15---- -->
                                                    <tr>
                                                        <td style="font-weight: bold;">
                                                        <div id=pt2_qu15><a href="javascript:;" id="pt_15tab2">15. 얼굴이나 코에 붉거나 푸른색의 혈관이 얼마나 많이 있나요(혹은 치료
													전에 존재하였나요)?</a></div></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_15radio2" value="1" style="margin-bottom: -5px; padding: 0px;"> ① 없다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_15radio2" value="2" style="margin-bottom: -5px; padding: 0px;"> ② 드물다(코를 포함한 얼굴 전체에서 1∼3개).</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_15radio2" value="3" style="margin-bottom: -5px; padding: 0px;"> ③ 약간 존재한다(코를 포함한 얼굴 전체에서 4∼6개).</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_15radio2" value="4" style="margin-bottom: -5px; padding: 0px;"> ④ 많이 존재한다(코를 포함한 얼굴 전체에서 7개 이상).</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 10px;"></td>
                                                    </tr>
                                                    <!-- -----16---- -->
                                                    <tr>
                                                        <td style="font-weight: bold;">
                                                        <div id=pt2_qu16><a href="javascript:;" id="pt_16tab2">16. 사진을 찍었을 때 얼굴이 붉게 나타나나요?</a></div></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_16radio2" value="1" style="margin-bottom: -5px; padding: 0px;"> ① 전혀 아니다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_16radio2" value="2" style="margin-bottom: -5px; padding: 0px;"> ② 때때로 그렇다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_16radio2" value="3" style="margin-bottom: -5px; padding: 0px;"> ③ 자주 그렇다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_16radio2" value="4" style="margin-bottom: -5px; padding: 0px;"> ④ 항상 그렇다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 10px;"></td>
                                                    </tr>
                                                    <!-- -----17---- -->
                                                    <tr>
                                                        <td style="font-weight: bold;">
                                                        <div id=pt2_qu17><a href="javascript:;" id="pt_17tab2">17. 실제로 그런 적이 없지만 사람들이 햇볕에 탔냐고 물어보나요?</a></div></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_17radio2" value="1" style="margin-bottom: -5px; padding: 0px;"> ① 전혀 아니다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_17radio2" value="2" style="margin-bottom: -5px; padding: 0px;"> ② 때때로 그렇다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_17radio2" value="3" style="margin-bottom: -5px; padding: 0px;"> ③ 자주 그렇다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_17radio2" value="4" style="margin-bottom: -5px; padding: 0px;"> ④ 항상 그렇다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_17radio2" value="5" style="margin-bottom: -5px; padding: 0px;"> ⑤ 나는 항상 햇볕에 의해 탄 상태이다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 10px;"></td>
                                                    </tr>
                                                    <!-- -----18---- -->
                                                    <tr>
                                                        <td style="font-weight: bold;"><div id=pt2_qu18><a href="javascript:;" id="pt_18tab2">18. 화장품, 자외선차단제, 피부 관리용 제품을 사용한 후에 피부의
													발적, 가려움증, 부종의 경험은? (주의 : 발적, 가려움증, 혹은 부종 때문에 이런 제품을 사용하지
													않는다면 “④”로 답하세요)</a></div></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_18radio2" value="1" style="margin-bottom: -5px; padding: 0px;"> ① 전혀 없다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_18radio2" value="2" style="margin-bottom: -5px; padding: 0px;"> ② 때때로 그렇다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_18radio2" value="3" style="margin-bottom: -5px; padding: 0px;"> ③ 자주 그렇다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_18radio2" value="4" style="margin-bottom: -5px; padding: 0px;"> ④ 항상 그렇다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_18radio2" value="5" style="margin-bottom: -5px; padding: 0px;"> ⑤ 이런 제품을 사용하지 않는다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 10px;"></td>
                                                    </tr>
                                                    <!-- -----19---- -->
                                                    <tr>
                                                        <td style="font-weight: bold;">
                                                        <div id=pt2_qu19><a href="javascript:;" id="pt_19tab2">19. 의사로부터 여드름, 주사, 접촉 피부염, 혹은 습진 진단을 받은
													적이 있나요?</a></div></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_19radio2" value="5" style="margin-bottom: -5px; padding: 0px;"> ① 네, 피부과 전문의에게 진단 받은 적이 있습니다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_19radio2" value="3" style="margin-bottom: -5px; padding: 0px;"> ② 네, 타과 의사에게 진단 받은 적이 있습니다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_19radio2" value="1" style="margin-bottom: -5px; padding: 0px;"> ⑤ 아니오, 진단 받은 적이 없습니다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 10px;"></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <!-- pt2 끝 -->
                                        <!-- pt3 시작 -->
                                        <div id="pt3tab" class="tab-pane fade">
                                            <h4>Part.3 색소성 (Pigmented) vs 비색소성 (Non-pigmented)</h4>
                                            <h2>피부의 멜라닌 생성 경향 측정</h2>
                                            <table>
                                                <tbody>
                                                    <!-- -----1---- -->
                                                    <tr>
                                                        <td style="font-weight: bold;">
                                                        <div id=pt3_qu1><a href="javascript:;" id="pt_01tab3">1. 여드름 혹은 피부 속으로 파고 들어간 모발에 의해 짙은 갈색/검은
													점은?</a></div></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_1radio3" value="1" style="margin-bottom: -5px; padding: 0px;"> ①전혀 생기지 않는다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_1radio3" value="2" style="margin-bottom: -5px; padding: 0px;"> ②때때로 생긴다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_1radio3" value="3" style="margin-bottom: -5px; padding: 0px;"> ③자주 생긴다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_1radio3" value="4" style="margin-bottom: -5px; padding: 0px;"> ④여드름이나 피부 속으로 파고 들어간 모발이 전혀 없다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 10px;"></td>
                                                    </tr>
                                                    <!-- -----2---- -->
                                                    <tr>
                                                        <td style="font-weight: bold;">
                                                        <div id=pt3_qu2><a href="javascript:;" id="pt_02tab3">2. 외상 후에 갈색(분홍색은 아님)의 상처 자국이 피부에 얼마나 오래
													존재하나요?</a></div></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_2radio3" value="1" style="margin-bottom: -5px; padding: 0px;"> ①전혀 생기지 않는다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_2radio3" value="2" style="margin-bottom: -5px; padding: 0px;"> ② 1주일</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_2radio3" value="3" style="margin-bottom: -5px; padding: 0px;"> ③수 주</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_2radio3" value="4" style="margin-bottom: -5px; padding: 0px;"> ④수 개월</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 10px;"></td>
                                                    </tr>
                                                    <!-- -----3---- -->
                                                    <tr>
                                                        <td style="font-weight: bold;">
                                                        <div id=pt3_qu3><a href="javascript:;" id="pt_03tab3">3. 임신, 피임약 복용, 호르몬 대체 요법에 의해 얼굴에 짙은 갈색
													반점이 얼마나 많이 생기나요?</a></div></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_3radio3" value="1" style="margin-bottom: -5px; padding: 0px;"> ① 전혀 없다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_3radio3" value="2" style="margin-bottom: -5px; padding: 0px;"> ② 1 개</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_3radio3" value="3" style="margin-bottom: -5px; padding: 0px;"> ③ 약간 생긴다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_3radio3" value="4" style="margin-bottom: -5px; padding: 0px;"> ④ 많이 생긴다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_3radio3" value="5" style="margin-bottom: -5px; padding: 0px;"> ⑤ 이 설문은 나에게 적용되지 않는다. (왜냐하면 나는 남성이므로, 또는 임신 상태이거나 피임약을 복용하거나 호르몬 대체 요법을 받은 적이 없기 때문에, 혹은 짙은 반점의 존재를 잘 모르기 때문에).</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 10px;"></td>
                                                    </tr>
                                                    <!-- -----4---- -->
                                                    <tr>
                                                        <td style="font-weight: bold;">
                                                        <div id=pt3_qu4><a href="javascript:;" id="pt_04tab3">4. 윗입술이나 두 뺨에 짙은 점이나 갈색 반점이 있나요? 혹은 과거에
													병변을 제거한 경험이 있나요?</a></div></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_4radio3" value="1" style="margin-bottom: -5px; padding: 0px;"> ① 없다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_4radio3" value="2" style="margin-bottom: -5px; padding: 0px;"> ② 잘 모르겠다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_4radio3" value="3" style="margin-bottom: -5px; padding: 0px;"> ③ 약간 알아볼 수 있을 정도로 있다(혹은 있었다).</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_4radio3" value="4" style="margin-bottom: -5px; padding: 0px;"> ④ 잘 알아볼 수 있을 정도로 있다(혹은 있었다).</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 10px;"></td>
                                                    </tr>
                                                    <!-- -----5---- -->
                                                    <tr>
                                                        <td style="font-weight: bold;">
                                                        <div id=pt3_qu5><a href="javascript:;" id="pt_05tab3">5. 얼굴의 짙은 점은 햇빛에 의해 악화됩니까?</a></div></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_5radio3" value="1" style="margin-bottom: -5px; padding: 0px;"> ①짙은 점이 전혀 없다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_5radio3" value="2" style="margin-bottom: -5px; padding: 0px;"> ②잘 모르겠다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_5radio3" value="3" style="margin-bottom: -5px; padding: 0px;"> ③약간 나빠진다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_5radio3" value="4" style="margin-bottom: -5px; padding: 0px;"> ④많이 나빠진다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_5radio3" value="5" style="margin-bottom: -5px; padding: 0px;"> ⑤매일 자외선차단제를 얼굴에 바르고 햇빛을 피한다 (주의: 짙은 반점이나 주근깨의 발생이 두려워 지속적으로 자외선차단제를 사용한다면, “④”로 답하세요)</td>
                                                    </tr>
                                                    <!-- -----6---- -->
                                                    <tr>
                                                        <td style="height: 10px;"></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="font-weight: bold;">
                                                        <div id=pt3_qu6><a href="javascript:;" id="pt_06tab3">6. 과거에 얼굴 기미(옅거나 짙은 갈색 혹은 회색 반점)로 진단받은 적이
													있습니까? </a></div></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_6radio3" value="1" style="margin-bottom: -5px; padding: 0px;"> ①없다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_6radio3" value="2" style="margin-bottom: -5px; padding: 0px;"> ②한 번 있었지만, 소실되었다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_6radio3" value="3" style="margin-bottom: -5px; padding: 0px;"> ③있다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_6radio3" value="4" style="margin-bottom: -5px; padding: 0px;"> ④있으며, 심각한 경우이다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_6radio3" value="5" style="margin-bottom: -5px; padding: 0px;"> ⑤잘 모르겠다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 10px;"></td>
                                                    </tr>
                                                    <!-- -----7---- -->
                                                    <tr>
                                                        <td style="font-weight: bold;">
                                                        <div id=pt3_qu7><a href="javascript:;" id="pt_07tab3">7. 얼굴, 가슴, 등, 혹은 양 팔에 작은 갈색 점(주근깨, 일광
													흑자)이 있거나, 있었던 적이 있습니까? </a></div></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_7radio3" value="1" style="margin-bottom: -5px; padding: 0px;"> ①없다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_7radio3" value="2" style="margin-bottom: -5px; padding: 0px;"> ②약간 있다(1∼5개)</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_7radio3" value="3" style="margin-bottom: -5px; padding: 0px;"> ③많이 있다(6∼15개)</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_7radio3" value="4" style="margin-bottom: -5px; padding: 0px;"> ④대단히 많다(16개 이상)</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 10px;"></td>
                                                    </tr>
                                                    <!-- -----8---- -->
                                                    <tr>
                                                        <td style="font-weight: bold;">
                                                        <div id=pt3_qu8><a href="javascript:;" id="pt_08tab3">8. 가끔 평소보다 태양에 많이 노출되었을 때 피부는 어떻게 반응하나요?
											</a></div></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_8radio3" value="1" style="margin-bottom: -5px; padding: 0px;"> ①햇빛에 타서 물집이 생겼으나 피부색은 변하지 않는다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_8radio3" value="2" style="margin-bottom: -5px; padding: 0px;"> ②피부색이 약간 짙어졌다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_8radio3" value="3" style="margin-bottom: -5px; padding: 0px;"> ③피부색이 많이 짙어졌다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_8radio3" value="4" style="margin-bottom: -5px; padding: 0px;"> ④원래 피부색이 짙어서 더 짙어졌는지 구분이 어렵다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_8radio3" value="5" style="margin-bottom: -5px; padding: 0px;"> ⑤잘 모르겠다 (“태양에 노출된 적이 전혀 없다.”고 단정하지 마세요. 만약 보기 “⑤”를 선택하면 유년기의 경험을 고려하세요)</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 10px;"></td>
                                                    </tr>
                                                    <!-- -----9---- -->
                                                    <tr>
                                                        <td style="font-weight: bold;">
                                                        <div id=pt3_qu9><a href="javascript:;" id="pt99tab3">9. 햇볕에 나가면, 주근깨(작은 1~2mm 크기의 편평한 점)가 생기나요?</a></div></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_9radio3" value="1" style="margin-bottom: -5px; padding: 0px;"> ①전혀 생기지 않는다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_9radio3" value="2" style="margin-bottom: -5px; padding: 0px;"> ②매년 약간씩 작은 주근깨가 생긴다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_9radio3" value="3" style="margin-bottom: -5px; padding: 0px;"> ③자주 주근깨가 생긴다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_9radio3" value="4" style="margin-bottom: -5px; padding: 0px;"> ④피부가 이미 짙어서 주근깨가 있는 지 구분이 어렵다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_9radio3" value="5" style="margin-bottom: -5px; padding: 0px;"> ⑤햇볕에 전혀 나가지 않는다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 10px;"></td>
                                                    </tr>
                                                    <!-- -----10---- -->
                                                    <tr>
                                                        <td style="font-weight: bold;">
                                                        <div id=pt3_qu10><a href="javascript:;" id="pt_10tab3">10. 부모님 중의 어느 한 분이라도 주근깨가 있나요? (만약 그렇다면,
													얼마나 많았는지 지적해 주세요. 두분 중 아무도 그렇지 않거나 한 분만 해당하면 질문에 답해 주세요. 두
													분이 모두 있으면 주근깨가 가장 많았던 분과 관련된 질문에 답해 주세요)</a></div></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_10radio3" value="1" style="margin-bottom: -5px; padding: 0px;"> ①없다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_10radio3" value="2" style="margin-bottom: -5px; padding: 0px;"> ②얼굴에 약간 있었다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_10radio3" value="3" style="margin-bottom: -5px; padding: 0px;"> ③얼굴에 많이 있었다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_10radio3" value="4" style="margin-bottom: -5px; padding: 0px;"> ④얼굴, 가슴, 목, 양쪽 어깨에 많이 있었다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_10radio3" value="5" style="margin-bottom: -5px; padding: 0px;"> ⑤잘 모르겠다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 10px;"></td>
                                                    </tr>
                                                    <!-- -----11---- -->
                                                    <tr>
                                                        <td style="font-weight: bold;">
                                                        <div id=pt3_qu11><a href="javascript:;" id="pt_11tab3">11. 부모님 중의 어느 한 분이라도 주근깨가 있나요?</a></div></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_11radio3" value="1" style="margin-bottom: -5px; padding: 0px;"> ①없다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_11radio3" value="2" style="margin-bottom: -5px; padding: 0px;"> ②얼굴에 약간 있었다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_11radio3" value="3" style="margin-bottom: -5px; padding: 0px;"> ③얼굴에 많이 있었다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_11radio3" value="4" style="margin-bottom: -5px; padding: 0px;"> ④얼굴, 가슴, 목, 양쪽 어깨에 많이 있었다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_11radio3" value="5" style="margin-bottom: -5px; padding: 0px;"> ⑤잘 모르겠다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 10px;"></td>
                                                    </tr>
                                                    <!-- -----12---- -->
                                                    <tr>
                                                        <td style="font-weight: bold;"><div id=pt3_qu12><a href="javascript:;" id="pt_01tab3">12. 당신의 원래 머리카락의 색깔은 무슨 색입니까?</a></div></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_12radio3" value="1" style="margin-bottom: -5px; padding: 0px;"> ① 금발</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_12radio3" value="2" style="margin-bottom: -5px; padding: 0px;"> ② 갈색</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_12radio3" value="3" style="margin-bottom: -5px; padding: 0px;"> ③ 검정색</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_12radio3" value="4" style="margin-bottom: -5px; padding: 0px;"> ④ 붉은색</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 10px;"></td>
                                                    </tr>
                                                    <!-- -----13---- -->
                                                    <tr>
                                                        <td style="font-weight: bold;"><div id=pt3_qu13><a href="javascript:;" id="pt_13tab3">13. 자신이나 직계 가족 중에 피부암(편평세포암, 악성 흑색종)의
													과거력이 있나요?</a></div></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_13radio3" value="1" style="margin-bottom: -5px; padding: 0px;"> ① 없다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_13radio3" value="2" style="margin-bottom: -5px; padding: 0px;"> ② 가족 중 1명이 있다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_13radio3" value="3" style="margin-bottom: -5px; padding: 0px;"> ③ 가족 중 2명 이상이 있다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_13radio3" value="4" style="margin-bottom: -5px; padding: 0px;"> ④ 나 자신이 있다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_13radio3" value="5" style="margin-bottom: -5px; padding: 0px;"> ⑤ 잘 모르겠다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 10px;"></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <!-- pt3 끝 -->
                                        <!-- pt4 시작 -->
                                        <div id="pt4tab" class="tab-pane fade">
                                            <h4>Part.4 주름 (Wrinkled) vs 탱탱함 (Tight)</h4>
                                            <h2>주름의 발생 유무 및 진행 상황 측정</h2>
                                            <table>
                                                <tbody>
                                                    <!-- -----1---- -->
                                                    <tr>
                                                        <td style="font-weight: bold;">
                                                            <div id=pt4_qu1><a href="javascript:;" id="pt_01tab4">1. 얼굴에 주름이 있나요?</a></div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_1radio4" value="1" style="margin-bottom: -5px; padding: 0px;"> ①없다. 웃거나 찡그리거나 눈썹을 치켜 올릴 경우에도 없다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_1radio4" value="2" style="margin-bottom: -5px; padding: 0px;"> ②웃거나 찡그리거나 눈썹을 치켜 올릴 때에 있다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_1radio4" value="3" style="margin-bottom: -5px; padding: 0px;"> ③있다. 얼굴을 움직이거나 움직임이 없는 안정된 상태에서도 약간 있다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_1radio4" value="4" style="margin-bottom: -5px; padding: 0px;"> ④웃거나 찡그리거나, 혹은 눈썹을 치켜 올리지 않아도 주름이 있다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 10px;"></td>
                                                    </tr>
                                                    <!-- -----2~7---- -->
                                                    <tr>
                                                        <td style="font-weight: bold;"><div id=pt4_qu2><a href="javascript:;" id="pt_02tab4">2~7번 아래 보기에 해당하는 번호를 각설문에 답 해 주세요.</a></div></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">① 나이보다 5∼10년 젊어 보인다./보였다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">② 나이대로 보인다./보였다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">③ 나이보다 5년 더 늙어 보인다./보였다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">④ 나이보다 5년 이상 더 늙어 보인다./보였다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">⑤ 적용할 수 없다. 나는 입양되었거나 기억할 수가 없다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 10px;"></td>
                                                    </tr>
                                                    <!-- -----2---- -->
                                                    <tr>
                                                        <td style="font-weight: bold;">
                                                        <div id=pt4_qu2><a href="javascript:;" id="pt_02tab4">2. 아버지의 얼굴 피부는 얼마나 나이 들어 보이나요?/보였나요?</a></div></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_2radio4" value="1" style="margin-bottom: -5px; padding: 0px;"> ①
                                                            <input type="radio" name="pt_2radio4" value="2" style="margin-bottom: -5px; padding: 0px;"> ②
                                                            <input type="radio" name="pt_2radio4" value="3" style="margin-bottom: -5px; padding: 0px;"> ③
                                                            <input type="radio" name="pt_2radio4" value="4" style="margin-bottom: -5px; padding: 0px;"> ④
                                                            <input type="radio" name="pt_2radio4" value="5" style="margin-bottom: -5px; padding: 0px;"> ⑤</td>
                                                    </tr>
                                                    <!-- -----3---- -->
                                                    <tr>
                                                        <td style="font-weight: bold;"><div id=pt4_qu3><a href="javascript:;" id="pt_03tab4">3. 어머니의 얼굴 피부는 얼마나 나이 들어 보이나요?/보였나요?</a></div></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_3radio4" value="1" style="margin-bottom: -5px; padding: 0px;"> ①
                                                            <input type="radio" name="pt_3radio4" value="2" style="margin-bottom: -5px; padding: 0px;"> ②
                                                            <input type="radio" name="pt_3radio4" value="3" style="margin-bottom: -5px; padding: 0px;"> ③
                                                            <input type="radio" name="pt_3radio4" value="4" style="margin-bottom: -5px; padding: 0px;"> ④
                                                            <input type="radio" name="pt_3radio4" value="5" style="margin-bottom: -5px; padding: 0px;"> ⑤</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 10px;"></td>
                                                    </tr>
                                                    <!-- -----4---- -->
                                                    <tr>
                                                        <td style="font-weight: bold;"><div id=pt4_qu4><a href="javascript:;" id="pt_04tab4">4. 할아버지의 얼굴 피부는 얼마나 나이 들어 보이나요?/보였나요?</a></div></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_4radio4" value="1" style="margin-bottom: -5px; padding: 0px;"> ①
                                                            <input type="radio" name="pt_4radio4" value="2" style="margin-bottom: -5px; padding: 0px;"> ②
                                                            <input type="radio" name="pt_4radio4" value="3" style="margin-bottom: -5px; padding: 0px;"> ③
                                                            <input type="radio" name="pt_4radio4" value="4" style="margin-bottom: -5px; padding: 0px;"> ④
                                                            <input type="radio" name="pt_4radio4" value="5" style="margin-bottom: -5px; padding: 0px;"> ⑤</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 10px;"></td>
                                                    </tr>
                                                    <!-- -----5---- -->
                                                    <tr>
                                                        <td style="font-weight: bold;"><div id=pt4_qu5><a href="javascript:;" id="pt_05tab4">5. 할머니의 얼굴 피부는 얼마나 나이 들어 보이나요?/보였나요?</a></div></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_5radio4" value="1" style="margin-bottom: -5px; padding: 0px;"> ①
                                                            <input type="radio" name="pt_5radio4" value="2" style="margin-bottom: -5px; padding: 0px;"> ②
                                                            <input type="radio" name="pt_5radio4" value="3" style="margin-bottom: -5px; padding: 0px;"> ③
                                                            <input type="radio" name="pt_5radio4" value="4" style="margin-bottom: -5px; padding: 0px;"> ④
                                                            <input type="radio" name="pt_5radio4" value="5" style="margin-bottom: -5px; padding: 0px;"> ⑤</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 10px;"></td>
                                                    </tr>
                                                    <!-- -----6---- -->
                                                    <tr>
                                                        <td style="font-weight: bold;"><div id=pt4_qu6><a href="javascript:;" id="pt_06tab4">6. 외할아버지의 얼굴 피부는 얼마나 나이 들어 보이나요?/보였나요?</a></div></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_6radio4" value="1" style="margin-bottom: -5px; padding: 0px;"> ①
                                                            <input type="radio" name="pt_6radio4" value="2" style="margin-bottom: -5px; padding: 0px;"> ②
                                                            <input type="radio" name="pt_6radio4" value="3" style="margin-bottom: -5px; padding: 0px;"> ③
                                                            <input type="radio" name="pt_6radio4" value="4" style="margin-bottom: -5px; padding: 0px;"> ④
                                                            <input type="radio" name="pt_6radio4" value="5" style="margin-bottom: -5px; padding: 0px;"> ⑤</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 10px;"></td>
                                                    </tr>
                                                    <!-- -----7---- -->
                                                    <tr>
                                                        <td style="font-weight: bold;"><div id=pt4_qu7><a href="javascript:;" id="pt_07tab4">7. 외할머니의 얼굴 피부는 얼마나 나이 들어 보이나요?/보였나요?</a></div></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_7radio4" value="1" style="margin-bottom: -5px; padding: 0px;"> ①
                                                            <input type="radio" name="pt_7radio4" value="2" style="margin-bottom: -5px; padding: 0px;"> ②
                                                            <input type="radio" name="pt_7radio4" value="3" style="margin-bottom: -5px; padding: 0px;"> ③
                                                            <input type="radio" name="pt_7radio4" value="4" style="margin-bottom: -5px; padding: 0px;"> ④
                                                            <input type="radio" name="pt_7radio4" value="5" style="margin-bottom: -5px; padding: 0px;"> ⑤</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 10px;"></td>
                                                    </tr>
                                                    <!-- -----8---- -->
                                                    <tr>
                                                        <td style="font-weight: bold;"><div id=pt4_qu8><a href="javascript:;" id="pt_01tab4">8. 1년에 2주 이상 지속적으로 자신의 피부를 태운 경험이 있었나요?
													(만약 그랬다면, 몇 년 동안이나 그렇게 했나요? 테니스, 낚시, 골프, 스키, 혹은 다른 야외 활동에
													의해 피부가 탔을 경우에도 빈도를 세어 주세요.</a></div></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_8radio4" value="1" style="margin-bottom: -5px; padding: 0px;"> ① 없다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_8radio4" value="2" style="margin-bottom: -5px; padding: 0px;"> ② 1~5년.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_8radio4" value="3" style="margin-bottom: -5px; padding: 0px;"> ③ 5~10년</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_8radio4" value="4" style="margin-bottom: -5px; padding: 0px;"> ④10년 초과</td>
                                                    </tr>
                                                    <!-- -----9---- -->
                                                    <tr>
                                                        <td style="height: 10px;"></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="font-weight: bold;"><div id=pt4_qu9><a href="javascript:;" id="pt_09tab4">9. 계절적으로 연간 2주 이하의 기간에 피부를 태운 적이 있었나요?
													(그렇습니다. 여름휴가 기간이 중요하죠! 만약 그렇다면 얼마나 자주였나요?)</a></div></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_9radio4" value="1" style="margin-bottom: -5px; padding: 0px;"> ① 전혀 없다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_9radio4" value="2" style="margin-bottom: -5px; padding: 0px;"> ② 1∼5년</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_9radio4" value="3" style="margin-bottom: -5px; padding: 0px;"> ③ 5∼10년</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_9radio4" value="4" style="margin-bottom: -5px; padding: 0px;"> ④ 10년 초과</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 10px;"></td>
                                                    </tr>
                                                    <!-- -----10---- -->
                                                    <tr>
                                                        <td style="font-weight: bold;"><div id=pt4_qu10><a href="javascript:;" id="pt_10tab4">10. 거주지를 기준으로, 일상생활 중에서 하루의 일광 노출은 얼마나
													되나요? (한국에서만 살았을 경우 ③을 선택!)</a></div></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_10radio4" value="1" style="margin-bottom: -5px; padding: 0px;"> ① 별로 (유럽북부/영국/캐나다/러시아 등: 흐리거나 구름이 많은 장소에서 주로 살아왔다.)</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_10radio4" value="2" style="margin-bottom: -5px; padding: 0px;"> ② 약간 (유럽 중부, 미국 북부, 중국북부: 때때로 덜 화창한 기후에서 살았지만, 규칙적으로 일광이 존재하는 장소에서 살아왔다.)</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_10radio4" value="3" style="margin-bottom: -5px; padding: 0px;"> ③ 중간 (한국, 중국, 일본, 유럽 남부/미국 중남부: 꽤 많은 양의 일광이 존재하는 장소에서 살아왔다.)</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_10radio4" value="4" style="margin-bottom: -5px; padding: 0px;"> ④ 많음 (열대, 남부, 호주: 혹은 매우 화창한 장소에서 살아왔다.)</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 10px;"></td>
                                                    </tr>
                                                    <!-- -----11---- -->
                                                    <tr>
                                                        <td style="font-weight: bold;"><div id=pt4_qu11><a href="javascript:;" id="pt_11tab4">11. 자신은 얼마나 나이 들어 보인다고 생각하시나요? </a></div></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_11radio4" value="1" style="margin-bottom: -5px; padding: 0px;"> ① 자신의 나이보다 1∼5년 더 젊어 보인다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_11radio4" value="2" style="margin-bottom: -5px; padding: 0px;"> ② 자신의 나이대로 보인다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_11radio4" value="3" style="margin-bottom: -5px; padding: 0px;"> ③ 자신의 나이보다 5년 더 늙어 보인다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_11radio4" value="4" style="margin-bottom: -5px; padding: 0px;"> ④ 자신의 나이보다 5년 이상 더 늙어 보인다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 10px;"></td>
                                                    </tr>
                                                    <!-- -----12---- -->
                                                    <tr>
                                                        <td style="font-weight: bold;"><div id=pt4_qu12><a href="javascript:;" id="pt_12tab4">12. 지난 5년 동안에 야외 스포츠나 다른 활동에 의해 자신의 피부를
													얼마나 자주 태웠나요?</a></div></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_12radio4" value="1" style="margin-bottom: -5px; padding: 0px;"> ① 전혀 안 태웠다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_12radio4" value="2" style="margin-bottom: -5px; padding: 0px;"> ② 1개월에 1회</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_12radio4" value="3" style="margin-bottom: -5px; padding: 0px;"> ③ 1주일에 1회</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_12radio4" value="4" style="margin-bottom: -5px; padding: 0px;"> ④ 매일</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 10px;"></td>
                                                    </tr>
                                                    <!-- -----13---- -->
                                                    <tr>
                                                        <td style="font-weight: bold;"><div id=pt4_qu13><a href="javascript:;" id="pt_13tab4">13. 해수욕장이나 야외수영장에서 일광욕 침대(tanning bed)에
													누워있던 경험은 1년에 몇 번 정도 인가요?</a></div></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_13radio4" value="1" style="margin-bottom: -5px; padding: 0px;"> ① 전혀 안 했다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_13radio4" value="2" style="margin-bottom: -5px; padding: 0px;"> ② 1∼5차례</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_13radio4" value="3" style="margin-bottom: -5px; padding: 0px;"> ③ 5∼10차례</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_13radio4" value="4" style="margin-bottom: -5px; padding: 0px;"> ④ 여러차례</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 10px;"></td>
                                                    </tr>
                                                    <!-- -----14---- -->
                                                    <tr>
                                                        <td style="font-weight: bold;"><div id=pt4_qu14><a href="javascript:;" id="pt_14tab4">14. 담배를 얼마나 많이 피웠나요(혹은 담배에 얼마나 많이
													노출되었나요)?</a></div></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_14radio4" value="1" style="margin-bottom: -5px; padding: 0px;"> ① 전혀 아니다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_14radio4" value="2" style="margin-bottom: -5px; padding: 0px;"> ② 두 세 갑</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_14radio4" value="3" style="margin-bottom: -5px; padding: 0px;"> ③ 몇 갑∼여러 갑</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_14radio4" value="4" style="margin-bottom: -5px; padding: 0px;"> ④ 매일 피운다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_14radio4" value="4" style="margin-bottom: -5px; padding: 0px;"> ⑤ 담배를 피운 적은 전혀 없지만, 규칙적으로 담배를 피우는 사람과 함께 지냈거나, 그들에 의해 양육되었거나, 함께 근무하였다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 10px;"></td>
                                                    </tr>
                                                    <!-- -----15---- -->
                                                    <tr>
                                                        <td style="font-weight: bold;"><div id=pt4_qu15><a href="javascript:;" id="pt_15tab4">15. 당신이 거주하시는 곳의 공기 오염에 대해 응답하세요.</a></div></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_15radio4" value="1" style="margin-bottom: -5px; padding: 0px;"> ① 공기가 신선하고 깨끗하다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_15radio4" value="2" style="margin-bottom: -5px; padding: 0px;"> ② 일부의 기간은 공기가 깨끗하다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_15radio4" value="3" style="margin-bottom: -5px; padding: 0px;"> ③ 공기가 약간 오염되어 있다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_15radio4" value="4" style="margin-bottom: -5px; padding: 0px;"> ④ 공기가 매우 오염되어 있다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 10px;"></td>
                                                    </tr>
                                                    <!-- -----16---- -->
                                                    <tr>
                                                        <td style="font-weight: bold;"><div id=pt4_qu16><a href="javascript:;" id="pt_16tab4">16. 레티노이드가 포함된 안면 크림(레티놀, 레노바, 레틴-A, 타조락,
													디페린, 어베이지 등)을 사용했다면 얼마나 오래 혹은 자주 사용하셨습니까?</a></div></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_16radio4" value="1" style="margin-bottom: -5px; padding: 0px;"> ①여러 해</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_16radio4" value="2" style="margin-bottom: -5px; padding: 0px;"> ②때때로</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_16radio4" value="3" style="margin-bottom: -5px; padding: 0px;"> ③젊었을 때 여드름 때문에 1회</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_16radio4" value="4" style="margin-bottom: -5px; padding: 0px;"> ④전혀 없다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 10px;"></td>
                                                    </tr>
                                                    <!-- -----17---- -->
                                                    <tr>
                                                        <td style="font-weight: bold;"><div id=pt4_qu17><a href="javascript:;" id="pt_17tab4">10. 과일과 채소를 얼마나 자주 섭취하고 있습니까?</a></div></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_17radio4" value="1" style="margin-bottom: -5px; padding: 0px;"> ①매 끼니마다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_17radio4" value="2" style="margin-bottom: -5px; padding: 0px;"> ②하루 1회</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_17radio4" value="3" style="margin-bottom: -5px; padding: 0px;"> ③때때로</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_17radio4" value="4" style="margin-bottom: -5px; padding: 0px;"> ④전혀 안 먹는다</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 10px;"></td>
                                                    </tr>
                                                    <!-- -----18---- -->
                                                    <tr>
                                                        <td style="font-weight: bold;"><div id=pt4_qu18><a href="javascript:;" id="pt_18tab4">18. 식사의 몇 퍼센트가 과일과 채소로 구성되어 있나요? (주의 :
													상점에서 구입한 주스류(캔 제품)는 포함시키지 마세요.)</a></div></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_18radio4" value="1" style="margin-bottom: -5px; padding: 0px;"> ① 75∼100%</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_18radio4" value="2" style="margin-bottom: -5px; padding: 0px;"> ② 25∼75%</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_18radio4" value="3" style="margin-bottom: -5px; padding: 0px;"> ③ 10∼25%</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_18radio4" value="4" style="margin-bottom: -5px; padding: 0px;"> ④ 0∼10%</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 10px;"></td>
                                                    </tr>
                                                    <!-- -----19---- -->
                                                    <tr>
                                                        <td style="font-weight: bold;"><div id=pt4_qu19><a href="javascript:;" id="pt_19tab4">19. 원래의 피부 색깔은(피부를 태우거나 태닝을 하지 않았을 때)?</a></div></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_19radio4" value="1" style="margin-bottom: -5px; padding: 0px;"> ①짙은 색깔</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_19radio4" value="2" style="margin-bottom: -5px; padding: 0px;"> ②중간 색깔</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_19radio4" value="3" style="margin-bottom: -5px; padding: 0px;"> ③옅은 색깔</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_19radio4" value="4" style="margin-bottom: -5px; padding: 0px;"> ④매우 옅은 색깔</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 10px;"></td>
                                                    </tr>
                                                    <!-- -----20---- -->
                                                    <tr>
                                                        <td style="font-weight: bold;"><div id=pt4_qu20><a href="javascript:;" id="pt_20tab4">20. 당신은 어떤 인종입니까?</a></div></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_20radio4" value="1" style="margin-bottom: -5px; padding: 0px;"> ① 흑인: 아프리카계 미국인/카리브해인/흑인</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_20radio4" value="2" style="margin-bottom: -5px; padding: 0px;"> ② 동양인(한국인): 아시아인/인도인/지중해인/기타</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_20radio4" value="3" style="margin-bottom: -5px; padding: 0px;"> ③ 라틴계 미국인/히스패닉인</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_20radio4" value="4" style="margin-bottom: -5px; padding: 0px;"> ④ 백인: 코카시안</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 10px;"></td>
                                                    </tr>
                                                    <!-- -----21---- -->
                                                    <tr>
                                                        <td style="font-weight: bold;"><div id=pt4_qu21><a href="javascript:;" id="pt_21tab4">21. 당신은 65세 이상입니까?</a></div></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_21radio4" value="5" style="margin-bottom: -5px; padding: 0px;"> ① 예, 65세 이상입니다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 0px 2px 5px 10px;">
                                                            <input type="radio" name="pt_21radio4" value="1" style="margin-bottom: -5px; padding: 0px;"> ② 아니오, 65세 미만입니다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 10px;"></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <!-- pt4 끝 -->
                                        <hr>
                                        <div id="checkAlertDiv" role="alert" class="alert1 alert-danger alert-common1" style="filter:alpha(opacity=50); display:none;"><span style="font-size: 20px;">Warning!  </span>
                                            <input id="checkAlert" name="checkAlert" value="" style="background-color:transparent;font-size: 15px;border: none; border-right: 0px; border-top: 0px; boder-left: 0px; width:70%; boder-bottom: 0px; readonly: true;"> 
                                            <div style="text-align:right"><a href="" id="tabpt" class="tabpt" data-toggle="tab" onclick="fn()">설문 수정하기</a></div> 
                                            <a type="hidden" href="" id="goqu" class="goqu" data-toggle="tab"></a> 
                                            <div style="text-align:right"><a>(현제 다른 탭을 진행중이시라면 "설문 수정하기"를 두번 눌러주세요)</a></div></div>
                                        <br>
                                        <div align="center" style="text-align: center;">
                                            <button type="submit" class="btn btn-common btn-full-round btn-theme" onclick="tryCheckType();"> 설문조사 응답 완료
                                                <br> <span style="font-size: 12px;">버튼 클릭 시 신청이
									완료됩니다.</span> </button>
                                            <input type="hidden" id="skinType" name="skinType" value="">
                                            <input type="hidden" id="customerNo" name="customerNo" value=""> </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
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