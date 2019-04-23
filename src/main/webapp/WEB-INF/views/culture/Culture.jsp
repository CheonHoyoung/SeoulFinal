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

<script src="resources/jquery-3.3.1.min.js"></script>

<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Poppins');

/* BASIC */
html {
	background-color: #56baed;
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

#main {
	width: 530px;
	height: 70px;
	background: #f2f2f2;
	padding: 10px;
	border: 1px solid #b5b5b5;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	-moz-box-shadow: inset 0 0 3px rgba(255, 255, 255, 0.8), inset 0 2px 2px
		rgba(255, 255, 255, 1), 0 5px 0 #ccc, 0 6px 0 #989898, 0 13px 0
		#dfdede;
	-webkit-box-shadow: inset 0 0 3px rgba(255, 255, 255, 0.8), inset 0 2px
		2px rgba(255, 255, 255, 1), 0 5px 0 #ccc, 0 6px 0 #989898, 0 13px 0
		#dfdede;
	box-shadow: inset 0 0 3px rgba(255, 255, 255, 0.8), inset 0 2px 2px
		rgba(255, 255, 255, 1), 0 5px 0 #ccc, 0 6px 0 #989898, 0 13px 0
		#dfdede;
}

input[type="text"] {
	/* float: left; */
	width: 260px;
	padding: 15px 5px 5px 5px;
	margin-top: 5px;
	margin-left: 3px;
	border: 1px solid #999999;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	-moz-box-shadow: inset 0 5px 0 #ccc, inset 0 6px 0 #989898, inset 0 13px
		0 #dfdede;
	-webkit-box-shadow: inset 0 5px 0 #ccc, inset 0 6px 0 #989898, inset 0
		13px 0 #dfdede;
	box-shadow: inset 0 5px 0 #ccc, inset 0 6px 0 #989898, inset 0 13px 0
		#dfdede;
}

input[type="submit"].solid {
	cursor: pointer;
	width: 100px;
	height: 40px;
	/* padding: 8px 6px; */
	top: 0px;
	margin-left: 20px;
	background-color: #f8d004;
	color: #555;
	text-transform: uppercase;
	font-weight: bold;
	border: 1px solid #99631d;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	text-shadow: 0 1px 2px rgba(255, 255, 255, 0.7), 0 -1px 0
		rgba(64, 38, 5, 0.9);
	-moz-box-shadow: inset 0 0 3px rgba(255, 255, 255, 0.6), inset 0 1px 2px
		rgba(255, 255, 255, 0.7), 0 5px 0 #b8882a, 0 6px 0 #593a11, 0 13px 0
		#ccc;
	-webkit-box-shadow: inset 0 0 3px rgba(255, 255, 255, 0.6), inset 0 1px
		2px rgba(255, 255, 255, 0.7), 0 5px 0 #b8882a, 0 6px 0 #593a11, 0 13px
		0 #ccc;
	box-shadow: inset 0 0 3px rgba(255, 255, 255, 0.6), inset 0 1px 2px
		rgba(255, 255, 255, 0.7), 0 5px 0 #b8882a, 0 6px 0 #593a11, 0 13px 0
		#ccc;
	-webkit-transition: background 0.2s ease-out;
}

input[type="submit"].solid:hover, input[type="submit"].solid:focus {
	background: #ffd842;
	-moz-box-shadow: inset 0 0 3px rgba(255, 255, 255, 0.9), inset 0 2px 1px
		rgba(255, 250, 76, 0.8), 0 5px 0 #d8a031, 0 6px 0 #593a11, 0 13px 0
		#ccc;
	-webkit-box-shadow: inset 0 0 3px rgba(255, 255, 255, 0.9), inset 0 2px
		1px rgba(255, 250, 76, 0.8), 0 5px 0 #d8a031, 0 6px 0 #593a11, 0 13px
		0 #ccc;
	box-shadow: inset 0 0 3px rgba(255, 255, 255, 0.9), inset 0 2px 1px
		rgba(255, 250, 76, 0.8), 0 5px 0 #d8a031, 0 6px 0 #593a11, 0 13px 0
		#ccc;
}

input[type="submit"].solid:active {
	background: #f6a000;
	position: relative;
	top: 5px;
	border: 1px solid #702d00;
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

table#type11 {
	border-collapse: separate;
	border-spacing: 1px;
	text-align: center;
	line-height: 1.5;
	margin: 20px 10px;
}

