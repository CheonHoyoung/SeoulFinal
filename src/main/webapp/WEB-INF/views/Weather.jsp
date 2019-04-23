<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>Culture Shocka</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="apple-touch-icon" href="apple-touch-icon.png">

<!--<link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,600,700' rel='stylesheet' type='text/css'>-->
<link rel="stylesheet" href="resources/css/fonticons.css">
<link rel="stylesheet" href="resources/fonts/stylesheet.css">
<link rel="stylesheet" href="resources/css/font-awesome.min.css">
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="resources/slick/slick.css" />
<link rel="stylesheet" type="text/css"
	href="resources/slick/slick-theme.css" />
<link rel="stylesheet" type="text/css" href="resources/css/weather.css" />
<!--        <link rel="stylesheet" href="assets/css/bootstrap-theme.min.css">-->


<!--For Plugins external css-->
<link rel="stylesheet" href="resources/css/plugins.css" />

<!--Theme custom css -->
<link rel="stylesheet" href="resources/css/style.css">

<!--Theme Responsive css-->
<link rel="stylesheet" href="resources/css/responsive.css" />
<script src="resources/js/vendor/jquery-1.11.2.min.js"></script>
<script src="resources/jquery-migrate-1.2.1.min.js"></script>

<script src="resources/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
<!-- 소캣  -->
<script type="text/javascript" src="resources/sockjs-0.3.4.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="resources/css/mypage.css">

<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Poppins');

/* BASIC */
body {
	font-family: "Poppins", sans-serif;
	height: 100vh;
}

a {
	color: #facc00;
	display: inline-block;
	text-decoration: none;
	font-weight: 400;
}

h2 {
	text-align: center;
	font-weight: 600;
	text-transform: uppercase;
	display: inline-block;
	margin: 40px 8px 10px 8px;
	color: #cccccc;
}

/* STRUCTURE */
.wrapper {
	display: flex;
	align-items: center;
	flex-direction: column;
	justify-content: center;
	width: 100%;
	min-height: 100%;
	padding: 20px;
}

#formContent {
	-webkit-border-radius: 10px 10px 10px 10px;
	border-radius: 10px 10px 10px 10px;
	background: #fff;
	padding: 30px;
	width: 90%;
	max-width: 1000px;
	position: relative;
	padding: 0px;
	-webkit-box-shadow: 0 30px 60px 0 #facc005c;
	box-shadow: 0 30px 60px 0 rgba(0, 0, 0, 0.3);
	text-align: center;
}

#formFooter {
	background-color: #f6f6f6;
	border-top: 1px solid #facc00;
	padding: 25px;
	text-align: center;
	-webkit-border-radius: 0 0 10px 10px;
	border-radius: 0 0 10px 10px;
}

/* TABS */
h2.inactive {
	color: #cccccc;
}

h2.active {
	color: #0d0d0d;
	border-bottom: 2px solid #facc00;
}

/* FORM TYPOGRAPHY*/
input[type=button], input[type=submit], input[type=reset] {
	background-color: #facc00;
	border: none;
	color: white;
	padding: 15px 80px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	text-transform: uppercase;
	font-size: 13px;
	-webkit-box-shadow: 0 10px 30px 0 #facc005c;
	box-shadow: 0 10px 30px 0 #facc005c;
	-webkit-border-radius: 5px 5px 5px 5px;
	border-radius: 5px 5px 5px 5px;
	margin: 5px 20px 40px 20px;
	-webkit-transition: all 0.3s ease-in-out;
	-moz-transition: all 0.3s ease-in-out;
	-ms-transition: all 0.3s ease-in-out;
	-o-transition: all 0.3s ease-in-out;
	transition: all 0.3s ease-in-out;
}

input[type=button]:hover, input[type=submit]:hover, input[type=reset]:hover
	{
	background-color: #facc00;
}

input[type=button]:active, input[type=submit]:active, input[type=reset]:active
	{
	-moz-transform: scale(0.95);
	-webkit-transform: scale(0.95);
	-o-transform: scale(0.95);
	-ms-transform: scale(0.95);
	transform: scale(0.95);
}

input[type=text], input[type=password] {
	background-color: #f6f6f6;
	border: none;
	color: #0d0d0d;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 5px;
	width: 85%;
	border: 2px solid #f6f6f6;
	-webkit-transition: all 0.5s ease-in-out;
	-moz-transition: all 0.5s ease-in-out;
	-ms-transition: all 0.5s ease-in-out;
	-o-transition: all 0.5s ease-in-out;
	transition: all 0.5s ease-in-out;
	-webkit-border-radius: 5px 5px 5px 5px;
	border-radius: 5px 5px 5px 5px;
}

input[type=text]:focus {
	background-color: #fff;
	border-bottom: 2px solid #facc00;
}

input[type=text]:placeholder {
	color: #cccccc;
}

/* ANIMATIONS */

/* Simple CSS3 Fade-in-down Animation */
.fadeInDown {
	-webkit-animation-name: fadeInDown;
	animation-name: fadeInDown;
	-webkit-animation-duration: 1s;
	animation-duration: 1s;
	-webkit-animation-fill-mode: both;
	animation-fill-mode: both;
}

@
-webkit-keyframes fadeInDown { 0% {
	opacity: 0;
	-webkit-transform: translate3d(0, -100%, 0);
	transform: translate3d(0, -100%, 0);
}

100%
{
opacity
:
1;


-webkit-transform
:none
;


transform
:none
;


}
}
@
keyframes fadeInDown { 0% {
	opacity: 0;
	-webkit-transform: translate3d(0, -100%, 0);
	transform: translate3d(0, -100%, 0);
}

100%
{
opacity
:
1;


-webkit-transform
:none
;


transform
:none
;


}
}

/* Simple CSS3 Fade-in Animation */
@
-webkit-keyframes fadeIn {from { opacity:0;
	
}

to {
	opacity: 1;
}

}
@
-moz-keyframes fadeIn {from { opacity:0;
	
}

to {
	opacity: 1;
}

}
@
keyframes fadeIn {from { opacity:0;
	
}

to {
	opacity: 1;
}

}
.fadeIn {
	opacity: 0;
	-webkit-animation: fadeIn ease-in 1;
	-moz-animation: fadeIn ease-in 1;
	animation: fadeIn ease-in 1;
	-webkit-animation-fill-mode: forwards;
	-moz-animation-fill-mode: forwards;
	animation-fill-mode: forwards;
	-webkit-animation-duration: 1s;
	-moz-animation-duration: 1s;
	animation-duration: 1s;
}

.fadeIn.first {
	-webkit-animation-delay: 0.4s;
	-moz-animation-delay: 0.4s;
	animation-delay: 0.4s;
}

.fadeIn.second {
	-webkit-animation-delay: 0.6s;
	-moz-animation-delay: 0.6s;
	animation-delay: 0.6s;
}

.fadeIn.third {
	-webkit-animation-delay: 0.8s;
	-moz-animation-delay: 0.8s;
	animation-delay: 0.8s;
}

