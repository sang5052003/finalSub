<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>마이스킨멘토DNA</title>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<meta http-equiv="X-UA-Compatible" content="IE=9; IE=Edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=3.0, user-scalable=yes">

<!--<link rel="stylesheet" type="text/css" href="css/jquery.fullPage.css" />
<link rel="stylesheet" type="text/css" href="css/examples.css" />-->
<style>
* {
	padding: 0px;
	margin: 0px;
	font-family: Nanum Gothic, sans-serif;
	font-size: 12px;
}

body {
	font-family: Nanum Gothic, sans-serif;
	font-size: 12px;
	background: url(imgs/notice_bg2.jpg) repeat-x center;
}

a:hover {
	
}

input {
	height: 20px;
}

.lbtn {
	padding: 0px;
	width: 80px;
	height: 26px;
	background-color: #F60;
	color: white;
	font-weight: bold;
	border-radius: 3px;
	border: 0px;
}

.lbtn_big {
	padding: 0px;
	width: 40%;
	height: 40px;
	background-color: #F60;
	color: white;
	font-weight: bold;
	border-radius: 3px;
	border: 0px;
	font-size: 16px;
}

.step_st {
	float: left;
	color: #fff;
	padding: 7px;
	width: 42%;
	display: inline-block;
	font-size: 14px;
	letter-spacing: -1px;
	background-color: #00b6cf;
}

.tab_st1 {
	background-color: #503018;
	border-radius: 3px;
	height: 40px;
	width: 98%;
	padding: 5px;
	color: white;
}

.input_Cb {
	margin-bottom: -5px;
	margin-left: 20px;
	padding: 0px;
}

.input_Cbn {
	border: none;
	background: none;
	color: #FFFF00;
	font-weight: bold;
	font-size: 11px;
}
</style>
<script>
	function opencloseTabe(thisid, thiscnt) {
		if (document.getElementById(thisid).checked == false) {
			document.getElementById(thisid + '_research').style.display = 'none';
			document.getElementById(thisid + '_n').value = '설문 열기';

		} else {
			openClose(thiscnt);
			document.getElementById(thisid + '_research').style.display = 'block';
			document.getElementById(thisid + '_n').value = '닫기';
		}
	}
	function openClose(thiscnt) {
		for (i = 1; i < 4; i++) {
			if (i == thiscnt)
				continue;
			document.getElementById('tabBtn' + i + '_research').style.display = 'none';
			document.getElementById('tabBtn' + i + '_n').value = '설문 열기';
			document.getElementById('tabBtn' + i).checked = false;
		}
	}
	function chg_style(str1) {
		var obj = document.getElementById(str1);
		obj.style.borderBottom = "2px solid #aaaaaa";
		obj.style.borderTop = "2px solid #aaaaaa";
		obj.style.borderLeft = "2px solid #aaaaaa";
		obj.style.borderRight = "2px solid #aaaaaa";
		obj.style.backgroundColor = "";
		obj.style.height = "20px";
		obj.readOnly = true;

	}
	function clr_style(str1) {
		var obj = document.getElementById(str1);
		obj.style.borderBottom = "2px solid #efefef";
		obj.style.borderTop = "2px solid #efefef";
		obj.style.borderLeft = "2px solid #efefef";
		obj.style.borderRight = "2px solid #efefef";
		obj.readOnly = false;
	}

	function allCheck() {
		if (document.getElementById("AuthNum").value == '') {
			alert('인증번호를 입력해 주세요. ');
			document.getElementById("AuthNum").value = "";
			document.getElementById("AuthNum").focus();
			return;
		}
		if (document.getElementById("AuthNum").value.length != 6) {
			alert('인증번호를 정확하게 입력해 주세요.');
			document.getElementById("AuthNum").value = "";
			document.getElementById("AuthNum").focus();
			return;
		}
	}

	function AllcheckInput(str1, maxcnt) {
		var researchAnswer = new Array();

		for (i = 1; i <= maxcnt; i++) { //문항수
		//		if(i==0)  continue;
			researchAnswer[i] = 0;
			if (i < 10) {
				var obj = document.getElementsByName('ex' + str1 + '0' + i);
				var objid = 'ex' + str1 + '0' + i;
			} else {
				var obj = document.getElementsByName('ex' + str1 + i);
				var objid = 'ex' + str1 + i;
			}

			var checkflag = false;
			for (var j = 0; j < obj.length; j++) { //답안수 

				if (obj[j].checked) {
					checkflag = true;
					researchAnswer[i] = obj[j].value;
					break;

				} else {
					checkflag = false;
				}
			}

			if (checkflag == false && i > 0) {
				alert("Part " + str1 + '의 ' + i + '번 항목에 체크해 주시기 바랍니다.');
				document.getElementById('tabBtn' + str1).checked = true;
				;
				opencloseTabe('tabBtn' + str1, str1);
				document.getElementById(objid + 'tab').focus();
				return false;
			}
		}
		return researchAnswer;
	}
	function checkCheckBox() {
		var arr;
		var researchAnswer = '';
		var arr = document.getElementsByName('tabBtn5');

		for (i = 0; i < arr.length; i++) {
			if (arr[i].checked == true) {
				researchAnswer += ',' + arr[i].value;
			}
		}
		if (researchAnswer == '') {
			alert('피부 고민이 선택 되지 않았습니다.');
			researchAnswer = false;
		}
		return researchAnswer;
	}
	function LoginEventurl() {
		if (confirm('로그인후 이용해주시기 바랍니다.\n\n아직 고운세상의 회원이아니시라면 회원가입 후 참여 가능합니다.\n로그인페이지로 이동하시겠습니까?')) {
			url = document.getElementById('url').value;
			location.href = '/login/login_member?url=' + url;
		}
	}
