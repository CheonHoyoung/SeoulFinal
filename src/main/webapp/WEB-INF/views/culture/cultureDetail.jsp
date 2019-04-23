<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Culture Shocka</title>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=64e0c0771f69c9088f3285dcb0f172e8&libraries=services"></script>
<script src="resources/jquery-3.3.1.min.js"></script>
<script>
	var position = new Array();
	var outputPosition = new Array();
	var ps = new daum.maps.services.Places();
	var X = '<c:out value="${culture.x}"/>';
	var Y = '<c:out value="${culture.y}"/>';
	var PLACENM = '<c:out value="${culture.placenm}"/>';
	$(function() {
		var culturenum = $('#culturenum').val();
		var imageSrc = 'resources/images/myLocation.png', // 마커이미지의 주소입니다  
		imageMy = new daum.maps.Size(60, 60),
		imageOption = {
			offset : new daum.maps.Point(30, 60)
		}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.

		var markerImage = new daum.maps.MarkerImage(imageSrc, imageMy,
				imageOption);

		if (X == 0.0) {
			searchPlaces(PLACENM);
		} else {
			outputPosition.push(X);
			outputPosition.push(Y);
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			mapOption = {
				center : new daum.maps.LatLng(X, Y), // 지도의 중심좌표
				level : 3
			// 지도의 확대 레벨
			};

			var map = new daum.maps.Map(mapContainer, mapOption);

			// 마커가 표시될 위치입니다 
			position.push(new daum.maps.LatLng(X, Y));

			// 마커를 생성합니다s
			var marker = new daum.maps.Marker({
				position : position[0],
				image: markerImage
			});

			// 마커가 지도 위에 표시되도록 설정합니다
			marker.setMap(map);
		}

		// 키워드로 장소를 검색합니다
		function searchPlaces(place) {
			var keyword = place;
			ps.keywordSearch(keyword, placesSearchCB);
		}

		// 키워드 검색 완료 시 호출되는 콜백함수 입니다
		function placesSearchCB(data, status, pagination) {
			if (status === daum.maps.services.Status.OK) {

				// 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
				// LatLngBounds 객체에 좌표를 추가합니다
				var bounds = new daum.maps.LatLngBounds();

				bounds.extend(new daum.maps.LatLng(data[0].y, data[0].x));
				position.push(new daum.maps.LatLng(data[0].y, data[0].x));
				outputPosition.push(data[0].y);
				outputPosition.push(data[0].x);
				
				// 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
				//	        map.setBounds(bounds);
				displayMarker(position[0]);
			}
		}

		function displayMarker(position) {
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			mapOption = {
				center : position, // 지도의 중심좌표
				level : 3
			// 지도의 확대 레벨
			};
			var map = new daum.maps.Map(mapContainer, mapOption);

			// 마커를 생성합니다s
			var marker = new daum.maps.Marker({
				position : position
			});

			// 마커가 지도 위에 표시되도록 설정합니다
			marker.setMap(map);
		}
		
		var http = "http://map.daum.net/?sName=";
		http += '<c:out value="${addr}"/>';
		http += "&eName=";
		http += PLACENM;
		
		$('#address').attr('href', http);
		
	});
</script>

        <style type="text/css">
		@import url('https://fonts.googleapis.com/css?family=Nanum+Pen+Script');

/* BASIC */

html {
  background-color: #56baed;
}

body {
  font-family: 'Nanum Pen Script', cursive;
  height: 100vh;
}

a {
  color: #facc00;
  display:inline-block;
  text-decoration: none;
  font-weight: 400;
}

h2 {
  text-align: center;
  font-weight: 600;
  text-transform: uppercase;
  display:inline-block;
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
  box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);
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

input[type=button], input[type=submit], input[type=reset]  {
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

input[type=button]:hover, input[type=submit]:hover, input[type=reset]:hover  {
  background-color: #facc00;
}

input[type=button]:active, input[type=submit]:active, input[type=reset]:active  {
  -moz-transform: scale(0.95);
  -webkit-transform: scale(0.95);
  -o-transform: scale(0.95);
  -ms-transform: scale(0.95);
  transform: scale(0.95);
}

input[type=text],
input[type=password] {
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

@-webkit-keyframes fadeInDown {
  0% {
    opacity: 0;
    -webkit-transform: translate3d(0, -100%, 0);
    transform: translate3d(0, -100%, 0);
  }
  100% {
    opacity: 1;
    -webkit-transform: none;
    transform: none;
  }
}

@keyframes fadeInDown {
  0% {
    opacity: 0;
    -webkit-transform: translate3d(0, -100%, 0);
    transform: translate3d(0, -100%, 0);
  }
  100% {
    opacity: 1;
    -webkit-transform: none;
    transform: none;
  }
}

/* Simple CSS3 Fade-in Animation */
@-webkit-keyframes fadeIn { from { opacity:0; } to { opacity:1; } }
@-moz-keyframes fadeIn { from { opacity:0; } to { opacity:1; } }
@keyframes fadeIn { from { opacity:0; } to { opacity:1; } }

.fadeIn {
  opacity:0;
  -webkit-animation:fadeIn ease-in 1;
  -moz-animation:fadeIn ease-in 1;
  animation:fadeIn ease-in 1;

  -webkit-animation-fill-mode:forwards;
  -moz-animation-fill-mode:forwards;
  animation-fill-mode:forwards;

  -webkit-animation-duration:1s;
  -moz-animation-duration:1s;
  animation-duration:1s;
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

.underlineHover:hover:after{
  width: 100%;
}



/* OTHERS */

*:focus {
    outline: none;
} 

#icon {
  width:60%;
}

* {
  box-sizing: border-box;
}

#wrapper {
 width: 100%;
 text-align: center;
 margin-top:20px;
 }
#in {
 display: inline-block;
 }
 
 table {
    width: 100%;
    border: 5px solid #444444;
    border-collapse: collapse;

  }
  
   th, td {
    border: 5px solid #444444;
    height: 50px;
  }

