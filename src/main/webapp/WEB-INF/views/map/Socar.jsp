<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Poppins')
	/* BASIC */ html
	{
	background-color:
	#fff;

}
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
	max-width: 450px;
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










:





 





none










;
transform










:





 





none










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










:





 





none










;
transform










:





 





none










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

div.search_place {
	margin: 0 auto;
	height: 40px;
	width: 1100px;
	border: 1px solid;
	background: #ffffff;
}

select::-ms-expand {
	display: none;
}

select {
	width: 250px; /* 원하는 너비설정 */
	padding: .5em .5em; /* 여백으로 높이 설정 */
	font-family: inherit; /* 폰트 상속 */
	background: url('resources/images/arrow.png') no-repeat 95% 50%;
	/* 네이티브 화살표를 커스텀 화살표로 대체 */
	border: 1px solid #999;
	border-radius: 0px; /* iOS 둥근모서리 제거 */
	-webkit-appearance: none; /* 네이티브 외형 감추기 */
	-moz-appearance: none;
	appearance: none;
	float: left;
}

div.box {
	display: inline;
}

input.search_text {
	font-size: 14px;
	width: 600px;
	border: 0px solid #999;
	padding: .5em .5em;
	outline: none;
	float: left;
}

img.search {
	float: right;
	padding: .5em .5em;
}

img.myLocation {
	float: right;
	padding: .3em .7em;
}

.search_text:hover {
	opacity: 0.5;
	cursor: pointer;
}

.search:hover {
	opacity: 0.5;
	cursor: pointer;
}

.myLocation:hover {
	opacity: 0.5;
	cursor: pointer;
}

select:hover {
	opacity: 0.5;
	cursor: pointer;
}

.myLocation:active {
	position: relative;
	top: 2px;
	-moz-box-shadow: inset 0 0 3px rgba(255, 255, 255, 0.6), inset 0 1px 2px
		rgba(255, 255, 255, 0.7), 0 3px 0 #b8882a, 0 4px 0 #593a11, 0 8px 0
		#ccc;
	-webkit-box-shadow: inset 0 0 3px rgba(255, 255, 255, 0.6), inset 0 1px
		2px rgba(255, 255, 255, 0.7), 0 3px 0 #b8882a, 0 4px 0 #593a11, 0 8px
		0 #ccc;
	box-shadow: inset 0 0 3px rgba(255, 255, 255, 0.6), inset 0 1px 2px
		rgba(255, 255, 255, 0.7), 0 3px 0 #b8882a, 0 4px 0 #593a11, 0 8px 0
		#ccc;
}

.search:active {
	position: relative;
	top: 2px;
	-moz-box-shadow: inset 0 0 3px rgba(255, 255, 255, 0.6), inset 0 1px 2px
		rgba(255, 255, 255, 0.7), 0 3px 0 #b8882a, 0 4px 0 #593a11, 0 8px 0
		#ccc;
	-webkit-box-shadow: inset 0 0 3px rgba(255, 255, 255, 0.6), inset 0 1px
		2px rgba(255, 255, 255, 0.7), 0 3px 0 #b8882a, 0 4px 0 #593a11, 0 8px
		0 #ccc;
	box-shadow: inset 0 0 3px rgba(255, 255, 255, 0.6), inset 0 1px 2px
		rgba(255, 255, 255, 0.7), 0 3px 0 #b8882a, 0 4px 0 #593a11, 0 8px 0
		#ccc;
}
</style>
<title>Culture Shocka</title>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=69e72c4f38323190dd307b5c1e8339df&libraries=clusterer,services"></script>
<script src="resources/jquery-3.3.1.min.js"></script>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="apple-touch-icon" href="apple-touch-icon.png">
<!-- 소캣  -->
<script type="text/javascript" src="resources/sockjs-0.3.4.js"></script>

<!--<link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,600,700' rel='stylesheet' type='text/css'>-->
<link rel="stylesheet" href="resources/css/fonticons.css">
<link rel="stylesheet" href="resources/fonts/stylesheet.css">
<link rel="stylesheet" href="resources/css/font-awesome.min.css">
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<!--        <link rel="stylesheet" href="assets/css/bootstrap-theme.min.css">-->


<!--For Plugins external css-->
<link rel="stylesheet" href="resources/css/plugins.css" />

<!--Theme custom css -->
<link rel="stylesheet" href="resources/css/style.css">