</script>
<script>
	var xmlhttp;

	function ajax_try() {// 체험단
		var p_count1s = document.getElementById("p_count1").value;
		var p_count2s = document.getElementById("p_count2").value;
		var p_count3s = document.getElementById("p_count3").value;
		var p_count4s = document.getElementById("p_count4").value;
		if (AllcheckInput(1, p_count1s) == false) {
			return;
		}
		if (AllcheckInput(2, p_count2s) == false) {
			return;
		}
		if (AllcheckInput(3, p_count3s) == false) {
			return;
		}
		if (AllcheckInput(4, p_count4s) == false) {
			return;
		}
		//if(checkCheckBox() ==false){
		//	return;
		//}

		result_check1 = AllcheckInput(1, p_count1s);// (분류,문항수)
		result_check2 = AllcheckInput(2, p_count2s);
		result_check3 = AllcheckInput(3, p_count3s);
		result_check4 = AllcheckInput(4, p_count4s);
		//result_check5 = checkCheckBox();

		xmlhttp = GetXmlHttpObject();
		if (xmlhttp == null) {
			alert("Your browser does not support AJAX!");
			return;
		}
		var url = "/mobile/html/micro/myskinmentorDNA/ajax/Ajax_baumamn.php";
		//	url=url+"?ex1="+result_check1+"&ex2="+result_check2+"&ex3="+result_check3+"&ex4="+result_check4+"&ex5="+result_check5;
		url = url + "?ex1=" + result_check1 + "&ex2=" + result_check2 + "&ex3="
				+ result_check3 + "&ex4=" + result_check4 + "&ex5=PC";

		xmlhttp.onreadystatechange = stateChanged;
		xmlhttp.open("GET", url, true);
		xmlhttp.send(null);
	}

	function stateChanged() {

		if (xmlhttp.readyState == 4) {
			document.getElementById("showresult").innerHTML = xmlhttp.responseText;

			var GetFlag = document.getElementById('getFlag').value;
			var MbId = document.getElementById('mbId').value;

			if (GetFlag == 'noMem') {
				LoginEventurl();
				return;
			} else if (GetFlag == "true") {
				if (confirm('바우만 피부타입 테스트가 완료 되었습니다.\n피부 타입 및 닥터지 추천 제품을 확인하시려면 아래 버튼을 눌러 주세요.\n※ 테스트 결과는 마이페이지에서도 확인 가능합니다.')) {
					if (MbId == '') {
						opener.document.location.href = "/mypage/my14.php";
					} else {
						opener.document.location.href = "/mypage/my13.php?cate_id=cate_07&sub_id=sub_07_013";
					}
				}
				self.close();
			} else if (GetFlag == "noID") {
				alert('세션이 만료 되었습니다.');
				self.close();
			} else if (GetFlag == "already") {
				alert('1개월 안에 이미 테스트한 내역이 있습니다.');
				self.close();
				//location.href = "/micro/2016_dna/index.php";
			} else if (GetFlag == "false") {
				alert('등록되지 않았습니다.');
				document.research_answer.reset();
			}
			//if(getTodayDate()>=1151020 && getTodayDate()<=1151025){
			if (GetFlag == "yet") {
				alert('테스트 기간이 아닙니다.');
				self.close();
			} else if (GetFlag == "error") {
				alert('처음부터 다시 시도해주십시오. 마이크로 사이트 메인으로 돌아갑니다.');
				document.research_answer.reset();
			}
		}

	}

	function GetXmlHttpObject() {
		if (window.XMLHttpRequest) {
			// code for IE7+, Firefox, Chrome, Opera, Safari
			return new XMLHttpRequest();
		}
		if (window.ActiveXObject) {
			// code for IE6, IE5
			return new ActiveXObject("Microsoft.XMLHTTP");
		}
		return null;
	}