#content {
font-family: 'Nanum Pen Script', cursive;
}

.size {
font-size: 20px;
}

.title {
font-size: 30px;
background-color: #444444;
color: #ffffff;
}
</style>

        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="apple-touch-icon" href="apple-touch-icon.png">

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

        <script src="resources/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
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
									</ul>

									<ul class="nav navbar-nav navbar-right">

										<c:if test="${sessionScope.loginId == null }">
											<li><a href="Login">Login</a></li>
										</c:if>

										<c:if test="${sessionScope.loginId != null }">
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
	
	<div id="wrapper" >
	<div id="in">
		<%-- <table>
			<thead>
				<tr>
					<th colspan="4">
						<div id="content" class="title">${culture.svcnm } <a id="address" href="" style="margin-top: 20px;" >
						<img style="margin-bottom: 10px;" src="resources/images/navi6.png" title="길찾기 바로가기"></a></div>
					</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>주최</th>
					<td>
						<div id="content" class="size">${culture.placenm }</div>
					</td>
					<th rowspan="3" style="width: 80px;">사진</th>
					<td rowspan="3" style="width: 500px; height: 700px;">
						<img src="${culture.img_path }" style="height: 100%; width: 100%;">
					</td>
				</tr>
				<tr>
					<th style="width: 80px;">url</th>
					<td style="width: 500px;">
						<div id="content" class="size">${culture.svcurl }</div>
					</td>
				</tr>
				<tr>	
					<th>내용</th>
					<td style="height: 500px;">
						<div id="content" class="size">${culture.notice }</div>
					</td>
				</tr>
				<tr>
					<th colspan="4">지도</th>
				</tr>
				<tr>	
					<td colspan="4">
						<div id="map" style="width: 1100px; height: 500px;"></div>
					</td>
				</tr>
			</tbody>
		</table> --%>
	<table>
		<tr>
			<td>
				<div id="content" class="title">${culture.svcnm } <a id="address" href="" style="margin-top: 20px;" target="_blank">
			<img style="margin-bottom: 10px;" src="resources/images/navi6.png" title="길찾기 바로가기"></a></div>
			</td>
		</tr>
		<tr>
			<td>
				<div id="content" class="size">${culture.placenm }</div>
			</td>
		</tr>
		<tr>
			<td>
				<div id="content" class="size">${culture.svcurl }</div>
			</td>
		</tr>
		<tr>
			<td>
				<div id="content" class="size">${culture.notice }</div>
			</td>
		</tr>
		<tr>
			<td>
				<div id="map" style="width: 1100px; height: 500px;"></div>
			</td>
		</tr>
	</table>
		
		<input id="culturenum" type="hidden" value="${culturenum}" />

		
	

	
	</div>
	</div>
	
	</section>
	

      <section id="contact" class="contact">

				<div class="row" style="margin-right: 170px; margin-left: 170px;">
					<div class="footer_copyright">
					
						<div class="col-md-6 col-sm-6 col-xs-12 wow fadeInDown"  data-wow-duration="3s">
							<div class="single_copyirgth text-left">
								<p style="font-family: 'big_johnregular';" >Copyright 2018 &copy; by C-4</P>
								<p style="font-size: 12px;"> +82 1566 - 5114 | ddaaahhiiiii@gmail.com <br> Yeongdong-daero 513, Gangnam-gu, Seoul COEX office (06164)</p>
							</div>
						</div>
						
						<div class="col-md-6 col-sm-6 col-xs-12">
							<div class="single_copyirgth wow fadeInUp"  data-wow-duration="2s">
								<ul class="navbar-right">
									<li class="active" style="font-family: 'big_johnregular';" >
										<p>&nbsp;</p>
										<a href="Socar"><img style="width:120px;" src="resources/images/socar1.png"></a>
									</li>
								</ul>
							</div>
						</div>
						
					</div>
				</div>
        </section><!-- End of contact With Map Section -->

        

       






        <script src="resources/js/vendor/jquery-1.11.2.min.js"></script>
        <script src="resources/js/vendor/bootstrap.min.js"></script>
        <script src="resources/js/vendor/isotope.min.js"></script>

        <script src="resources/js/jquery.easypiechart.min.js"></script>
        <script src="resources/js/jquery.mixitup.min.js"></script>
        
            
        <script src="resources/js/plugins.js"></script>
        <script src="resources/js/main.js"></script>
        
    </body>
</html>