<!--Theme Responsive css-->
<link rel="stylesheet" href="resources/css/responsive.css" />
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=64e0c0771f69c9088f3285dcb0f172e8&libraries=clusterer,services"></script>
<script src="resources/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>

<script src="resources/js/vendor/bootstrap.min.js"></script>
<script src="resources/js/vendor/isotope.min.js"></script>

<script src="resources/js/jquery.mixitup.min.js"></script>


<script>
	var userId = '<c:out value="${sessionScope.loginId}"/>';

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
	//마커들을 배열로 
	var overLaymarkers = [];
	//멥 좌표 배열로 선언
	var positions = [];
	var infoDiv;
	var locPosition = null;
	var keyword1 = null;
	var keyword2 = null;
	var state = null;
	$(function() {
		// 주소-좌표 변환 객체를 생성합니다
		$('#mylocation').on('click', function() {
			if (locPosition == null) {
				alert('위치 추적을  켜주세요');
				return;
			}
			setCenter();
		});

		var geocoder = new daum.maps.services.Geocoder();
		var bounds;
		var map = new daum.maps.Map(document.getElementById('map'), { // 지도를 표시할 div
			center : new daum.maps.LatLng(37.56537, 126.9774), // 지도의 중심좌표 
			level : 8,
		// 지도의 확대 레벨 
		});

		// 마커 클러스터러를 생성합니다 
		var clusterer = new daum.maps.MarkerClusterer({
			map : map, // 마커들을 클러스터로 관리하고 표시할 지도 객체 
			averageCenter : true, // 클러스터에 포함된 마커들의 평균 위치를 클러스터 마커 위치로 설정 
			minLevel : 6,
			calculator : [ 10, 20, 50, 70 ],
			styles : [ { // calculator 각 사이 값 마다 적용될 스타일을 지정한다
				width : '30px',
				height : '30px',
				background : 'rgba(255, 250, 107, .8)',
				borderRadius : '15px',
				color : '#000',
				textAlign : 'center',
				fontWeight : 'bold',
				fontSize : '16px',
				lineHeight : '31px'
			}, {
				width : '40px',
				height : '40px',
				background : 'rgba(230, 178, 255, .8)',
				borderRadius : '20px',
				color : '#000',
				textAlign : 'center',
				fontWeight : 'bold',
				fontSize : '16px',
				lineHeight : '41px'
			}, {
				width : '50px',
				height : '50px',
				background : 'rgba(188, 217, 255, .8)',

				borderRadius : '25px',
				color : '#000',
				textAlign : 'center',
				fontSize : '16px',
				fontWeight : 'bold',
				lineHeight : '51px'
			}, {
				width : '60px',
				height : '60px',
				background : 'rgba(255, 188, 220, .8)',
				borderRadius : '30px',
				color : '#000',
				textAlign : 'center',
				fontSize : '16px',
				fontWeight : 'bold',
				lineHeight : '61px'
			}, {
				width : '70px',
				height : '70px',
				background : 'rgba(255, 197, 188, .8)',
				borderRadius : '35px',
				color : '#000',
				textAlign : 'center',
				fontWeight : 'bold',
				fontSize : '16px',
				lineHeight : '71px'
			} ]
		// 클러스터 할 최소 지도 레벨 
		});

		var imageSrc1 = 'resources/images/socar_18dp x2.png', // 마커이미지의 주소입니다  
		imageSrc2 = 'resources/images/eleccar_18dp x2.png', imageSrc3 = 'resources/images/myLocation.png', imageSize = new daum.maps.Size(
				32, 35), // 마커이미지의 크기입니다		
		imageOver = new daum.maps.Size(36, 40), imageMy = new daum.maps.Size(
				60, 60), imageOption1 = {
			offset : new daum.maps.Point(16, 35)
		}, imageOption2 = {
			offset : new daum.maps.Point(18, 40)
		}, imageOption3 = {
			offset : new daum.maps.Point(30, 60)
		}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.

		var markerImage1 = new daum.maps.MarkerImage(imageSrc1, imageSize,
				imageOption1);
		var markerImage2 = new daum.maps.MarkerImage(imageSrc2, imageOver,
				imageOption2);
		var markerImage3 = new daum.maps.MarkerImage(imageSrc3, imageMy,
				imageOption3);

		$('#search').on('click', removeMarker);

		if (navigator.geolocation) {

			// GeoLocation을 이용해서 접속 위치를 얻어옵니다
			navigator.geolocation.getCurrentPosition(function(position) {
				var lat = position.coords.latitude, // 위도
				lon = position.coords.longitude; // 경도

				locPosition = new daum.maps.LatLng(lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다

				// 마커와 인포윈도우를 표시합니다
				mydisplayMarker();
			});

		} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다

		}

		// 지도에 마커와 인포윈도우를 표시하는 함수입니다
		function mydisplayMarker() {

			// 마커를 생성합니다
			var marker = new daum.maps.Marker({
				map : map,
				position : locPosition,
				image : markerImage3
			});

			// 현재 지도 중심좌표로 주소를 검색해서 지도 좌측 상단에 표시합니다
			searchAddrFromCoords(locPosition, displayCenterInfo);
		}

		function searchAddrFromCoords(coords, callback) {
			// 좌표로 행정동 주소 정보를 요청합니다
			geocoder.coord2RegionCode(coords.getLng(), coords.getLat(),
					callback);
		}

		// 지도 좌측상단에 지도 중심좌표에 대한 주소정보를 표출하는 함수입니다
		function displayCenterInfo(result, status) {
			if (status === daum.maps.services.Status.OK) {

				for (var i = 0; i < result.length; i++) {
					// 행정동의 re	gion_type 값은 'H' 이므로
					if (result[i].region_type === 'H') {
						infoDiv = result[i].address_name;
						var addr = result[i].address_name;

						if (addr.indexOf("강남구") != -1) {
							state = "강남구";
						} else if (addr.indexOf("강동구") != -1) {
							state = "강동구";
						} else if (addr.indexOf("강북구") != -1) {
							state = "강북구";
						} else if (addr.indexOf("강서구") != -1) {
							state = "강서구";
						} else if (addr.indexOf("관악구") != -1) {
							state = "관악구";
						} else if (addr.indexOf("광진구") != -1) {
							state = "광진구";
						} else if (addr.indexOf("구로구") != -1) {
							state = "구로구";
						} else if (addr.indexOf("금천구") != -1) {
							state = "금천구";
						} else if (addr.indexOf("노원구") != -1) {
							state = "노원구";
						} else if (addr.indexOf("도봉구") != -1) {
							state = "도봉구";
						} else if (addr.indexOf("동대문구") != -1) {
							state = "동대문구";
						} else if (addr.indexOf("마포구") != -1) {
							state = "마포구";
						} else if (addr.indexOf("서대문구") != -1) {
							state = "서대문구";
						} else if (addr.indexOf("동작구") != -1) {
							state = "동작구";
						} else if (addr.indexOf("서초구") != -1) {
							state = "서초구";
						} else if (addr.indexOf("성동구") != -1) {
							state = "성동구";
						} else if (addr.indexOf("성북구") != -1) {
							state = "성북구";
						} else if (addr.indexOf("송파구") != -1) {
							state = "송파구";
						} else if (addr.indexOf("양천구") != -1) {
							state = "양천구";
						} else if (addr.indexOf("영등포구") != -1) {
							state = "영등포구";
						} else if (addr.indexOf("용산구") != -1) {
							state = "용산구";
						} else if (addr.indexOf("은평구") != -1) {
							state = "은평구";
						} else if (addr.indexOf("종로구") != -1) {
							state = "종로구";
						} else if (addr.indexOf("중구") != -1) {
							state = "중구";
						} else if (addr.indexOf("중랑구") != -1) {
							state = "중랑구";
						}

						var sendData = {
							"addr" : addr,
							"state" : state
						};
						//ajax로 map 정보 받음
						$.ajax({
							url : 'addr',
							type : 'post',
							data : JSON.stringify(sendData),
							contentType : 'application/json; carset=UTF-8',
							success : function(data) {
							}
						})
						break;
					}
				}
			}
		}
		if (locPosition == null) {
			doSearch();
		}

		function doSearch(data) {
			bounds = new daum.maps.LatLngBounds();

			if (data == null) {
				keyword2 = $('#search_gu').val();
			} else if (data.indexOf("강남구") != -1) {
				keyword2 = "강남구";
			} else if (data.indexOf("강동구") != -1) {
				keyword2 = "강동구";
			} else if (data.indexOf("강북구") != -1) {
				keyword2 = "강북구";
			} else if (data.indexOf("강서구") != -1) {
				keyword2 = "강서구";
			} else if (data.indexOf("관악구") != -1) {
				keyword2 = "관악구";
			} else if (data.indexOf("광진구") != -1) {
				keyword2 = "광진구";
			} else if (data.indexOf("구로구") != -1) {
				keyword2 = "구로구";
			} else if (data.indexOf("금천구") != -1) {
				keyword2 = "금천구";
			} else if (data.indexOf("노원구") != -1) {
				keyword2 = "노원구";
			} else if (data.indexOf("도봉구") != -1) {
				keyword2 = "도봉구";
			} else if (data.indexOf("동대문구") != -1) {
				keyword2 = "동대문구";
			} else if (data.indexOf("마포구") != -1) {
				keyword2 = "마포구";
			} else if (data.indexOf("서대문구") != -1) {
				keyword2 = "서대문구";
			} else if (data.indexOf("동작구") != -1) {
				keyword2 = "동작구";
			} else if (data.indexOf("서초구") != -1) {
				keyword2 = "서초구";
			} else if (data.indexOf("성동구") != -1) {
				keyword2 = "성동구";
			} else if (data.indexOf("성북구") != -1) {
				keyword2 = "성북구";
			} else if (data.indexOf("송파구") != -1) {
				keyword2 = "송파구";
			} else if (data.indexOf("양천구") != -1) {
				keyword2 = "양천구";
			} else if (data.indexOf("영등포구") != -1) {
				keyword2 = "영등포구";
			} else if (data.indexOf("용산구") != -1) {
				keyword2 = "용산구";
			} else if (data.indexOf("은평구") != -1) {
				keyword2 = "은평구";
			} else if (data.indexOf("종로구") != -1) {
				keyword2 = "종로구";
			} else if (data.indexOf("중구") != -1) {
				keyword2 = "중구";
			} else if (data.indexOf("중랑구") != -1) {
				keyword2 = "중랑구";
			}
			keyword1 = $('#keyword').val();

			var sendData = {
				"keyword1" : keyword1,
				"keyword2" : keyword2
			};
			//ajax로 map 정보 받음
			$
					.ajax({
						url : 'sss',
						type : 'post',
						data : JSON.stringify(sendData),
						contentType : 'application/json; carset=UTF-8',
						success : function(data) {
							if (data.length == 0) {
								alert("검색결과가 없습니다.");
								return;
							}
							$(data).each(
									function(i, position) {
										positions.push(new daum.maps.LatLng(
												position.la, position.lo));

										bounds.extend(new daum.maps.LatLng(
												position.la, position.lo));
										addMarkers(positions[i], i, position);
									});
							// 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
							// 마커이미지 설정 
							function addMarkers(position, i, content) {
								var markers = new daum.maps.Marker({
									map : map,
									position : position,
									image : markerImage1
								});

								overLaymarkers.push(markers);
								var parStoreCd = content.positn_cd;
								var title = content.positn_nm;
								var addr = content.adres;

								var infowindow1 = new daum.maps.InfoWindow(
										{
											position : position,
											content : '<iframe src="reservation?parStoreCd='
													+ parStoreCd
													+ '&title='
													+ title
													+ '" frameborder="0" width="200" height="150" scrolling="yes"></iframe>',
											removable : true

										// 인포윈도우에 표시할 내용
										});

								var infowindow2 = new daum.maps.InfoWindow({
									content : content.positn_nm
								// 인포윈도우에 표시할 내용
								});

								// 마커에 표시할 인포윈도우를 생성합니다 
								daum.maps.event.addListener(markers,
										'mouseover', makeOverListener(map,
												markers, infowindow2));
								daum.maps.event.addListener(markers,
										'mouseout', makeOutListener(markers,
												infowindow2));
								daum.maps.event.addListener(markers, 'click',
										makeOpenListener(map, markers,
												infowindow1));
							}
							// 클러스터러에 마커들을 추가합니다
							clusterer.addMarkers(overLaymarkers);
							setBounds();
							//infoDiv 초기화를 해주어야함
							infoDiv = null;

						},
						error : function(XMLHttpRequest, textStatus,
								errorThrown) {
							alert("Status: " + textStatus);
							alert("Error: " + errorThrown);
						}
					});

		}

		// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
		function makeOverListener(map, marker, infowindow) {
			return function() {
				infowindow.open(map, marker);
				marker.setImage(markerImage2);
			};
		}

		// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
		function makeOutListener(marker, infowindow) {
			return function() {
				infowindow.close();
				marker.setImage(markerImage1);
			};
		}

		//마커를 클릭했을 때 커스텀 오버레이를 표시합니다
		function makeOpenListener(map, marker, infowindow) {
			return function() {
				//overlay[i].setMap(map, marker);
				infowindow.open(map, marker);
			};
		}

		// 지도 위에 표시되고 있는 마커를 모두 제거합니다
		function removeMarker() {
			clusterer.removeMarkers(overLaymarkers);
			for (var i = 0; i < overLaymarkers.length; i++) {
				overLaymarkers[i].setMap(null);
			}
			positions = new Array;
			overLaymarkers = new Array;

			doSearch();
		}

		function setBounds() {
			// LatLngBounds 객체에 추가된 좌표들을 기준으로 지도의 범위를 재설정합니다
			// 이때 지도의 중심좌표와 레벨이 변경될 수 있습니다
			map.setBounds(bounds);
		}

		function setCenter() {
			map.setLevel(4);
			map.setCenter(locPosition);
		}
		if (userId != "") {
			connect();
			init();
		}
	});
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


	<section id="myworks" class="myworks" style="height: 900px">
	<div style="width: 100%; height: 50px;"></div>
	<div class="container-fluid">
		<div class="search_place">

			<div class="box">
				<select name="search_gu" id="search_gu"
					onChange="javascript:doSearch();" class="select_style custom">

					<option value="" selected="selected">&nbsp;&nbsp; - 전체 -</option>

					<option value="강남구">&nbsp;&nbsp;강남구</option>

					<option value="강동구">&nbsp;&nbsp;강동구</option>

					<option value="강북구">&nbsp;&nbsp;강북구</option>

					<option value="강서구">&nbsp;&nbsp;강서구</option>

					<option value="관악구">&nbsp;&nbsp;관악구</option>

					<option value="광진구">&nbsp;&nbsp;광진구</option>

					<option value="구로구">&nbsp;&nbsp;구로구</option>

					<option value="금천구">&nbsp;&nbsp;금천구</option>

					<option value="노원구">&nbsp;&nbsp;노원구</option>

					<option value="도봉구">&nbsp;&nbsp;도봉구</option>

					<option value="동대문구">&nbsp;&nbsp;동대문구</option>

					<option value="동작구">&nbsp;&nbsp;동작구</option>

					<option value="마포구">&nbsp;&nbsp;마포구</option>

					<option value="서대문구">&nbsp;&nbsp;서대문구</option>

					<option value="서초구">&nbsp;&nbsp;서초구</option>

					<option value="성동구">&nbsp;&nbsp;성동구</option>

					<option value="성북구">&nbsp;&nbsp;성북구</option>

					<option value="송파구">&nbsp;&nbsp;송파구</option>

					<option value="양천구">&nbsp;&nbsp;양천구</option>

					<option value="영등포구">&nbsp;&nbsp;영등포구</option>

					<option value="용산구">&nbsp;&nbsp;용산구</option>

					<option value="은평구">&nbsp;&nbsp;은평구</option>

					<option value="종로구">&nbsp;&nbsp;종로구</option>

					<option value="중구">&nbsp;&nbsp;중구</option>

					<option value="중랑구">&nbsp;&nbsp;중랑구</option>

				</select>
			</div>
			<div class="box">
				<input id="keyword" class="search_text" type="text"
					placeholder="검색어 입력">
			</div>
			<div class="box">
				<img id="mylocation" class="myLocation"
					src="resources/images/location.png"> <img id="search"
					class="search" src="resources/images/finder.png">
				<!-- <input  id="mylocation"  type="button" value="내위치" /> -->
			</div>
			<div id="map"
				style="margin: 0 auto; width: 1100px; height: 580px; border: 1px;"></div>
		</div>
		<!-- 지도를 표시할 div 입니다 -->
	</div>
	</section>
	<!-- End of Features Section -->


	<section id="contact" class="contact">

	<div class="row" style="margin-right: 170px; margin-left: 170px;">
		<div class="footer_copyright">

			<div class="col-md-6 col-sm-6 col-xs-12 wow fadeInDown"
				data-wow-duration="3s">
				<div class="single_copyirgth text-left">
					<p style="font-family: 'big_johnregular';">Copyright 2018
						&copy; by C-4</P>
					<p style="font-size: 12px;">
						+82 1566 - 5114 | ddaaahhiiiii@gmail.com <br> Yeongdong-daero
						513, Gangnam-gu, Seoul COEX office (06164)
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



	<script src="resources/js/vendor/jquery-1.11.2.min.js"></script>

	<script src="resources/js/jquery.easypiechart.min.js"></script>
	<script src="resources/js/plugins.js"></script>
	<script src="resources/js/main.js"></script>
	<script src="resources/jquery-3.3.1.min.js"></script>
</body>
</html>