.fadeIn.fourth {
	-webkit-animation-delay: 1s;
	-moz-animation-delay: 1s;
	animation-delay: 1s;
}

/* Simple CSS3 Fade-in Animation */
.underlineHover:after {
	display: block;
	left: 0;
	bottom: -10px;
	width: 0;
	height: 2px;
	background-color: #facc00;
	content: "";
	transition: width 0.2s;
}

.underlineHover:hover {
	color: #0d0d0d;
}

.underlineHover:hover:after {
	width: 100%;
}

/* OTHERS */
*:focus {
	outline: none;
}

#icon {
	width: 60%;
}

* {
	box-sizing: border-box;
}

#name {
	padding-top: 10px;
	padding-bottom: 10px;
	line-height: 20px;
	font-family: 'johnregular';
	font-size: 18px;
}

table.type10 {
	border-collapse: collapse;
	text-align: left;
	line-height: 1.5;
	border-top: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
	margin: 20px 10px;
}

table.type10 tbody th {
	width: 150px;
	padding: 10px;
}

table.type10 td {
	width: 350px;
	padding: 10px;
	vertical-align: top;
}

table.type10 .even {
	background: #fdf3f5;
}

table.type10 .even2 {
	background: #e8f4fc;
}

table.type10 .even3 {
	background: #f8e5ff;
}

.f_th {
	width: 150px;
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	color: #fff;
	background: #e7708d;
	margin: 20px 10px;
}

.m_th {
	width: 150px;
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	color: #fff;
	background: #4ca2db;
	margin: 20px 10px;
}

.h_th {
	width: 150px;
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	color: #fff;
	background: #a543c6;
	margin: 20px 10px;
}

#alltable {
	height: 380px;
	overflow: auto;
}

select::-ms-expand {
	display: none;
}

select {
	width: 180px; /* 원하는 너비설정 */
	height: 100%;
	padding: .5em .5em; /* 여백으로 높이 설정 */
	font-family: inherit; /* 폰트 상속 */
	background: url('resources/images/arrow.png') no-repeat 95% 50%;
	/* 네이티브 화살표를 커스텀 화살표로 대체 */
	border: 0px solid #999;
	border-radius: 0px; /* iOS 둥근모서리 제거 */
	-webkit-appearance: none; /* 네이티브 외형 감추기 */
	-moz-appearance: none;
	appearance: none;
	font-size: 15px;
	color: white;
	text-align: center;
}

select:hover {
	opacity: 0.5;
}

option {
	color: black;
}

p {
	font-size: 12px;
}

div.weather_back {
	
}
</style>