table#type11 th {
	width: 155px;
	text-align: center;
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	color: #fff;
	background: #444444;
}

table#type11 td {
	width: 230px;
	padding: 10px;
	vertical-align: top;
	border-bottom: 1px solid #ccc;
	background: #eee;
}

/* -------------------- Select Box Styles: bavotasan.com Method (with special adaptations by ericrasch.com) */
/* -------------------- Source: http://bavotasan.com/2011/style-select-box-using-only-css/ */
.styled-select {
	height: 42.8px;
	overflow: hidden;
	width: 120px;
}

.styled-select select {
	background: #444444;
	border: none;
	font-size: 15px;
	height: 42.8px;
	padding: 5px;
	/* If you add too much padding here, the options won't show in IE */
	width: 120px;
}

/* -------------------- Rounded Corners */
.rounded {
	-webkit-border-radius: 20px;
	-moz-border-radius: 20px;
	border-radius: 20px;
}

.semi-square {
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
}

/* -------------------- Colors: Background */
.slate {
	background-color: #ddd;
}

.green {
	background-color: #779126;
}

.blue {
	background-color: #3b8ec2;
}

.yellow {
	background-color: #eec111;
}

.black {
	background-color: #000;
}

/* -------------------- Colors: Text */
.slate select {
	color: #000;
}

.green select {
	color: #fff;
}

.blue select {
	color: #fff;
}

.yellow select {
	color: #000;
}

.black select {
	color: #fff;
}

/* -------------------- Select Box Styles: danielneumann.com Method */
/* -------------------- Source: http://danielneumann.com/blog/how-to-style-dropdown-with-css-only/ */
#mainselection select {
	border: 0;
	color: #EEE;
	background: transparent;
	font-size: 20px;
	font-weight: bold;
	padding: 2px 10px;
	width: 378px;
	*width: 350px;
	*background: #58B14C;
	-webkit-appearance: none;
}

#mainselection {
	overflow: hidden;
	width: 350px;
	-moz-border-radius: 9px 9px 9px 9px;
	-webkit-border-radius: 9px 9px 9px 9px;
	border-radius: 9px 9px 9px 9px;
	box-shadow: 1px 1px 11px #330033;
	background: #58B14C url("http://i62.tinypic.com/15xvbd5.png") no-repeat
		scroll 319px center;
}