</script>
</head>
<body>
	<div align="center" style="width: 100%; margin: 0 auto;">
		<!--title //-->
		<div align="center" style="background-color: #000; padding: 16px;">
			<p
				style="font-size: 22pt; padding: 5px; margin: 0px; line-height: 60%; color: white;">닥터지
				피부 분석 솔루션</p>
			<p
				style="font-size: 26pt; font-weight: bold; padding: 0px; margin: 0px; line-height: 100%; color: white;">
				MY SKIN MENTOR <span
					style="color: #00b6cf; font-size: 26pt; font-weight: bold;">DNA</span>
			</p>
		</div>
		<!--step //-->
		<div align="center"
			style="clear: both; text-align: center; margin: 0px auto; width: 100%">
			<ul
				style="display: inline-block; text-align: center; list-style-type: none; clear: both; width: 100%; padding: 0px;">
				<li class="step_st"
					style="background-color: #6bcad7; width: 100%; font-size: 22px; font-weight: bold; padding: 15px 0px; margin-top: 15px;">바우만
					피부 타입 테스트</li>
			</ul>
		</div>
		<div align="center"
			style="clear: both; text-align: center; margin: 0px auto; padding: 20px 10px;">
			<ol
				style="display: inline-block; text-align: left; list-style: inside; list-style-type: circle; clear: both; width: 100%; padding: 0px;">
				<li>설문 조사는 약 5분 정도 소요 됩니다.</li>
				<li>설문은 지성vs건성 , 민감성vs저항성, 색소성vs비색소성, 주름vs탱탱함 4개의 파트로 구성 되어
					있습니다.</li>
				<li>설문은 솔직하게 답변해 주세요.</li>
				<li>자신의 선입관이나, 타인의 조언으로 인해 답변이 바뀌지 않도록 주의 하세요.</li>
				<li>설문은 오직 피부타입 산출에만 이용됩니다</li>
			</ol>
		</div>
		<form name="research_answer" method="post"
			action="javascript:ajax_try();">
			<input type="hidden" id="cbnumber" name="cbnumber" value="baumamn">
			<input type="hidden" id="p_count1" name="p_count1" value="6">
			<input type="hidden" id="p_count2" name="p_count2" value="11">
			<input type="hidden" id="p_count3" name="p_count3" value="7">
			<input type="hidden" id="p_count4" name="p_count4" value="11">
			<input type="hidden" id="GSS_ID" name="GSS_ID" value="lastpang91">
			<!--<input type="text" name="ssid" value="bb5638c114c00aac8a5a979c5e8930ee">-->
			<div style="margin-bottom: 5px;">
				<div class="tab_st1" align="center"
					style="margin-bottom: 10px; padding: 5px 0px 3px 0px;">
					<ul style="list-style-type: none;">
						<li
							style="float: left; width: 5%; text-align: left; padding-left: 10px;">Part<br>01
						</li>
						<li
							style="float: left; width: 75%; text-align: left; padding-left: 10px;"><span
							style="font-size: 120%;">지성 (Oily) vs 건성(Dry)</span><br>
						<span style="color: #fbe5ce">피지 생성 및 수분 측정</span></li>
						<li
							style="float: left; width: 10%; text-align: left; padding-left: 10px; vertical-align: baseline;">
							<input type="checkbox" class="input_Cb" id="tabBtn1"
							name="tabBtn1" onclick="opencloseTabe(this.id,1)"> <input
							type="text" class="input_Cbn" id="tabBtn1_n" name="tabBtn1_n"
							size="6" value="설문열기" readonly="">
						</li>
					</ul>
				</div>
				<div id="tabBtn1_research" style="width: 100%; display: none;">
					<!--content //-->

					<table cellpadding="0" cellspacing="0">
						<tbody>
							<tr>
								<td style="font-weight: bold;"><a href="javascript:;"
									id="ex101tab" name="ex101tab">1. 파우더를 사용하지 않고 기초 화장(베이스,
										파운데이션)만 한 상태에서 2∼3시간 후에 당신의 화장 상태는 어떻습니까? </a></td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex101" value="1"
									style="margin-bottom: -5px; padding: 0px;"> ①각질이 일어나거나
									주름 사이에 끼어 있다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex101" value="2"
									style="margin-bottom: -5px; padding: 0px;"> ②화장이 들뜸이 없다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex101" value="3"
									style="margin-bottom: -5px; padding: 0px;"> ③윤기가 흐른다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex101" value="4"
									style="margin-bottom: -5px; padding: 0px;"> ④줄이 생기고 윤기가
									흐른다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex101" value="5"
									style="margin-bottom: -5px; padding: 0px;"> ⑤나는
									기초화장(파운데이션)을 하지 않는다</td>
							</tr>
							<tr>
								<td style="height: 10px;"></td>
							</tr>
							<tr>
								<td style="font-weight: bold;"><a href="javascript:;"
									id="ex102tab" name="ex102tab">2. 비누 방울, 거품이 심하게 발생하는 비누를
										사용하면 당신의 얼굴 피부는 어떻습니까? </a></td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex102" value="1"
									style="margin-bottom: -5px; padding: 0px;"> ①건조하거나 갈라지는
									느낌이 든다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex102" value="2"
									style="margin-bottom: -5px; padding: 0px;"> ②약간 건조한 느낌이
									들지만 갈라지는 느낌은 없다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex102" value="3"
									style="margin-bottom: -5px; padding: 0px;"> ③정상적인 느낌이다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex102" value="4"
									style="margin-bottom: -5px; padding: 0px;"> ④기름기가 있는
									느낌이다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex102" value="5"
									style="margin-bottom: -5px; padding: 0px;"> ⑤나는 비누나 거품이
									생기는 클렌저를 사용하지 않는다 (제품에 의해 당신의 피부가 건조해지면①을 고르세요)</td>
							</tr>
							<tr>
								<td style="height: 10px;"></td>
							</tr>
							<tr>
								<td style="font-weight: bold;"><a href="javascript:;"
									id="ex103tab" name="ex103tab">3. 보습제를 사용하지 않으면 얼굴 피부는 당기는
										느낌입니까?</a></td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex103" value="1"
									style="margin-bottom: -5px; padding: 0px;"> ①항상 그렇다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex103" value="2"
									style="margin-bottom: -5px; padding: 0px;"> ②때때로 그렇다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex103" value="3"
									style="margin-bottom: -5px; padding: 0px;"> ③거의 그렇지 않다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex103" value="4"
									style="margin-bottom: -5px; padding: 0px;"> ④전혀 그렇지 않다</td>
							</tr>
							<tr>
								<td style="height: 10px;"></td>
							</tr>
							<tr>
								<td style="font-weight: bold;"><a href="javascript:;"
									id="ex104tab" name="ex104tab">4. 얼굴에 모공이 있습니까? </a></td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex104" value="1"
									style="margin-bottom: -5px; padding: 0px;"> ①전혀 없다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex104" value="2"
									style="margin-bottom: -5px; padding: 0px;"> ②거의 없다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex104" value="3"
									style="margin-bottom: -5px; padding: 0px;"> ③조금 있다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex104" value="4"
									style="margin-bottom: -5px; padding: 0px;"> ④많이 있다</td>
							</tr>
							<tr>
								<td style="height: 10px;"></td>
							</tr>
							<tr>
								<td style="font-weight: bold;"><a href="javascript:;"
									id="ex105tab" name="ex105tab">5. 얼굴의 T존(이마와 코)에 유분기가 있습니까?</a></td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex105" value="1"
									style="margin-bottom: -5px; padding: 0px;"> ①전혀 없다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex105" value="2"
									style="margin-bottom: -5px; padding: 0px;"> ②때때로 있다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex105" value="3"
									style="margin-bottom: -5px; padding: 0px;"> ③자주 있다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex105" value="4"
									style="margin-bottom: -5px; padding: 0px;"> ④항상 있다</td>
							</tr>
							<tr>
								<td style="height: 10px;"></td>
							</tr>
							<tr>
								<td style="font-weight: bold;"><a href="javascript:;"
									id="ex106tab" name="ex106tab">6. 보습제를 바르고 2∼3시간 이후에 양 볼은?</a></td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex106" value="1"
									style="margin-bottom: -5px; padding: 0px;"> ①매우 거칠거나,
									각질이 들뜨거나 창백하다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex106" value="2"
									style="margin-bottom: -5px; padding: 0px;"> ②매끄럽다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex106" value="3"
									style="margin-bottom: -5px; padding: 0px;"> ③약간 윤기가 흐른다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex106" value="4"
									style="margin-bottom: -5px; padding: 0px;"> ④윤기가 흐르고
									번들거린다. 혹은 나는 보습제를 사용하지 않는다</td>
							</tr>
							<tr>
								<td style="height: 10px;"></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="tab_st1" align="center"
					style="margin-bottom: 10px; padding: 5px 0px 3px 0px;">
					<ul style="list-style-type: none;">
						<li
							style="float: left; width: 5%; text-align: left; padding-left: 10px;">Part<br>02
						</li>
						<li
							style="float: left; width: 75%; text-align: left; padding-left: 10px;"><span
							style="font-size: 120%;">민감성 (Sensitive) vs 저항성
								(Resistant)</span><br>
						<span style="color: #fbe5ce">여드름, 발적, 홍조 및 가려움증이 발생하는 경향 측정</span></li>
						<li
							style="float: left; width: 10%; text-align: left; padding-left: 10px; vertical-align: baseline;">
							<input type="checkbox" class="input_Cb" id="tabBtn2"
							name="tabBtn2" onclick="opencloseTabe(this.id,2)"> <input
							type="text" class="input_Cbn" id="tabBtn2_n" name="tabBtn2_n"
							size="6" value="설문열기" readonly="">
						</li>
					</ul>
				</div>
				<div id="tabBtn2_research" style="width: 100%; display: none;""="">
					<!--content //-->

					<table cellpadding="0" cellspacing="0">
						<tbody>
							<tr>
								<td style="font-weight: bold;"><a href="javascript:;"
									id="ex201tab" name="ex201tab">1. 얼굴에 붉은 뾰루지가 발생한 경험이 있습니까?</a></td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex201" value="1"
									style="margin-bottom: -5px; padding: 0px;"> ①전혀 없다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex201" value="2"
									style="margin-bottom: -5px; padding: 0px;"> ②거의 없다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex201" value="3"
									style="margin-bottom: -5px; padding: 0px;"> ③최소한 1개월에
									1회 있다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex201" value="4"
									style="margin-bottom: -5px; padding: 0px;"> ④최소한 1주일에
									1회 있다</td>
							</tr>
							<tr>
								<td style="height: 10px;"></td>
							</tr>
							<tr>
								<td style="font-weight: bold;"><a href="javascript:;"
									id="ex202tab" name="ex202tab">2. 피부 관리용 제품(클렌저, 보습제, 색조화장품,
										및 화장품 등을 포함)을 사용하면 얼굴에 뾰루지가 나거나 발진, 가려움증 혹은 따끔거리는 증상 등이 나타난
										경험이 있습니까? </a></td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex202" value="1"
									style="margin-bottom: -5px; padding: 0px;"> ①전혀 없다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex202" value="2"
									style="margin-bottom: -5px; padding: 0px;"> ②거의 없다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex202" value="3"
									style="margin-bottom: -5px; padding: 0px;"> ③자주 있다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex202" value="4"
									style="margin-bottom: -5px; padding: 0px;"> ④항상 있다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex202" value="5"
									style="margin-bottom: -5px; padding: 0px;"> ⑤나는 얼굴에 피부
									관리용 제품을 바르지 않는다</td>
							</tr>
							<tr>
								<td style="height: 10px;"></td>
							</tr>
							<tr>
								<td style="font-weight: bold;"><a href="javascript:;"
									id="ex203tab" name="ex203tab">3. 최근 5년 이내에 여드름에 대한 진단을 받은
										적이 있습니까?</a></td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex203" value="1"
									style="margin-bottom: -5px; padding: 0px;"> ①없다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex203" value="2"
									style="margin-bottom: -5px; padding: 0px;"> ②친구와 지인이
									나에게 이런 증상이 있다고 얘기한다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex203" value="3"
									style="margin-bottom: -5px; padding: 0px;"> ③진단을 받았다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex203" value="4"
									style="margin-bottom: -5px; padding: 0px;"> ④심각한 경우에
									해당한다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex203" value="5"
									style="margin-bottom: -5px; padding: 0px;"> ⑤잘 모르겠다</td>
							</tr>
							<tr>
								<td style="height: 10px;"></td>
							</tr>
							<tr>
								<td style="font-weight: bold;"><a href="javascript:;"
									id="ex204tab" name="ex204tab">4. 과거에 주사(홍조)에 대한 진단을 받은 적이
										있습니까?</a></td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex204" value="1"
									style="margin-bottom: -5px; padding: 0px;"> ①없다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex204" value="2"
									style="margin-bottom: -5px; padding: 0px;"> ②친구와 지인이
									나에게 이런 증상이 있다고 얘기한다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex204" value="3"
									style="margin-bottom: -5px; padding: 0px;"> ③진단을 받았다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex204" value="4"
									style="margin-bottom: -5px; padding: 0px;"> ④심각한 경우에
									해당한다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex204" value="5"
									style="margin-bottom: -5px; padding: 0px;"> ⑤잘 모르겠다</td>
							</tr>
							<tr>
								<td style="height: 10px;"></td>
							</tr>
							<tr>
								<td style="font-weight: bold;"><a href="javascript:;"
									id="ex205tab" name="ex205tab">5. 14K 금이 아닌 장신구를 착용할 경우에 피부
										발진이 자주 발생합니까?</a></td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex205" value="1"
									style="margin-bottom: -5px; padding: 0px;"> ①전혀 안 나타난다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex205" value="2"
									style="margin-bottom: -5px; padding: 0px;"> ②거의 안 나타난다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex205" value="3"
									style="margin-bottom: -5px; padding: 0px;"> ③자주 나타난다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex205" value="4"
									style="margin-bottom: -5px; padding: 0px;"> ④항상 나타난다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex205" value="5"
									style="margin-bottom: -5px; padding: 0px;"> ⑤잘 모르겠다</td>
							</tr>
							<tr>
								<td style="height: 10px;"></td>
							</tr>
							<tr>
								<td style="font-weight: bold;"><a href="javascript:;"
									id="ex206tab" name="ex206tab">6. 과거에 아토피 피부염, 습진, 또는 접촉성
										피부염(알레르기성 피부 발진)으로 진단을 받은 적이 있습니까?</a></td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex206" value="1"
									style="margin-bottom: -5px; padding: 0px;"> ①없다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex206" value="2"
									style="margin-bottom: -5px; padding: 0px;"> ②친구들이 나에게
									이런 질환이 있는 것 같다고 한다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex206" value="3"
									style="margin-bottom: -5px; padding: 0px;"> ③있다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex206" value="4"
									style="margin-bottom: -5px; padding: 0px;"> ④있다. 심각한
									경우에 해당한다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex206" value="5"
									style="margin-bottom: -5px; padding: 0px;"> ⑤잘 모르겠다</td>
							</tr>
							<tr>
								<td style="height: 10px;"></td>
							</tr>
							<tr>
								<td style="font-weight: bold;"><a href="javascript:;"
									id="ex207tab" name="ex207tab">7. 향료가 포함된 거품 입욕제, 마사지 오일, 혹은
										바디 로션 등을 사용하면 피부 발진이 생기거나, 가렵거나 건조한 느낌이 있습니까?</a></td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex207" value="1"
									style="margin-bottom: -5px; padding: 0px;"> ①전혀 없다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex207" value="2"
									style="margin-bottom: -5px; padding: 0px;"> ②거의 없다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex207" value="3"
									style="margin-bottom: -5px; padding: 0px;"> ③자주 나타난다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex207" value="4"
									style="margin-bottom: -5px; padding: 0px;"> ④항상 나타난다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex207" value="5"
									style="margin-bottom: -5px; padding: 0px;"> ⑤나는 이런 종류의
									제품을 전혀 사용하지 않는다(주의 : 이런 제품에 의해 피부에 문제가 생겨서 사용하지 않으면 “④”로 답해주세요)</td>
							</tr>
							<tr>
								<td style="height: 10px;"></td>
							</tr>
							<tr>
								<td style="font-weight: bold;"><a href="javascript:;"
									id="ex208tab" name="ex208tab">8. 가족 중에서 아토피 피부염, 습진, 천식,
										알레르기로 진단받은 분이 있습니까?</a></td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex208" value="1"
									style="margin-bottom: -5px; padding: 0px;"> ①없다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex208" value="2"
									style="margin-bottom: -5px; padding: 0px;"> ②가족 중 한 명이
									진단 받았다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex208" value="3"
									style="margin-bottom: -5px; padding: 0px;"> ③가족 중 몇 명이
									진단 받았다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex208" value="4"
									style="margin-bottom: -5px; padding: 0px;"> ④가족 중 많은
									사람이 피부염, 습진, 천식, 알레르기를 가지고 있다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex208" value="5"
									style="margin-bottom: -5px; padding: 0px;"> ⑤잘 모르겠다</td>
							</tr>
							<tr>
								<td style="height: 10px;"></td>
							</tr>
							<tr>
								<td style="font-weight: bold;"><a href="javascript:;"
									id="ex209tab" name="ex209tab">9. 운동, 스트레스 또는 격한 감정(분노 등),
										음주, 맵거나 뜨거운 음식 섭취에 의해 얼굴과 목이 붉어집니까?</a></td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex209" value="1"
									style="margin-bottom: -5px; padding: 0px;"> ①전혀 그런 적이
									없다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex209" value="2"
									style="margin-bottom: -5px; padding: 0px;"> ②때때로 그렇다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex209" value="3"
									style="margin-bottom: -5px; padding: 0px;"> ③자주 그렇다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex209" value="4"
									style="margin-bottom: -5px; padding: 0px;"> ④항상 그렇다</td>
							</tr>
							<tr>
								<td style="height: 10px;"></td>
							</tr>
							<tr>
								<td style="font-weight: bold;"><a href="javascript:;"
									id="ex210tab" name="ex210tab">10. 얼굴이나 코에 붉거나 푸른색의 혈관이 얼마나
										많이 보입니까(혹은 치료 전에 얼마나 많이 보였습니까)?</a></td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex210" value="1"
									style="margin-bottom: -5px; padding: 0px;"> ①없다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex210" value="2"
									style="margin-bottom: -5px; padding: 0px;"> ②드물다(코를 포함한
									얼굴 전체에서 1~3개)</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex210" value="3"
									style="margin-bottom: -5px; padding: 0px;"> ③약간 존재한다(코를
									포함한 얼굴 전체에서 4~6개)</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex210" value="4"
									style="margin-bottom: -5px; padding: 0px;"> ④많이 존재한다(코를
									포함한 얼굴 전체에서 7개 이상)</td>
							</tr>
							<tr>
								<td style="height: 10px;"></td>
							</tr>
							<tr>
								<td style="font-weight: bold;"><a href="javascript:;"
									id="ex211tab" name="ex211tab">11. 피부과 의사로부터 지루 피부염에 진단을 받은
										적이 있나요? </a></td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex211" value="1"
									style="margin-bottom: -5px; padding: 0px;"> ①진단 받은 적이
									없다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex211" value="2"
									style="margin-bottom: -5px; padding: 0px;"> ②피부과 의사로부터
									진단 받았다</td>
							</tr>
							<tr>
								<td style="height: 10px;"></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="tab_st1" align="center"
					style="margin-bottom: 10px; padding: 5px 0px 3px 0px;">
					<ul style="list-style-type: none;">
						<li
							style="float: left; width: 5%; text-align: left; padding-left: 10px;">Part<br>03
						</li>
						<li
							style="float: left; width: 75%; text-align: left; padding-left: 10px;"><span
							style="font-size: 120%;">색소성 (Pigmented) vs 비색소성
								(Non-pigmented)</span>&nbsp;<span style="color: #fbe5ce">피부의 멜라닌
								생성 경향 측정</span></li>
						<li
							style="float: left; width: 10%; text-align: left; padding-left: 10px; vertical-align: baseline;">
							<input type="checkbox" class="input_Cb" id="tabBtn3"
							name="tabBtn3" onclick="opencloseTabe(this.id,3)"> <input
							type="text" class="input_Cbn" id="tabBtn3_n" name="tabBtn3_n"
							size="6" value="설문열기" readonly="">
						</li>
					</ul>
				</div>
				<div id="tabBtn3_research" style="width: 100%; display: none;">
					<!--content //-->

					<table cellpadding="0" cellspacing="0">
						<tbody>
							<tr>
								<td style="font-weight: bold;"><a href="javascript:;"
									id="ex301tab" name="ex301tab">1. 여드름 혹은 피부 속으로 파고 들어간 모발에
										의해 짙은 갈색이나 검은 점이 생깁니까?</a></td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex301" value="1"
									style="margin-bottom: -5px; padding: 0px;"> ①전혀 생기지 않는다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex301" value="2"
									style="margin-bottom: -5px; padding: 0px;"> ②때때로 생긴다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex301" value="3"
									style="margin-bottom: -5px; padding: 0px;"> ③자주 생긴다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex301" value="4"
									style="margin-bottom: -5px; padding: 0px;"> ④여드름이나 피부
									속으로 파고 들어간 모발이 전혀 없다</td>
							</tr>
							<tr>
								<td style="height: 10px;"></td>
							</tr>
							<tr>
								<td style="font-weight: bold;"><a href="javascript:;"
									id="ex302tab" name="ex302tab">2. 얼굴의 짙은 점은 햇빛에 의해 악화됩니까?</a></td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex302" value="1"
									style="margin-bottom: -5px; padding: 0px;"> ①짙은 점이 전혀
									없다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex302" value="2"
									style="margin-bottom: -5px; padding: 0px;"> ②잘 모르겠다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex302" value="3"
									style="margin-bottom: -5px; padding: 0px;"> ③약간 나빠진다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex302" value="4"
									style="margin-bottom: -5px; padding: 0px;"> ④많이 나빠진다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex302" value="5"
									style="margin-bottom: -5px; padding: 0px;"> ⑤매일 자외선차단제를
									얼굴에 바르고 햇빛을 피한다 (주의: 짙은 반점이나 주근깨의 발생이 두려워 지속적으로 자외선차단제를 사용한다면,
									“④”로 답하세요)</td>
							</tr>
							<tr>
								<td style="height: 10px;"></td>
							</tr>
							<tr>
								<td style="font-weight: bold;"><a href="javascript:;"
									id="ex303tab" name="ex303tab">3. 과거에 얼굴 기미(옅거나 짙은 갈색 혹은 회색
										반점)로 진단받은 적이 있습니까? </a></td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex303" value="1"
									style="margin-bottom: -5px; padding: 0px;"> ①없다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex303" value="2"
									style="margin-bottom: -5px; padding: 0px;"> ②한 번 있었지만,
									소실되었다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex303" value="3"
									style="margin-bottom: -5px; padding: 0px;"> ③있다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex303" value="4"
									style="margin-bottom: -5px; padding: 0px;"> ④있으며, 심각한
									경우이다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex303" value="5"
									style="margin-bottom: -5px; padding: 0px;"> ⑤잘 모르겠다</td>
							</tr>
							<tr>
								<td style="height: 10px;"></td>
							</tr>
							<tr>
								<td style="font-weight: bold;"><a href="javascript:;"
									id="ex304tab" name="ex304tab">4. 얼굴, 가슴, 등, 혹은 양 팔에 작은 갈색
										점(주근깨, 일광 흑자)이 있거나, 있었던 적이 있습니까? </a></td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex304" value="1"
									style="margin-bottom: -5px; padding: 0px;"> ①없다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex304" value="2"
									style="margin-bottom: -5px; padding: 0px;"> ②약간
									있다(1∼5개)</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex304" value="3"
									style="margin-bottom: -5px; padding: 0px;"> ③많이
									있다(6∼15개)</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex304" value="4"
									style="margin-bottom: -5px; padding: 0px;"> ④대단히 많다(16개
									이상)</td>
							</tr>
							<tr>
								<td style="height: 10px;"></td>
							</tr>
							<tr>
								<td style="font-weight: bold;"><a href="javascript:;"
									id="ex305tab" name="ex305tab">5. 며칠동안 계속해서 햇빛에 노출되면 어떤 일이
										일어납니까?</a></td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex305" value="1"
									style="margin-bottom: -5px; padding: 0px;"> ①햇빛에 타서 물집이
									생겼으나 피부색은 변하지 않는다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex305" value="2"
									style="margin-bottom: -5px; padding: 0px;"> ②피부색이 약간
									짙어졌다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex305" value="3"
									style="margin-bottom: -5px; padding: 0px;"> ③피부색이 많이
									짙어졌다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex305" value="4"
									style="margin-bottom: -5px; padding: 0px;"> ④원래 피부색이
									짙어서 더 짙어졌는지 구분이 어렵다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex305" value="5"
									style="margin-bottom: -5px; padding: 0px;"> ⑤잘 모르겠다
									(“태양에 노출된 적이 전혀 없다.”고 단정하지 마세요. 만약 보기 “⑤”를 선택하면 유년기의 경험을 고려하세요)</td>
							</tr>
							<tr>
								<td style="height: 10px;"></td>
							</tr>
							<tr>
								<td style="font-weight: bold;"><a href="javascript:;"
									id="ex306tab" name="ex306tab">6. 햇볕에 나가면, 주근깨(작은 1~2mm 크기의
										편평한 점)가 생기나요?</a></td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex306" value="1"
									style="margin-bottom: -5px; padding: 0px;"> ①전혀 생기지 않는다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex306" value="2"
									style="margin-bottom: -5px; padding: 0px;"> ②매년 약간씩 작은
									주근깨가 생긴다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex306" value="3"
									style="margin-bottom: -5px; padding: 0px;"> ③자주 주근깨가
									생긴다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex306" value="4"
									style="margin-bottom: -5px; padding: 0px;"> ④피부가 이미 짙어서
									주근깨가 있는 지 구분이 어렵다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex306" value="5"
									style="margin-bottom: -5px; padding: 0px;"> ⑤햇볕에 전혀 나가지
									않는다</td>
							</tr>
							<tr>
								<td style="height: 10px;"></td>
							</tr>
							<tr>
								<td style="font-weight: bold;"><a href="javascript:;"
									id="ex307tab" name="ex307tab">7. 부모님 중의 어느 한 분이라도 주근깨가 있나요?
										(만약 그렇다면, 얼마나 많았는지 지적해 주세요. 두분 중 아무도 그렇지 않거나 한 분만 해당하면 질문에 답해
										주세요. 두 분이 모두 있으면 주근깨가 가장 많았던 분과 관련된 질문에 답해 주세요)</a></td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex307" value="1"
									style="margin-bottom: -5px; padding: 0px;"> ①없다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex307" value="2"
									style="margin-bottom: -5px; padding: 0px;"> ②얼굴에 약간 있었다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex307" value="3"
									style="margin-bottom: -5px; padding: 0px;"> ③얼굴에 많이 있었다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex307" value="4"
									style="margin-bottom: -5px; padding: 0px;"> ④얼굴, 가슴, 목,
									양쪽 어깨에 많이 있었다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex307" value="5"
									style="margin-bottom: -5px; padding: 0px;"> ⑤잘 모르겠다</td>
							</tr>
							<tr>
								<td style="height: 10px;"></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="tab_st1" align="center"
					style="margin-bottom: 10px; padding: 5px 0px 3px 0px;">
					<ul style="list-style-type: none;">
						<li
							style="float: left; width: 5%; text-align: left; padding-left: 10px;">Part<br>04
						</li>
						<li
							style="float: left; width: 75%; text-align: left; padding-left: 10px;"><span
							style="font-size: 120%;">주름 (Wrinkled) vs 탱탱함 (Tight)</span><br>
						<span style="color: #fbe5ce">주름의 발생 유무 및 진행 상황 측정</span></li>
						<li
							style="float: left; width: 10%; text-align: left; padding-left: 10px; vertical-align: baseline;">
							<input type="checkbox" class="input_Cb" id="tabBtn4"
							name="tabBtn4" onclick="opencloseTabe(this.id,4)"> <input
							type="text" class="input_Cbn" id="tabBtn4_n" name="tabBtn4_n"
							size="6" value="설문열기" readonly="">
						</li>
					</ul>
				</div>
				<div id="tabBtn4_research" style="width: 100%; display: none;">
					<!--content //-->

					<table cellpadding="0" cellspacing="0">
						<tbody>
							<tr>
								<td style="font-weight: bold;"><a href="javascript:;"
									id="ex401tab" name="ex401tab">1. 얼굴에 주름이 있나요?</a></td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex401" value="1"
									style="margin-bottom: -5px; padding: 0px;"> ①없다. 웃거나
									찡그리거나 눈썹을 치켜 올릴 경우에도 없다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex401" value="2"
									style="margin-bottom: -5px; padding: 0px;"> ②웃거나 찡그리거나
									눈썹을 치켜 올릴 때에 있다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex401" value="3"
									style="margin-bottom: -5px; padding: 0px;"> ③있다. 얼굴을
									움직이거나 움직임이 없는 안정된 상태에서도 약간 있다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex401" value="4"
									style="margin-bottom: -5px; padding: 0px;"> ④웃거나 찡그리거나,
									혹은 눈썹을 치켜 올리지 않아도 주름이 있다</td>
							</tr>
							<tr>
								<td style="height: 10px;"></td>
							</tr>
							<tr>
								<td style="font-weight: bold;"><a href="javascript:;"
									id="ex402tab" name="ex402tab">2. 어머니의 얼굴 피부는 어떻습니까?</a></td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex402" value="1"
									style="margin-bottom: -5px; padding: 0px;"> ①나이보다 5~10년
									젊어 보인다/보였다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex402" value="2"
									style="margin-bottom: -5px; padding: 0px;"> ②나이대로
									보인다/보였다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex402" value="3"
									style="margin-bottom: -5px; padding: 0px;"> ③나이보다 5년 더
									늙어 보인다/보였다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex402" value="4"
									style="margin-bottom: -5px; padding: 0px;"> ④나이보다 5년 이상
									더 늙어 보인다/보였다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex402" value="5"
									style="margin-bottom: -5px; padding: 0px;"> ⑤모른다.
									입양되었거나 기억이 안 난다</td>
							</tr>
							<tr>
								<td style="height: 10px;"></td>
							</tr>
							<tr>
								<td style="font-weight: bold;"><a href="javascript:;"
									id="ex403tab" name="ex403tab">3. 아버지의 얼굴 피부는 어떻습니까?</a></td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex403" value="1"
									style="margin-bottom: -5px; padding: 0px;"> ①나이보다 5~10년
									젊어 보인다/보였다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex403" value="2"
									style="margin-bottom: -5px; padding: 0px;"> ②나이대로
									보인다/보였다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex403" value="3"
									style="margin-bottom: -5px; padding: 0px;"> ③나이보다 5년 더
									늙어 보인다/보였다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex403" value="4"
									style="margin-bottom: -5px; padding: 0px;"> ④나이보다 5년 이상
									더 늙어 보인다/보였다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex403" value="5"
									style="margin-bottom: -5px; padding: 0px;"> ⑤모른다.
									입양되었거나 기억이 안 난</td>
							</tr>
							<tr>
								<td style="height: 10px;"></td>
							</tr>
							<tr>
								<td style="font-weight: bold;"><a href="javascript:;"
									id="ex404tab" name="ex404tab">4. 1년에 2주 이상 계속 피부를 태운 적이
										있었습니까? (만약 그랬다면, 몇 년 동안이나 그렇게 했나요? 테니스, 낚시, 골프, 스키 혹은 다른 야외
										활동에 의해 피부가 탔을 경우에도 빈도를 세어 주세요)</a></td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex404" value="1"
									style="margin-bottom: -5px; padding: 0px;"> ①없다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex404" value="2"
									style="margin-bottom: -5px; padding: 0px;"> ②1~5년</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex404" value="3"
									style="margin-bottom: -5px; padding: 0px;"> ③5~10년</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex404" value="4"
									style="margin-bottom: -5px; padding: 0px;"> ④10년 초과</td>
							</tr>
							<tr>
								<td style="height: 10px;"></td>
							</tr>
							<tr>
								<td style="font-weight: bold;"><a href="javascript:;"
									id="ex405tab" name="ex405tab">5. 일상생활을 기준으로, 일상생활 중에서 햇빛에
										노출 되는 시간은 하루에 얼마나 됩니까? </a></td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex405" value="1"
									style="margin-bottom: -5px; padding: 0px;"> ①별로 없다(흐리거나
									구름이 많은 장소에서 주로 살아왔다)</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex405" value="2"
									style="margin-bottom: -5px; padding: 0px;"> ②약간 있다(때때로
									덜 화창한 기후에서 살았지만, 규칙적으로 일광이 존재하는 장소에서 살아왔다)</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex405" value="3"
									style="margin-bottom: -5px; padding: 0px;"> ③보통이다(꽤 많은
									양의 일광이 존재하는 장소에서 살아왔다)</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex405" value="4"
									style="margin-bottom: -5px; padding: 0px;"> ④많다(열대, 남부,
									혹은, 매우 화창한 장소에서 살아왔다)</td>
							</tr>
							<tr>
								<td style="height: 10px;"></td>
							</tr>
							<tr>
								<td style="font-weight: bold;"><a href="javascript:;"
									id="ex406tab" name="ex406tab">6. 나는 얼마나 나이 들어 보인다고 생각합니까?</a></td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex406" value="1"
									style="margin-bottom: -5px; padding: 0px;"> ①내 나이보다
									1~5년 더 젊어 보인다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex406" value="2"
									style="margin-bottom: -5px; padding: 0px;"> ②내 나이대로 보인다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex406" value="3"
									style="margin-bottom: -5px; padding: 0px;"> ③내 나이보다 5년
									더 늙어 보인다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex406" value="4"
									style="margin-bottom: -5px; padding: 0px;"> ④내 나이보다 5년
									이상 더 늙어 보인다</td>
							</tr>
							<tr>
								<td style="height: 10px;"></td>
							</tr>
							<tr>
								<td style="font-weight: bold;"><a href="javascript:;"
									id="ex407tab" name="ex407tab">7. 지난 5년 동안에 야외 스포츠나 다른 활동에
										의해 자신의 피부를 얼마나 자주 태웠나요?</a></td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex407" value="1"
									style="margin-bottom: -5px; padding: 0px;"> ①전혀 안 태웠다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex407" value="2"
									style="margin-bottom: -5px; padding: 0px;"> ②1개월에 1회</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex407" value="3"
									style="margin-bottom: -5px; padding: 0px;"> ③1주일에 1회</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex407" value="4"
									style="margin-bottom: -5px; padding: 0px;"> ④ 매일</td>
							</tr>
							<tr>
								<td style="height: 10px;"></td>
							</tr>
							<tr>
								<td style="font-weight: bold;"><a href="javascript:;"
									id="ex408tab" name="ex408tab">8. 담배를 얼마나 많이 피웁니까(혹은 담배연기에
										얼마나 많이 노출되었나요)?</a></td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex408" value="1"
									style="margin-bottom: -5px; padding: 0px;"> ①안 피운다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex408" value="2"
									style="margin-bottom: -5px; padding: 0px;"> ②두 세 갑</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex408" value="3"
									style="margin-bottom: -5px; padding: 0px;"> ③몇 갑∼여러 갑</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex408" value="4"
									style="margin-bottom: -5px; padding: 0px;"> ④매일 피운다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex408" value="5"
									style="margin-bottom: -5px; padding: 0px;"> ⑤담배를 피운 적은
									전혀 없지만, 규칙적으로 담배를 피우는 사람과 함께 지냈거나, 그들에 의해 양육되었거나, 함께 근무하였다.</td>
							</tr>
							<tr>
								<td style="height: 10px;"></td>
							</tr>
							<tr>
								<td style="font-weight: bold;"><a href="javascript:;"
									id="ex409tab" name="ex409tab">9. 레티노이드가 포함된 안면 크림(레티놀, 레노바,
										레틴-A, 타조락, 디페린, 어베이지 등)을 사용했다면 얼마나 오래 혹은 자주 사용하셨습니까?</a></td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex409" value="1"
									style="margin-bottom: -5px; padding: 0px;"> ①여러 해</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex409" value="2"
									style="margin-bottom: -5px; padding: 0px;"> ②때때로</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex409" value="3"
									style="margin-bottom: -5px; padding: 0px;"> ③젊었을 때 여드름
									때문에 1회</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex409" value="4"
									style="margin-bottom: -5px; padding: 0px;"> ④전혀 없다</td>
							</tr>
							<tr>
								<td style="height: 10px;"></td>
							</tr>
							<tr>
								<td style="font-weight: bold;"><a href="javascript:;"
									id="ex410tab" name="ex410tab">10. 과일과 채소를 얼마나 자주 섭취하고 있습니까?</a></td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex410" value="1"
									style="margin-bottom: -5px; padding: 0px;"> ①매 끼니마다</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex410" value="2"
									style="margin-bottom: -5px; padding: 0px;"> ②하루 1회</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex410" value="3"
									style="margin-bottom: -5px; padding: 0px;"> ③때때로</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex410" value="4"
									style="margin-bottom: -5px; padding: 0px;"> ④전혀 안 먹는다</td>
							</tr>
							<tr>
								<td style="height: 10px;"></td>
							</tr>
							<tr>
								<td style="font-weight: bold;"><a href="javascript:;"
									id="ex411tab" name="ex411tab">11. 원래의 피부 색깔은(피부를 태우거나 태닝을
										하지 않았을 때)?</a></td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex411" value="1"
									style="margin-bottom: -5px; padding: 0px;"> ①짙은 색깔</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex411" value="2"
									style="margin-bottom: -5px; padding: 0px;"> ②중간 색깔</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex411" value="3"
									style="margin-bottom: -5px; padding: 0px;"> ③옅은 색깔</td>
							</tr>
							<tr>
								<td style="padding: 0px 2px 5px 10px;"><input type="radio"
									name="ex411" value="4"
									style="margin-bottom: -5px; padding: 0px;"> ④매우 옅은 색깔</td>
							</tr>
							<tr>
								<td style="height: 10px;"></td>
							</tr>
						</tbody>
					</table>
				</div>
				<!--   <div class="tab_st1" align="center" style=" background-color:#79c8d3; display:block; height:60px;"><span style=" font-weight:bold;">현재 당신의 피부 고민은 무엇인가요? (중복 선택 가능)</span> <br>
    <input type="checkbox" class="input_Cb" id="tabBtn5" name="tabBtn5" value="a" />
    과다피지
    <input type="checkbox" class="input_Cb" id="tabBtn5" name="tabBtn5" value="b" />
    넓은 모공
    <input type="checkbox" class="input_Cb" id="tabBtn5" name="tabBtn5" value="c" />
    여드름
    <input type="checkbox" class="input_Cb" id="tabBtn5" name="tabBtn5" value="d" />
    민감함
    <input type="checkbox" class="input_Cb" id="tabBtn5" name="tabBtn5" value="e" />
    홍조
    <input type="checkbox" class="input_Cb" id="tabBtn5" name="tabBtn5" value="f" />
    건조함
    <input type="checkbox" class="input_Cb" id="tabBtn5" name="tabBtn5" value="g" />
    탄력<br>
    <input type="checkbox" class="input_Cb" id="tabBtn5" name="tabBtn5" value="h" />
    주름
    <input type="checkbox" class="input_Cb" id="tabBtn5" name="tabBtn5" value="i" />
    기미,주근깨,잡티
    <input type="checkbox" class="input_Cb" id="tabBtn5" name="tabBtn5" value="j" />
    피부 톤
    <input type="checkbox" class="input_Cb" id="tabBtn5" name="tabBtn5" value="k" />
    다크서클
    <input type="checkbox" class="input_Cb" id="tabBtn5" name="tabBtn5" value="l" />
    각질
    <input type="checkbox" class="input_Cb" id="tabBtn5" name="tabBtn5" value="m" />
    아토피 </div>
  </div>
 </form>-->
				<div id="rayerBtn1"
					style="display: none; position: fixed; border: 1px red solid; width: 300px; height: 120px; left: 50%; margin-left: -171px; margin-top: -130px; background-color: #6699FF; padding: 20px; font-size: 14px;">
				</div>
				<div align="center" style="text-align: center;">
					<p align="center" class="lbtn_big" onclick="ajax_try();"
						style="text-align: center; width: 250px; margin: 0 auto; display: block; background-color: #333; color: white; padding: 10px; cursor: pointer">
						설문조사 응답 완료<br> <span style="font-size: 12px;">버튼 클릭 시
							신청이 완료됩니다.</span>
					</p>
				</div>

				<!--// content-->
				<div id="showresult"></div>
			</div>
			<!-- AceCounter Log Gathering Script V.7.5.2013010701 -->
			<script language="javascript">
				var _AceGID = (function() {
					var Inf = [ 'gtc11.acecounter.com', '8080',
							'AS2A32408027010', 'AW', '1', 'NaPm,Ncisy', 'ALL',
							'0' ];
					var _CI = (!_AceGID) ? [] : _AceGID.val;
					var _N = 0;
					var _T = new Image(0, 0);
					if (_CI.join('.').indexOf(Inf[3]) < 0) {
						_T.src = (location.protocol == "https:" ? "https://"
								+ Inf[0] : "http://" + Inf[0] + ":" + Inf[1])
								+ '/?cookie';
						_CI.push(Inf);
						_N = _CI.length;
					}
					return {
						o : _N,
						val : _CI
					};
				})();
				var _AceCounter = (function() {
					var G = _AceGID;
					if (G.o != 0) {
						var _A = G.val[G.o - 1];
						var _G = (_A[0]).substr(0, _A[0].indexOf('.'));
						var _C = (_A[7] != '0') ? (_A[2]) : _A[3];
						var _U = (_A[5]).replace(/\,/g, '_');
						var _S = (([ '<scr','ipt','type="text/javascr','ipt"></scr','ipt>' ])
								.join('')).replace('tt', 't src="'
								+ location.protocol
								+ '//cr.acecounter.com/Web/AceCounter_' + _C
								+ '.js?gc=' + _A[2] + '&py=' + _A[4] + '&gd='
								+ _G + '&gp=' + _A[1] + '&up=' + _U + '&rd='
								+ (new Date().getTime()) + '" t');
						document.writeln(_S);
						return _S;
					}
				})();
			</script>
			<script
				src="http://cr.acecounter.com/Web/AceCounter_AW.js?gc=AS2A32408027010&amp;py=1&amp;gd=gtc11&amp;gp=8080&amp;up=NaPm_Ncisy&amp;rd=1495773784666"
				type="text/javascript"></script>

			<noscript>&lt;img
				src='http://gtc11.acecounter.com:8080/?uid=AS2A32408027010&amp;je=n&amp;'
				border='0' width='0' height='0' alt=''&gt;</noscript>
			<!-- AceCounter Log Gathering Script End -->


		</form>
	</div>
</body>
</html>