<script>
	var keyword1 = $('#keyword1').val();
	var keyword2 = $('#keyword2').val();

	var userId = '<c:out value="${sessionScope.loginId}"/>';
	var state = '<c:out value="${sessionScope.state}"/>';
	//남긴 메시지함  
	function init() {
		$.ajax({
			method : 'post',
			url : 'selectOffMessage',
			success : output
		});
	}

	function output(resp) {
		var result = resp;
		if (result == "") {
			result = "0"
		}
		$("#output").html(result);
	}
	//소켓 스크립트
	function connect() {
		sock = new SockJS("<c:url value="/echo"/>");
		sock.onopen = function() {
			sock.send(":::" + userId);
			console.log('open');
		};
		sock.onmessage = function(evt) {
			var data = evt.data;
			var strArray = data.split('-');
			var message = strArray[0];
			var receiveuserid = strArray[1];
			var senduserid = strArray[2];
			var date = strArray[3];
			chatOneAppend(message, senduserid, receiveuserid, date);
		};
		sock.onclose = function() {
			console.log('close');
		};
	}

	function chatOneConnect(receiveuserid) {
		var url = 'chatOne?receiveuserid=' + receiveuserid;
		var openWin = window.open(url, 'testWindow',
				'width=400, height=340, scrollbars=no, left=550,  top=150');
	}
	function chatOneAppend(msg, senduserId, receiveuserid, date) {
		var url = 'chatOne?senduserId=' + senduserId + '&receiveuserid='
				+ receiveuserid + '&msg=' + msg + '&date=' + date;
		var openWin = window.open(url, 'testWindow',
				'width=400, height=420, scrollbars=no, left=550,  top=150');
	}

	function setChildText() {
		openWin.document.getElementById("msg").value = document
				.getElementById("pmsg").value;
	}
	function send(msg) {
		alert(msg);
		sock.send(msg + "-" + userId);
	}

	$(function() {
		CityAirGrade();
		CityWeather();

		if (userId != "") {
			connect();
			init();
		}

	});

	// 대기환경 Main Data
	function CityAirGrade() {
		keyword1 = $("#search_gu2 option:selected").val();

		if (typeof keyword1 == "undefined") {
			if (state!="") {
				keyword1 = state;
			} else {
				keyword1 = "종로구";
			}
		} 
		$
				.ajax({
					url : 'CityAirData',
					type : 'get',
					data : 'keyword1=' + keyword1,
					dataType : 'json',
					success : function(data) {
						var air = data.ListAirQualityByDistrictService.row[0];
						var result = '';

						// 통합대기환경지수 등급에 따라 배경색 변경
						if (air.GRADE == '좋음') {
							result += '<div id="color" class="air_clean">';
						} else if (air.GRADE == '보통') {
							result += '<div id="color" class="air_soso">';
						} else if (air.GRADE == '나쁨') {
							result += '<div id="color" class="air_dirty">';
						} else if (air.GRADE == '매우나쁨') {
							result += '<div id="color" class="air_worst">';
						} else {
							result += '<div id="color" class="air_error">';
						}
						result += '<div class="empty">';

						result += '<select name="search_gu" id="search_gu2" onChange="javascript:CityAirGrade();" class="select_style custom">';
						result += '<option value="" selected="selected">&nbsp;&nbsp;&nbsp;  - 선택 -  </option>';
						result += '<option value="강남구">&nbsp;&nbsp;&nbsp;&nbsp;강남구</option>';
						result += '<option value="강동구">&nbsp;&nbsp;&nbsp;&nbsp;강동구</option>';
						result += '<option value="강북구">&nbsp;&nbsp;&nbsp;&nbsp;강북구</option>';
						result += '<option value="강서구">&nbsp;&nbsp;&nbsp;&nbsp;강서구</option>';
						result += '<option value="관악구">&nbsp;&nbsp;&nbsp;&nbsp;관악구</option>';
						result += '<option value="광진구">&nbsp;&nbsp;&nbsp;&nbsp;광진구</option>';
						result += '<option value="구로구">&nbsp;&nbsp;&nbsp;&nbsp;구로구</option>';
						result += '<option value="금천구">&nbsp;&nbsp;&nbsp;&nbsp;금천구</option>';
						result += '<option value="노원구">&nbsp;&nbsp;&nbsp;&nbsp;노원구</option>';
						result += '<option value="도봉구">&nbsp;&nbsp;&nbsp;&nbsp;도봉구</option>';
						result += '<option value="동대문구">&nbsp;&nbsp;&nbsp;&nbsp;동대문구</option>';
						result += '<option value="동작구">&nbsp;&nbsp;&nbsp;&nbsp;동작구</option>';
						result += '<option value="마포구">&nbsp;&nbsp;&nbsp;&nbsp;마포구</option>';
						result += '<option value="서대문구">&nbsp;&nbsp;&nbsp;&nbsp;서대문구</option>';
						result += '<option value="서초구">&nbsp;&nbsp;&nbsp;&nbsp;서초구</option>';
						result += '<option value="성동구">&nbsp;&nbsp;&nbsp;&nbsp;성동구</option>';
						result += '<option value="성북구">&nbsp;&nbsp;&nbsp;&nbsp;성북구</option>';
						result += '<option value="송파구">&nbsp;&nbsp;&nbsp;&nbsp;송파구</option>';
						result += '<option value="양천구">&nbsp;&nbsp;&nbsp;&nbsp;양천구</option>';
						result += '<option value="영등포구">&nbsp;&nbsp;&nbsp;&nbsp;영등포구</option>';
						result += '<option value="용산구">&nbsp;&nbsp;&nbsp;&nbsp;용산구</option>';
						result += '<option value="은평구">&nbsp;&nbsp;&nbsp;&nbsp;은평구</option>';
						result += '<option value="종로구">&nbsp;&nbsp;&nbsp;&nbsp;종로구</option>';
						result += '<option value="중구">&nbsp;&nbsp;&nbsp;&nbsp;중구</option>';
						result += '<option value="중랑구">&nbsp;&nbsp;&nbsp;&nbsp;중랑구</option>';
						result += '</select>';
						result += '<img src="resources/images/battery.png" style="float: right; padding-right: 5px"></div>';
						result += '<div class="address">'
								+ air.MSRSTENAME
								+ '<p style="font-size:18px;">${date} ${time}</p></div>';
						result += '<div class="image">';
						if (air.GRADE == '좋음') {
							result += '<img src="resources/images/smile/best.png" style="height: 150px;width: 120px;">';
						} else if (air.GRADE == '보통') {
							result += '<img src="resources/images/smile/soso.png" style="height: 150px;width: 120px;">';
						} else if (air.GRADE == '나쁨') {
							result += '<img src="resources/images/smile/bad.png" style="height: 150px;width: 120px;">';
						} else if (air.GRADE == '매우나쁨') {
							result += '<img src="resources/images/smile/die.png" style="height: 150px;width: 120px;">';
						} else {
							result += '<img src="resources/images/smile/error.png" style="height: 150px;width: 120px;">';
						}
						result += '</div>';
						result += '<div class="air_grade_name">' + air.GRADE
								+ '</div>';
						result += '<div class="air_grade">' + air.MAXINDEX
								+ '</div>';
						result += '<div class="line"><< <<< <<<< 넘겨주세요 >>>> >>> >></div>';
						result += '<div class="detail_box"></div>';
						result += '</div>';

						$('.air_back').html(result);
						var append_data = '<script>';
						append_data += '$("#search_gu2").val("' + keyword1
								+ '").prop("selected", true);';
						append_data += '</script'+'>';
						$('.air_back').append(append_data);
						CityAir();

					},
					error : function(XMLHttpRequest, textStatus, errorThrown) {
						alert("Status: " + textStatus);
						alert("Error: " + errorThrown);
					}
				});
	}

	// 대기환경 Detail 부분
	function CityAir() {
		keyword1 = $('#keyword1').val();
		if (typeof keyword1 == "undefined") {
			keyword1 = $("#search_gu2 option:selected").val();
		}
		$
				.ajax({
					url : 'CityAirData',
					type : 'get',
					data : 'keyword1=' + keyword1,
					dataType : 'json',
					success : function(data) {
						var air = data.ListAirQualityByDistrictService.row[0];
						var air_data = '';

						$(document).ready(function() {
							$('.detail_box').slick({
								lazyLoad : 'ondemand',
								slidesToShow : 4,
								slidesToScroll : 2
							});
						});

						air_data += '<div class="detail">';
						air_data += '<p>미세먼지</p>';
						if (air.PM10 <= 15) { // 최고
							air_data += '<img id="smile" src="resources/images/smile/best.png" style="margin: 0 auto; width: 60px; height: 75px;">';
							air_data += '<p>최고</p>';
							air_data += '<p>' + air.PM10 + ' ㎍/㎥</p>';
						} else if (air.PM10 > 15 || air.PM10 <= 30) { // 좋음
							air_data += '<img id="smile" src="resources/images/smile/better.png" style="margin: 0 auto; width: 60px; height: 75px;">';
							air_data += '<p>좋음</p>';
							air_data += '<p>' + air.PM10 + ' ㎍/㎥</p>';
						} else if (air.PM10 > 30 || air.PM10 <= 40) { // 양호
							air_data += '<img id="smile" src="resources/images/smile/good.png" style="margin: 0 auto; width: 60px; height: 75px;">';
							air_data += '<p>양호</p>';
							air_data += '<p>' + air.PM10 + ' ㎍/㎥</p>';
						} else if (air.PM10 > 40 || air.PM10 <= 50) { // 보통
							air_data += '<img id="smile" src="resources/images/smile/soso.png" style="margin: 0 auto; width: 60px; height: 75px;">';
							air_data += '<p>보통</p>';
							air_data += '<p>' + air.PM10 + ' ㎍/㎥</p>';
						} else if (air.PM10 > 50 || air.PM10 <= 75) { // 나쁨
							air_data += '<img id="smile" src="resources/images/smile/bad.png" style="margin: 0 auto; width: 60px; height: 75px;">';
							air_data += '<p>나쁨</p>';
							air_data += '<p>' + air.PM10 + ' ㎍/㎥</p>';
						} else if (air.PM10 > 75 || air.PM10 <= 100) { // 상당히 나쁨
							air_data += '<img id="smile" src="resources/images/smile/worse.png" style="margin: 0 auto; width: 60px; height: 75px;">';
							air_data += '<p>상당히 나쁨</p>';
							air_data += '<p>' + air.PM10 + ' ㎍/㎥</p>';
						} else if (air.PM10 > 100 || air.PM10 <= 150) { // 매우 나쁨
							air_data += '<img id="smile" src="resources/images/smile/worst.png" style="margin: 0 auto; width: 60px; height: 75px;">';
							air_data += '<p>매우 나쁨</p>';
							air_data += '<p>' + air.PM10 + ' ㎍/㎥</p>';
						} else if (air.PM10 > 150) { // 최악
							air_data += '<img id="smile" src="resources/images/smile/die.png" style="margin: 0 auto; width: 60px; height: 75px;">';
							air_data += '<p>최악</p>';
							air_data += '<p>' + air.PM10 + ' ㎍/㎥</p>';
						} else { // 점검중
							air_data += '<img id="smile" src="resources/images/smile/error.png" style="margin: 0 auto; width: 60px; height: 75px;">';
							air_data += '<p>점검중</p>';
						}
						air_data += '</div>';

						air_data += '<div class="detail">';
						air_data += '<p>초미세먼지</p>';
						if (air.PM25 <= 8) { // 최고
							air_data += '<img id="smile" src="resources/images/smile/best.png" style="margin: 0 auto; width: 60px; height: 75px;">';
							air_data += '<p>최고</p>';
							air_data += '<p>' + air.PM25 + ' ㎍/㎥</p>';
						} else if (air.PM25 > 8 || air.PM25 <= 15) { // 좋음
							air_data += '<img id="smile" src="resources/images/smile/better.png" style="margin: 0 auto; width: 60px; height: 75px;">';
							air_data += '<p>좋음</p>';
							air_data += '<p>' + air.PM25 + ' ㎍/㎥</p>';
						} else if (air.PM25 > 15 || air.PM25 <= 20) { // 양호
							air_data += '<img id="smile" src="resources/images/smile/good.png" style="margin: 0 auto; width: 60px; height: 75px;">';
							air_data += '<p>양호</p>';
							air_data += '<p>' + air.PM25 + ' ㎍/㎥</p>';
						} else if (air.PM25 > 20 || air.PM25 <= 25) { // 보통
							air_data += '<img id="smile" src="resources/images/smile/soso.png" style="margin: 0 auto; width: 60px; height: 75px;">';
							air_data += '<p>보통</p>';
							air_data += '<p>' + air.PM25 + ' ㎍/㎥</p>';
						} else if (air.PM25 > 25 || air.PM25 <= 37) { // 나쁨
							air_data += '<img id="smile" src="resources/images/smile/bad.png" style="margin: 0 auto; width: 60px; height: 75px;">';
							air_data += '<p>나쁨</p>';
							air_data += '<p>' + air.PM25 + ' ㎍/㎥</p>';
						} else if (air.PM25 > 37 || air.PM25 <= 50) { // 상당히 나쁨
							air_data += '<img id="smile" src="resources/images/smile/worse.png" style="margin: 0 auto; width: 60px; height: 75px;">';
							air_data += '<p>상당히 나쁨</p>';
							air_data += '<p>' + air.PM25 + ' ㎍/㎥</p>';
						} else if (air.PM25 > 50 || air.PM25 <= 75) { // 매우 나쁨
							air_data += '<img id="smile" src="resources/images/smile/worst.png" style="margin: 0 auto; width: 60px; height: 75px;">';
							air_data += '<p>매우 나쁨</p>';
							air_data += '<p>' + air.PM25 + ' ㎍/㎥</p>';
						} else if (air.PM25 > 75) { // 최악
							air_data += '<img id="smile" src="resources/images/smile/die.png" style="margin: 0 auto; width: 60px; height: 75px;">';
							air_data += '<p>최악</p>';
							air_data += '<p>' + air.PM25 + ' ㎍/㎥</p>';
						} else { // 점검중
							air_data += '<img id="smile" src="resources/images/smile/error.png" style="margin: 0 auto; width: 60px; height: 75px;">';
							air_data += '<p>점검중</p>';
						}
						air_data += '</div>';

						air_data += '<div class="detail">';
						air_data += '<p>오존</p>';
						if (air.OZONE <= 0.02) { // 최고
							air_data += '<img id="smile" src="resources/images/smile/best.png" style="margin: 0 auto; width: 60px; height: 75px;">';
							air_data += '<p>최고</p>';
							air_data += '<p>' + air.OZONE + ' ppm</p>';
						} else if (air.OZONE > 0.02 || air.OZONE <= 0.03) { // 좋음
							air_data += '<img id="smile" src="resources/images/smile/better.png" style="margin: 0 auto; width: 60px; height: 75px;">';
							air_data += '<p>좋음</p>';
							air_data += '<p>' + air.OZONE + ' ppm</p>';
						} else if (air.OZONE > 0.03 || air.OZONE <= 0.06) { // 양호
							air_data += '<img id="smile" src="resources/images/smile/good.png" style="margin: 0 auto; width: 60px; height: 75px;">';
							air_data += '<p>양호</p>';
							air_data += '<p>' + air.OZONE + ' ppm</p>';
						} else if (air.OZONE > 0.06 || air.OZONE <= 0.09) { // 보통
							air_data += '<img id="smile" src="resources/images/smile/soso.png" style="margin: 0 auto; width: 60px; height: 75px;">';
							air_data += '<p>보통</p>';
							air_data += '<p>' + air.OZONE + ' ppm</p>';
						} else if (air.OZONE > 0.09 || air.OZONE <= 0.12) { // 나쁨
							air_data += '<img id="smile" src="resources/images/smile/bad.png" style="margin: 0 auto; width: 60px; height: 75px;">';
							air_data += '<p>나쁨</p>';
							air_data += '<p>' + air.OZONE + ' ppm</p>';
						} else if (air.OZONE > 0.12 || air.OZONE <= 0.15) { // 상당히 나쁨
							air_data += '<img id="smile" src="resources/images/smile/worse.png" style="margin: 0 auto; width: 60px; height: 75px;">';
							air_data += '<p>상당히 나쁨</p>';
							air_data += '<p>' + air.OZONE + ' ppm</p>';
						} else if (air.OZONE > 0.15 || air.OZONE <= 0.38) { // 매우 나쁨
							air_data += '<img id="smile" src="resources/images/smile/worst.png" style="margin: 0 auto; width: 60px; height: 75px;">';
							air_data += '<p>매우 나쁨</p>';
							air_data += '<p>' + air.OZONE + ' ppm</p>';
						} else if (air.OZONE > 0.38) { // 최악
							air_data += '<img id="smile" src="resources/images/smile/die.png" style="margin: 0 auto; width: 60px; height: 75px;">';
							air_data += '<p>최악</p>';
							air_data += '<p>' + air.OZONE + ' ppm</p>';
						} else { // 점검중
							air_data += '<img id="smile" src="resources/images/smile/error.png" style="margin: 0 auto; width: 60px; height: 75px;">';
							air_data += '<p>점검중</p>';
						}
						air_data += '</div>';

						air_data += '<div class="detail">';
						air_data += '<p>이산화질소</p>';
						if (air.NITROGEN <= 0.02) { // 최고
							air_data += '<img id="smile" src="resources/images/smile/best.png" style="margin: 0 auto; width: 60px; height: 75px;">';
							air_data += '<p>최고</p>';
							air_data += '<p>' + air.NITROGEN + ' ppm</p>';
						} else if (air.NITROGEN > 0.02 || air.NITROGEN <= 0.03) { // 좋음
							air_data += '<img id="smile" src="resources/images/smile/better.png" style="margin: 0 auto; width: 60px; height: 75px;">';
							air_data += '<p>좋음</p>';
							air_data += '<p>' + air.NITROGEN + ' ppm</p>';
						} else if (air.NITROGEN > 0.03 || air.NITROGEN <= 0.05) { // 양호
							air_data += '<img id="smile" src="resources/images/smile/good.png" style="margin: 0 auto; width: 60px; height: 75px;">';
							air_data += '<p>양호</p>';
							air_data += '<p>' + air.NITROGEN + ' ppm</p>';
						} else if (air.NITROGEN > 0.05 || air.NITROGEN <= 0.06) { // 보통
							air_data += '<img id="smile" src="resources/images/smile/soso.png" style="margin: 0 auto; width: 60px; height: 75px;">';
							air_data += '<p>보통</p>';
							air_data += '<p>' + air.NITROGEN + ' ppm</p>';
						} else if (air.NITROGEN > 0.06 || air.NITROGEN <= 0.13) { // 나쁨
							air_data += '<img id="smile" src="resources/images/smile/bad.png" style="margin: 0 auto; width: 60px; height: 75px;">';
							air_data += '<p>나쁨</p>';
							air_data += '<p>' + air.NITROGEN + ' ppm</p>';
						} else if (air.NITROGEN > 0.13 || air.NITROGEN <= 0.2) { // 상당히 나쁨
							air_data += '<img id="smile" src="resources/images/smile/worse.png" style="margin: 0 auto; width: 60px; height: 75px;">';
							air_data += '<p>상당히 나쁨</p>';
							air_data += '<p>' + air.NITROGEN + ' ppm</p>';
						} else if (air.NITROGEN > 0.2 || air.NITROGEN <= 1.1) { // 매우 나쁨
							air_data += '<img id="smile" src="resources/images/smile/worst.png" style="margin: 0 auto; width: 60px; height: 75px;">';
							air_data += '<p>매우 나쁨</p>';
							air_data += '<p>' + air.NITROGEN + ' ppm</p>';
						} else if (air.NITROGEN > 1.1) { // 최악
							air_data += '<img id="smile" src="resources/images/smile/die.png" style="margin: 0 auto; width: 60px; height: 75px;">';
							air_data += '<p>최악</p>';
							air_data += '<p>' + air.NITROGEN + ' ppm</p>';
						} else { // 점검중
							air_data += '<img id="smile" src="resources/images/smile/error.png" style="margin: 0 auto; width: 60px; height: 75px;">';
							air_data += '<p>점검중</p>';
						}
						air_data += '</div>';

						air_data += '<div class="detail">';
						air_data += '<p>일산화탄소</p>';
						if (air.CARBON <= 1) { // 최고
							air_data += '<img id="smile" src="resources/images/smile/best.png" style="margin: 0 auto; width: 60px; height: 75px;">';
							air_data += '<p>최고</p>';
							air_data += '<p>' + air.CARBON + ' ppm</p>';
						} else if (air.CARBON > 1 || air.CARBON <= 2) { // 좋음
							air_data += '<img id="smile" src="resources/images/smile/better.png" style="margin: 0 auto; width: 60px; height: 75px;">';
							air_data += '<p>좋음</p>';
							air_data += '<p>' + air.CARBON + ' ppm</p>';
						} else if (air.CARBON > 2 || air.CARBON <= 5.5) { // 양호
							air_data += '<img id="smile" src="resources/images/smile/good.png" style="margin: 0 auto; width: 60px; height: 75px;">';
							air_data += '<p>양호</p>';
							air_data += '<p>' + air.CARBON + ' ppm</p>';
						} else if (air.CARBON > 5.5 || air.CARBON <= 9) { // 보통
							air_data += '<img id="smile" src="resources/images/smile/soso.png" style="margin: 0 auto; width: 60px; height: 75px;">';
							air_data += '<p>보통</p>';
							air_data += '<p>' + air.CARBON + ' ppm</p>';
						} else if (air.CARBON > 9 || air.CARBON <= 12) { // 나쁨
							air_data += '<img id="smile" src="resources/images/smile/bad.png" style="margin: 0 auto; width: 60px; height: 75px;">';
							air_data += '<p>나쁨</p>';
							air_data += '<p>' + air.CARBON + ' ppm</p>';
						} else if (air.CARBON > 12 || air.CARBON <= 15) { // 상당히 나쁨
							air_data += '<img id="smile" src="resources/images/smile/worse.png" style="margin: 0 auto; width: 60px; height: 75px;">';
							air_data += '<p>상당히 나쁨</p>';
							air_data += '<p>' + air.CARBON + ' ppm</p>';
						} else if (air.CARBON > 15 || air.CARBON <= 32) { // 매우 나쁨
							air_data += '<img id="smile" src="resources/images/smile/worst.png" style="margin: 0 auto; width: 60px; height: 75px;">';
							air_data += '<p>매우 나쁨</p>';
							air_data += '<p>' + air.CARBON + ' ppm</p>';
						} else if (air.CARBON > 32) { // 최악
							air_data += '<img id="smile" src="resources/images/smile/die.png" style="margin: 0 auto; width: 60px; height: 75px;">';
							air_data += '<p>최악</p>';
							air_data += '<p>' + air.CARBON + ' ppm</p>';
						} else { // 점검중
							air_data += '<img id="smile" src="resources/images/smile/error.png" style="margin: 0 auto; width: 60px; height: 75px;">';
							air_data += '<p>점검중</p>';
						}
						air_data += '</div>';

						air_data += '<div class="detail">';
						air_data += '<p>아황산가스</p>';
						if (air.SULFUROUS <= 0.01) { // 최고
							air_data += '<img id="smile" src="resources/images/smile/best.png" style="margin: 0 auto; width: 60px; height: 75px;">';
							air_data += '<p>최고</p>';
							air_data += '<p>' + air.SULFUROUS + ' ppm</p>';
						} else if (air.SULFUROUS > 0.01
								|| air.SULFUROUS <= 0.02) { // 좋음
							air_data += '<img id="smile" src="resources/images/smile/better.png" style="margin: 0 auto; width: 60px; height: 75px;">';
							air_data += '<p>좋음</p>';
							air_data += '<p>' + air.SULFUROUS + ' ppm</p>';
						} else if (air.SULFUROUS > 0.02
								|| air.SULFUROUS <= 0.04) { // 양호
							air_data += '<img id="smile" src="resources/images/smile/good.png" style="margin: 0 auto; width: 60px; height: 75px;">';
							air_data += '<p>양호</p>';
							air_data += '<p>' + air.SULFUROUS + ' ppm</p>';
						} else if (air.SULFUROUS > 0.04
								|| air.SULFUROUS <= 0.05) { // 보통
							air_data += '<img id="smile" src="resources/images/smile/soso.png" style="margin: 0 auto; width: 60px; height: 75px;">';
							air_data += '<p>보통</p>';
							air_data += '<p>' + air.SULFUROUS + ' ppm</p>';
						} else if (air.SULFUROUS > 0.05 || air.SULFUROUS <= 0.1) { // 나쁨
							air_data += '<img id="smile" src="resources/images/smile/bad.png" style="margin: 0 auto; width: 60px; height: 75px;">';
							air_data += '<p>나쁨</p>';
							air_data += '<p>' + air.SULFUROUS + ' ppm</p>';
						} else if (air.SULFUROUS > 0.1 || air.SULFUROUS <= 0.15) { // 상당히 나쁨
							air_data += '<img id="smile" src="resources/images/smile/worse.png" style="margin: 0 auto; width: 60px; height: 75px;">';
							air_data += '<p>상당히 나쁨</p>';
							air_data += '<p>' + air.SULFUROUS + ' ppm</p>';
						} else if (air.SULFUROUS > 0.15 || air.SULFUROUS <= 0.6) { // 매우 나쁨
							air_data += '<img id="smile" src="resources/images/smile/worst.png" style="margin: 0 auto; width: 60px; height: 75px;">';
							air_data += '<p>매우 나쁨</p>';
							air_data += '<p>' + air.SULFUROUS + ' ppm</p>';
						} else if (air.SULFUROUS > 0.6) { // 최악
							air_data += '<img id="smile" src="resources/images/smile/die.png" style="margin: 0 auto; width: 60px; height: 75px;">';
							air_data += '<p>최악</p>';
							air_data += '<p>' + air.SULFUROUS + ' ppm</p>';
						} else { // 점검중
							air_data += '<img id="smile" src="resources/images/smile/error.png" style="margin: 0 auto; width: 60px; height: 75px;">';
							air_data += '<p>점검중</p>';
						}
						air_data += '</div>';

						$('.detail_box').html(air_data);

					},
					error : function(XMLHttpRequest, textStatus, errorThrown) {
						alert("Status: " + textStatus);
						alert("Error: " + errorThrown);
					}
				});
	}
	function CityWeather(keyword2) {
		keyword2 = $("#search_gu option:selected").val();
		if (typeof keyword2 == "undefined") {
			if (state!="") {
				keyword2 = state;
			} else {
				keyword2 = "종로구";
			}
		} 
		$
				.ajax({
					url : 'WeatherData',
					type : 'get',
					data : 'keyword2=' + keyword2,
					dataType : 'json',
					success : function(data) {
						var weather = data.weather.minutely[0];
						var time = '${time_data}';
						var weather_data = '';
						if (weather.sky.code == "SKY_A01") { //맑음 
							if (time >= 6 && time <= 18) { // 맑음 낮 #b2d0ff
								weather_data = '<div style="width: 100%; height: 100%; background-color: #b2d0ff;">';
							} else { // 맑음 밤 #022a70
								weather_data = '<div style="width: 100%; height: 100%; background-color: #365996;">';
							}
						} else if (weather.sky.code == "SKY_A02") { //구름조금 
							if (time >= 6 && time <= 18) { // 구름조금 낮 #81a2db
								weather_data = '<div style="width: 100%; height: 100%; background-color: #81a2db;">';
							} else { // 구름조금 밤 #365996
								weather_data = '<div style="width: 100%; height: 100%; background-color: #365996;">';
							}
						} else if (weather.sky.code == "SKY_A03") { //구름많음
							if (time >= 6 && time <= 18) { // 구름조금 낮 #81a2db
								weather_data = '<div style="width: 100%; height: 100%; background-color: #81a2db;">';
							} else { // 구름조금 밤 #365996
								weather_data = '<div style="width: 100%; height: 100%; background-color: #365996;">';
							}
						} else if (weather.sky.code == "SKY_A04") { //구름많고 비 #a7b7d1
							weather_data = '<div style="width: 100%; height: 100%; background-color: #a7b7d1;">';
						} else if (weather.sky.code == "SKY_A05") { //구름많고 눈
							weather_data = '<div style="width: 100%; height: 100%; background-color: #a7b7d1;">';
						} else if (weather.sky.code == "SKY_A06") { //구름많고 비 또는 눈
							weather_data = '<div style="width: 100%; height: 100%; background-color: #a7b7d1;">';
						} else if (weather.sky.code == "SKY_A07") { //흐림 #a6b1c1
							weather_data = '<div style="width: 100%; height: 100%; background-color: #a6b1c1;">';
						} else if (weather.sky.code == "SKY_A08") { //흐리고 비
							weather_data = '<div style="width: 100%; height: 100%; background-color: #a6b1c1;">';
						} else if (weather.sky.code == "SKY_A09") { //흐리고 눈
							weather_data = '<div style="width: 100%; height: 100%; background-color: #a6b1c1;">';
						} else if (weather.sky.code == "SKY_A10") { //흐리고 비 또는 눈
							weather_data = '<div style="width: 100%; height: 100%; background-color: #a6b1c1;">';
						} else if (weather.sky.code == "SKY_A11") { //흐리고 낙뢰
							weather_data = '<div style="width: 100%; height: 100%; background-color: #a6b1c1;">';
						} else if (weather.sky.code == "SKY_A12") { //뇌우/비
							weather_data = '<div style="width: 100%; height: 100%; background-color: #a6b1c1;">';
						} else if (weather.sky.code == "SKY_A13") { //뇌우/눈
							weather_data = '<div style="width: 100%; height: 100%; background-color: #a6b1c1;">';
						} else if (weather.sky.code == "SKY_A14") { //뇌우/비 또는 눈
							weather_data = '<div style="width: 100%; height: 100%; background-color: #a6b1c1;">';
						} else { //점검중 또는 에러
							weather_data = '<div style="width: 100%; height: 100%; background-color: #898989;">';
						}
						weather_data += '<div class="empty">';
						weather_data += '<select name="search_gu" id="search_gu" onChange="javascript:CityWeather(keyword2);">';
						weather_data += '<option value="">&nbsp;&nbsp;&nbsp;  - 선택 -  </option>';
						weather_data += '<option value="강남구">&nbsp;&nbsp;&nbsp;&nbsp;강남구</option>';
						weather_data += '<option value="강동구">&nbsp;&nbsp;&nbsp;&nbsp;강동구</option>';
						weather_data += '<option value="강북구">&nbsp;&nbsp;&nbsp;&nbsp;강북구</option>';
						weather_data += '<option value="강서구">&nbsp;&nbsp;&nbsp;&nbsp;강서구</option>';
						weather_data += '<option value="관악구">&nbsp;&nbsp;&nbsp;&nbsp;관악구</option>';
						weather_data += '<option value="광진구">&nbsp;&nbsp;&nbsp;&nbsp;광진구</option>';
						weather_data += '<option value="구로구">&nbsp;&nbsp;&nbsp;&nbsp;구로구</option>';
						weather_data += '<option value="금천구">&nbsp;&nbsp;&nbsp;&nbsp;금천구</option>';
						weather_data += '<option value="노원구">&nbsp;&nbsp;&nbsp;&nbsp;노원구</option>';
						weather_data += '<option value="도봉구">&nbsp;&nbsp;&nbsp;&nbsp;도봉구</option>';
						weather_data += '<option value="동대문구">&nbsp;&nbsp;&nbsp;&nbsp;동대문구</option>';
						weather_data += '<option value="동작구">&nbsp;&nbsp;&nbsp;&nbsp;동작구</option>';
						weather_data += '<option value="마포구">&nbsp;&nbsp;&nbsp;&nbsp;마포구</option>';
						weather_data += '<option value="서대문구">&nbsp;&nbsp;&nbsp;&nbsp;서대문구</option>';
						weather_data += '<option value="서초구">&nbsp;&nbsp;&nbsp;&nbsp;서초구</option>';
						weather_data += '<option value="성동구">&nbsp;&nbsp;&nbsp;&nbsp;성동구</option>';
						weather_data += '<option value="성북구">&nbsp;&nbsp;&nbsp;&nbsp;성북구</option>';
						weather_data += '<option value="송파구">&nbsp;&nbsp;&nbsp;&nbsp;송파구</option>';
						weather_data += '<option value="양천구">&nbsp;&nbsp;&nbsp;&nbsp;양천구</option>';
						weather_data += '<option value="영등포구">&nbsp;&nbsp;&nbsp;&nbsp;영등포구</option>';
						weather_data += '<option value="용산구">&nbsp;&nbsp;&nbsp;&nbsp;용산구</option>';
						weather_data += '<option value="은평구">&nbsp;&nbsp;&nbsp;&nbsp;은평구</option>';
						weather_data += '<option value="종로구">&nbsp;&nbsp;&nbsp;&nbsp;종로구</option>';
						weather_data += '<option value="중구">&nbsp;&nbsp;&nbsp;&nbsp;중구</option>';
						weather_data += '<option value="중랑구">&nbsp;&nbsp;&nbsp;&nbsp;중랑구</option>';
						weather_data += '</select>';
						weather_data += '<img src="resources/images/battery.png" style="float: right; padding-right: 5px"></div>';
						weather_data += '<div class="address">'
								+ keyword2
								+ '<p style="font-size:18px;">${date} ${time}</p></div>';
						weather_data += '<div class="image">';
						if (weather.sky.code == "SKY_A01") { //맑음
							if (time >= 6 && time <= 18) {
								weather_data += '<img id="weather" src="resources/images/weather/clean_day.png" style="height: 150px;width: 150px;">';
							} else {
								weather_data += '<img id="weather" src="resources/images/weather/clean_night.png" style="height: 150px;width: 150px;">';
							}
							weather_data += '</div>';
							weather_data += '<div class="weather_grade">'
									+ weather.sky.name;
							weather_data += '<p style="font-size:20px;">오늘 산책은 어때요?</p></div>';
						} else if (weather.sky.code == "SKY_A02") { //구름조금
							if (time >= 6 && time <= 18) {
								weather_data += '<img id="weather" src="resources/images/weather/cloud_day.png" style="height: 150px;width: 150px;">';
							} else {
								weather_data += '<img id="weather" src="resources/images/weather/cloud_night.png" style="height: 150px;width: 150px;">';
							}
							weather_data += '</div>';
							weather_data += '<div class="weather_grade">'
									+ weather.sky.name;
							weather_data += '<p style="font-size:20px;">선선한 날씨에요~</p></div>';
						} else if (weather.sky.code == "SKY_A03") { //구름많음
							weather_data += '<img id="weather" src="resources/images/weather/cloud_2.png" style="height: 150px;width: 150px;">';
							weather_data += '</div>';
							weather_data += '<div class="weather_grade">'
									+ weather.sky.name;
							weather_data += '<p style="font-size:20px;">구름이 뭉게뭉게~</p></div>';
						} else if (weather.sky.code == "SKY_A04") { //구름많고 비
							weather_data += '<img id="weather" src="resources/images/weather/rain.png" style="height: 150px;width: 150px;">';
							weather_data += '</div>';
							weather_data += '<div class="weather_grade">'
									+ weather.sky.name;
							weather_data += '<p style="font-size:20px;">우산을 챙겨주세요!</p></div>';
						} else if (weather.sky.code == "SKY_A05") { //구름많고 눈
							weather_data += '<img id="weather" src="resources/images/weather/snow.png" style="height: 150px;width: 150px;">';
							weather_data += '</div>';
							weather_data += '<div class="weather_grade">'
									+ weather.sky.name;
							weather_data += '<p style="font-size:20px;">우산을 챙겨주세요!</p></div>';
						} else if (weather.sky.code == "SKY_A06") { //구름많고 비 또는 눈
							weather_data += '<img id="weather" src="resources/images/weather/rain.png" style="height: 150px;width: 150px;">';
							weather_data += '</div>';
							weather_data += '<div class="weather_grade">'
									+ weather.sky.name;
							weather_data += '<p style="font-size:20px;">우산을 챙겨주세요!</p></div>';
						} else if (weather.sky.code == "SKY_A07") { //흐림
							weather_data += '<img id="weather" src="resources/images/weather/cloud_2.png" style="height: 150px;width: 150px;">';
							weather_data += '</div>';
							weather_data += '<div class="weather_grade">'
									+ weather.sky.name;
							weather_data += '<p style="font-size:20px;">비가 올수도 있어요!</p></div>';
						} else if (weather.sky.code == "SKY_A08") { //흐리고 비
							weather_data += '<img id="weather" src="resources/images/weather/rain.png" style="height: 150px;width: 150px;">';
							weather_data += '</div>';
							weather_data += '<div class="weather_grade">'
									+ weather.sky.name;
							weather_data += '<p style="font-size:20px;">우산을 챙겨주세요!</p></div>';
						} else if (weather.sky.code == "SKY_A09") { //흐리고 눈
							weather_data += '<img id="weather" src="resources/images/weather/snow.png" style="height: 150px;width: 150px;">';
							weather_data += '</div>';
							weather_data += '<div class="weather_grade">'
									+ weather.sky.name;
							weather_data += '<p style="font-size:20px;">우산을 챙겨주세요!</p></div>';
						} else if (weather.sky.code == "SKY_A10") { //흐리고 비 또는 눈
							weather_data += '<img id="weather" src="resources/images/weather/rain.png" style="height: 150px;width: 150px;">';
							weather_data += '</div>';
							weather_data += '<div class="weather_grade">'
									+ weather.sky.name;
							weather_data += '<p style="font-size:20px;">우산을 챙겨주세요!</p></div>';
						} else if (weather.sky.code == "SKY_A11") { //흐리고 낙뢰
							weather_data += '<img id="weather" src="resources/images/weather/thunder.png" style="height: 150px;width: 150px;">';
							weather_data += '</div>';
							weather_data += '<div class="weather_grade">'
									+ weather.sky.name;
							weather_data += '<p style="font-size:20px;">외출을 삼가주세요!</p></div>';
						} else if (weather.sky.code == "SKY_A12") { //뇌우/비
							weather_data += '<img id="weather" src="resources/images/weather/thunder.png" style="height: 150px;width: 150px;">';
							weather_data += '</div>';
							weather_data += '<div class="weather_grade">'
									+ weather.sky.name;
							weather_data += '<p style="font-size:20px;">외출을 삼가주세요!</p></div>';
						} else if (weather.sky.code == "SKY_A13") { //뇌우/눈
							weather_data += '<img id="weather" src="resources/images/weather/thunder.png" style="height: 150px;width: 150px;">';
							weather_data += '</div>';
							weather_data += '<div class="weather_grade">'
									+ weather.sky.name;
							weather_data += '<p style="font-size:20px;">외출을 삼가주세요!</p></div>';
						} else if (weather.sky.code == "SKY_A14") { //뇌우/비 또는 눈
							weather_data += '<img id="weather" src="resources/images/weather/thunder.png" style="height: 150px;width: 150px;">';
							weather_data += '</div>';
							weather_data += '<div class="weather_grade">'
									+ weather.sky.name + '</p>';
							weather_data += '<p style="font-size:20px;">외출을 삼가주세요!</p></div>';
						} else { //점검중 또는 에러
							weather_data += '<img id="weather" src="resources/images/weather/error.png" style="height: 150px;width: 150px;">';
							weather_data += '</div>';
							weather_data += '<div class="weather_grade">'
									+ weather.sky.name;
							weather_data += '<p style="font-size:20px;">지금은 점검중입니다.</p></div>';
						}

						weather_data += '<div class="weather_info">';
						weather_data += '<table class="air_data">';
						weather_data += '<tr>';
						weather_data += '<td>현재기온 : </td><td> '
								+ weather.temperature.tc + ' ˚C</td>';
						weather_data += '<td>현재 풍속 : </td><td> '
								+ weather.wind.wspd + ' m/s</td>';
						weather_data += '</tr>';
						weather_data += '<tr>';
						weather_data += '<td>최고기온 : </td><td> '
								+ weather.temperature.tmax + ' ˚C</td>';
						weather_data += '<td>현재 습도 : </td><td> '
								+ weather.humidity + ' %</td>';
						weather_data += '</tr>';
						weather_data += '<tr>';
						weather_data += '<td>최저기온 : </td><td> '
								+ weather.temperature.tmin + ' ˚C</td>';
						if (weather.precipitation.type != 3) {
							weather_data += '<td>현재 강수량 : </td><td> '
									+ weather.precipitation.sinceOntime
									+ ' mm</td>';
						} else if (weather.precipitation.type == 3) {
							weather_data += '<td>현재 적설량 : </td><td> '
									+ weather.precipitation.sinceOntime
									+ ' cm</td>';
						}
						weather_data += '</div>';
						weather_data += '</div>';
						$('.weather_back').html(weather_data);
						var append_data = '<script>';
						append_data += '$("#search_gu").val("' + keyword2
								+ '").prop("selected", true);';
						append_data += '</script'+'>';
						$('.weather_back').append(append_data);

					},
					error : function(XMLHttpRequest, textStatus, errorThrown) {
						alert("Status: " + textStatus);
						alert("Error: " + errorThrown);
					}

				});
	}