/* -------------------- Select Box Styles: stackoverflow.com Method */
/* -------------------- Source: http://stackoverflow.com/a/5809186 */
select#soflow, select#soflow-color {
	-webkit-appearance: button;
	-webkit-border-radius: 2px;
	-webkit-box-shadow: 0px 1px 3px rgba(0, 0, 0, 0.1);
	-webkit-padding-end: 20px;
	-webkit-padding-start: 2px;
	-webkit-user-select: none;
	background-image: url(http://i62.tinypic.com/15xvbd5.png),
		-webkit-linear-gradient(#FAFAFA, #F4F4F4 40%, #E5E5E5);
	background-position: 97% center;
	background-repeat: no-repeat;
	border: 1px solid #AAA;
	color: #555;
	font-size: inherit;
	margin: 20px;
	overflow: hidden;
	padding: 5px 10px;
	text-overflow: ellipsis;
	white-space: nowrap;
	width: 300px;
}

select#soflow-color {
	color: #fff;
	background-image: url(http://i62.tinypic.com/15xvbd5.png),
		-webkit-linear-gradient(#779126, #779126 40%, #779126);
	background-color: #779126;
	-webkit-border-radius: 20px;
	-moz-border-radius: 20px;
	border-radius: 20px;
	padding-left: 15px;
}

#wrapper {
	width: 100%;
	text-align: center;
}

#in {
	display: inline-block;
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

<!-- 소캣  -->
<script type="text/javascript" src="resources/sockjs-0.3.4.js"></script>

<!--For Plugins external css-->
<link rel="stylesheet" href="resources/css/plugins.css" />

<!--Theme custom css -->
<link rel="stylesheet" href="resources/css/style.css">

<!--Theme Responsive css-->
<link rel="stylesheet" href="resources/css/responsive.css" />

<script src="resources/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>

<script>
	var userId = '<c:out value="${sessionScope.loginId}"/>';
	$(function() {
		if (userId != "") {
			connect();
			init();
		}
	});
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

		<div id="wrapper">
			<div id="in">
				<!-- 검색 폼 -->
				<form class="right" action="Culture" method="get"
					style="margin-top: 20px;">
					<div style="margin: 0 auto; width: 100%; height: 100px;">
						<div id="main" style="margin: 0 auto;">
							<div class="styled-select blue semi-square" style="float: left;">
								<select name="searchItem">
									<option value="svcnm"
										${searchItem=='svcnm'  ? 'selected' : '' }>서비스명</option>
									<option value="minclassnm"
										${searchItem=='minclassnm'   ? 'selected' : '' }>분류</option>
									<option value="placenm"
										${searchItem=='placenm' ? 'selected' : '' }>장소명</option>
								</select>
							</div>
							<input type="text" id="search" name="searchWord"
								value="${searchWord}" style="margin: 0 auto;" />
							<div style="float: right;">
								<input type="submit" class="solid" value="검색">
							</div>
						</div>
					</div>
				</form>

				<table id="type11" class="board">
					<thead>
						<tr>
							<th style="width: 60px;">번호</th>
							<th class="mainTitle">타이틀</th>
							<th>주최</th>
							<th>사진</th>
							<th>날짜</th>
						</tr>
					</thead>
					<tbody>
						<c:if test="${empty list}">
							<tr>
								<td colspan="5">글이 없습니다.</td>
							</tr>
						</c:if>

						<%-- 이하 글 목록 반복 --%>
						<c:if test="${not empty list}">
							<c:forEach var="clist" items="${list }" varStatus="status">
								<tr>
									<td class="center" style="width: 60px;">${status.count + navi.startRecord}</td>
									<td class="title" style="width: 400px;"><a
										href="cultureDetail?culturenum=${clist.culturenum}">
											${clist.svcnm} </a></td>
									<td>${clist.placenm}</td>
									<td class="center"><img alt="" src="${clist.img_path }"
										style="width: 50px; height: 50px"></td>
									<td>${clist.svcopnbgndt}</td>
								</tr>
							</c:forEach>
						</c:if>
					</tbody>
				</table>


				<div class="boardfooter">
					<nav aria-label="Page navigation example">
						<ul class="pagination">
							<li class="page-item"><a
								href="Culture?currentPage=${navi.currentPage - navi.pagePerGroup}&searchItem=${searchItem }&searchWord=${searchWord }"><<</a></li>
							<li class="page-item"><a
								href="Culture?currentPage=${navi.currentPage - 1}&searchItem=${searchItem }&searchWord=${searchWord }">Prev</a></li>

							<c:forEach var="page" begin="${navi.startPageGroup}"
								end="${navi.endPageGroup}">
								<c:if test="${page == navi.currentPage }">
									<%-- <a style="color: red; font-weight: bolder"; href="listboard?currentPage=${page}">${page}</a> &nbsp; --%>
									<li class="page-item"><span
										style="color: red; font-weight: bolder";>${page}</span></li>
								</c:if>
								<c:if test="${page != navi.currentPage }">
									<li class="page-item"><a
										href="Culture?currentPage=${page}&searchItem=${searchItem }&searchWord=${searchWord }">${page}</a></li>
								</c:if>
							</c:forEach>
							<li class="page-item"><a
								href="Culture?currentPage=${navi.currentPage + 1}&searchItem=${searchItem }&searchWord=${searchWord }">Next</a></li>
							<li class="page-item"><a
								href="Culture?currentPage=${navi.currentPage + navi.pagePerGroup}&searchItem=${searchItem }&searchWord=${searchWord }">>></a></li>
						</ul>
					</nav>
				</div>
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
						<p style="font-family: 'big_johnregular';">Copyright 2018
							&copy; by C-4</P>
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









	<script src="resources/js/vendor/jquery-1.11.2.min.js"></script>
	<script src="resources/js/vendor/bootstrap.min.js"></script>
	<script src="resources/js/vendor/isotope.min.js"></script>

	<script src="resources/js/jquery.easypiechart.min.js"></script>
	<script src="resources/js/jquery.mixitup.min.js"></script>


	<script src="resources/js/plugins.js"></script>
	<script src="resources/js/main.js"></script>

</body>
</html>