</script>

</head>
<body>
	<!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
	<div class='preloader'>
		<div class='loaded'>&nbsp;</div>
	</div>
	<!--Home page style-->
	<header id="main_menu" class="header">
		<div class="main_menu_bg navbar-fixed-top"
			style="width: 100%; height: 80px; background-color: #fad000;">
			<div class="container">
				<div class="row">
					<div class="nave_menu">
						<nav class="navbar navbar-default">
							<div class="container-fluid">
								<!-- Brand and toggle get grouped for better mobile display -->
								<div class="navbar-header">
									<button type="button" class="navbar-toggle collapsed"
										data-toggle="collapse"
										data-target="#bs-example-navbar-collapse-1"
										aria-expanded="false">
										<span class="sr-only">Toggle navigation</span> <span
											class="icon-bar"></span> <span class="icon-bar"></span> <span
											class="icon-bar"></span>
									</button>

								</div>

								<!-- Collect the nav links, forms, and other content for toggling -->
								<div class="collapse navbar-collapse"
									id="bs-example-navbar-collapse-1">

									<ul class="nav navbar-nav">
										<li><a href="Home">Home</a></li>
										<li><a href="Weather">Weather</a></li>
										<li><a href="Culture">Culture</a></li>
										<li><a href="Socar">Socar</a></li>
										<li><a href="Board">Board</a></li>
										<li><a href="Friends">Search</a></li>
									</ul>

									<ul class="nav navbar-nav navbar-right">

										<c:if test="${sessionScope.loginId == null }">
											<li><a href="Login">Login</a></li>
										</c:if>

										<c:if test="${sessionScope.loginId != null }">
											<li><a>${sessionScope.loginName}</a></li>
											<li><a href="MyPage?msg=t"><i class="fa fa-inbox"></i>&nbsp;<span
													id="output" class="label label-danger"></span></a></li>
											<li><a href="MyPage">My Page</a></li>
											<li><a href="logout">Logout</a></li>
										</c:if>

									</ul>

								</div>
							</div>
						</nav>
					</div>
				</div>
			</div>

		</div>
	</header>
	<!--End of header -->


	<section id="myworks" class="myworks">
		<div style="width: 100%; height: 50px;"></div>
		<div class="back">
			<div class="weather_phone"
				style="background-image: url('resources/images/phone_back.png'); background-color: #fef9fd;">
				<div style="width: 100%; height: 115px;"></div>
				<div class="weather_back"
					style="border: 7px solid #d6d6d6; background-color: #6dcff9;"></div>
			</div>
			<div class="air_phone"
				style="background-image: url('resources/images/phone_back.png'); background-color: #fef9fd;">
				<div style="width: 100%; height: 115px;"></div>
				<div class="air_back" style="border: 7px solid #d6d6d6;"></div>
			</div>
		</div>
	</section>
	<!-- End of Features Section -->


	<section id="contact" class="contact">

		<div class="row" style="margin-right: 170px; margin-left: 170px;">
			<div class="footer_copyright">

				<div class="col-md-6 col-sm-6 col-xs-12 wow fadeInDown"
					data-wow-duration="3s">
					<div class="single_copyirgth text-left">
						<p style="font-family: 'big_johnregular'; font-size: 16px;">Copyright
							2018 &copy; by C-4</P>
						<p style="font-size: 12px;">
							+82 1566 - 5114 | ddaaahhiiiii@gmail.com <br>
							Yeongdong-daero 513, Gangnam-gu, Seoul COEX office (06164)
						</p>
					</div>
				</div>

				<div class="col-md-6 col-sm-6 col-xs-12">
					<div class="single_copyirgth wow fadeInUp" data-wow-duration="2s">
						<ul class="navbar-right">
							<li class="active" style="font-family: 'big_johnregular';">
								<p>&nbsp;</p> <a href="Socar"><img style="width: 120px;"
									src="resources/images/socar1.png"></a>
							</li>

						</ul>
					</div>
				</div>

			</div>
		</div>
	</section>
	<!-- End of contact With Map Section -->



	<script src="resources/js/vendor/bootstrap.min.js"></script>
	<script src="resources/js/vendor/isotope.min.js"></script>

	<script src="resources/js/jquery.easypiechart.min.js"></script>
	<script src="resources/js/jquery.mixitup.min.js"></script>


	<script src="resources/js/plugins.js"></script>
	<script src="resources/js/main.js"></script>

	<script src="resources/jquery-3.3.1.min.js"></script>
	<script src="resources/slick/slick.min.js"></script>


</body>
</html>
