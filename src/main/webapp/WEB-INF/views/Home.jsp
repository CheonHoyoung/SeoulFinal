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

<style type="text/css">
#name {
	padding-top: 10px;
	padding-bottom: 10px;
	line-height: 20px;
	font-family: 'johnregular';
	font-size: 18px;
}
</style>

<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="apple-touch-icon" href="apple-touch-icon.png">

<link rel="stylesheet" href="resources/css/fonticons.css">
<link rel="stylesheet" href="resources/fonts/stylesheet.css">
<link rel="stylesheet" href="resources/css/font-awesome.min.css">
<link rel="stylesheet" href="resources/css/bootstrap.min.css">

<link rel="stylesheet" href="resources/css/plugins.css" />

<!--Theme custom css -->
<link rel="stylesheet" href="resources/css/style.css">

<!--Theme Responsive css-->
<link rel="stylesheet" href="resources/css/responsive.css" />
<script src="resources/jquery-3.3.1.min.js"></script>
<!-- 소캣  -->
<script type="text/javascript" src="resources/sockjs-0.3.4.js"></script>
<script src="resources/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
<link href="https://select2.github.io/dist/css/select2.min.css" rel="stylesheet">
<script src="https://select2.github.io/dist/js/select2.full.js"></script>
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
		if(result==""){
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
										<li><a href="Friends">Board1</a></li>
									</ul>

									<ul class="nav navbar-nav navbar-right">

										<c:if test="${sessionScope.loginId == null }">
											<li><a href="Login">Login</a></li>
										</c:if>

										<c:if test="${sessionScope.loginId != null }">
											<li><a>${sessionScope.loginName}</a></li>
											<li><a href="MyPage?msg=t"><i class="fa fa-inbox"></i>&nbsp;<span id="output" class="label label-danger"></span></a></li>
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



	<section id="home" class="home">
		<div class="home_overlay">
			<div class="container">
				<div class="row">

					<div id="carousel-example-generic" class="carousel slide"
						data-ride="carousel">
						<!-- Indicators -->
						<ol class="carousel-indicators">
							<li data-target="#carousel-example-generic" data-slide-to="0"
								class="active"></li>
							<li data-target="#carousel-example-generic" data-slide-to="1"></li>
							<li data-target="#carousel-example-generic" data-slide-to="2"></li>
						</ol>

						<!-- Wrapper for slides -->
						<div class="carousel-inner" role="listbox">
							<div class="item active">
								<div class="carousel-caption"></div>
								<img src="resources/images/banner.gif" alt="...">
							</div>
							<div class="item">
								<div class="carousel-caption"></div>
								<img src="resources/images/banner.gif" alt="...">
							</div>
							<div class="item">
								<div class="carousel-caption"></div>
								<img src="resources/images/banner.gif" alt="...">
							</div>
						</div>


					</div>


				</div>
				<!-- row -->
			</div>
		</div>
	</section>
	<!-- End of Banner Section -->


	<section id="myworks" class="myworks">
		<div class="container">
			<div class="row">
				<div
					class="col-md-1 col-md-offset-5 col-sm-1 col-sm-offset-5 col-xs-12 no-padding">

				</div>
				<!-- End of col-sm-2 -->
				<div class="col-md-6 col-sm-6 col-xs-12">
					<div class="head_title text-center wow fadeInLeft"
						data-wow-duration="2s">
						<h2>My Works</h2>
						<div class="separator"></div>
					</div>
				</div>

			</div>
		</div>

		<div class="main_myworks_content text-center">
			<div
				class="single_work_colum col-md-3 col-sm-6 col-xs-12 wow fadeInLeft"
				data-wow-duration="1.5s">
				<div class="single_work">
					<a href="Weather"><img src="resources/images/1.png" alt="" /></a>
				</div>
			</div>
			<div
				class="single_work_colum col-md-3 col-sm-6 col-xs-12 wow fadeInLeft"
				data-wow-duration="2s">
				<div class="single_work">
					<a href="Culture"><img src="resources/images/3.png" alt="" /></a>
				</div>
			</div>
			<div
				class="single_work_colum col-md-3 col-sm-6 col-xs-12 wow fadeInLeft"
				data-wow-duration="3s">
				<div class="single_work">
					<a href="Socar"><img src="resources/images/2.png" alt="" /></a>
				</div>
			</div>
			<div
				class="single_work_colum col-md-3 col-sm-6 col-xs-12 wow fadeInLeft"
				data-wow-duration="4s">
				<div class="single_work">
					<a href="MyPage"><img src="resources/images/4.png" alt="" /></a>
				</div>
			</div>

		</div>
	</section>
	<!-- End of Features Section -->


	<section id="contact" class="contact">
		<div class="container">
			<div class="row">
				<div class="main_contact">

					<div class="contact_content">

						<div class="col-md-6 col-sm-6 col-xs-12 wow fadeInLeft"
							data-wow-duration="2s">
							<div class="contact_message">
								<form action="contactAction" name="contactForm" method="post">
									<label for="">Name</label>
									<div class="form-group">
										<c:if test="${sessionScope.loginId != null }">
											<input type="text" class="form-control" name="contactName"
												placeholder="name" value="${loginId}" required="">
										</c:if>

										<c:if test="${sessionScope.loginId == null }">
											<input type="text" class="form-control" name="contactName"
												placeholder="name" required="">
										</c:if>
									</div>

									<label for="">Email</label>
									<div class="form-group">
										<c:if test="${sessionScope.loginEmail != null }">
											<input type="email" class="form-control" name="contactMail"
												placeholder="Email" value="${loginEmail}" required="">
										</c:if>

										<c:if test="${sessionScope.loginEmail == null }">
											<input type="email" class="form-control" name="contactMail"
												placeholder="Email" required="">
										</c:if>
									</div>

									<label for="">Message</label>
									<div class="form-group">
										<textarea class="form-control" name="contactMessage" rows="8"
											placeholder="Message"></textarea>
									</div>

									<div class="message_btn text-center">
										<div class="btn_bg">
											<a class="btn" onclick="contactCheck()">Send</a>
										</div>
									</div>
								</form>
							</div>
						</div>

						<div class="col-md-6 col-sm-6 col-xs-12 wow fadeInRight"
							data-wow-duration="2s">
							<div class="contact_socail_bookmark_area">
								<div class="head_title text-center">
									<h2>CONTACT US</h2>
									<div class="separator"></div>
								</div>


								<div class="contact_socail_bookmark">
									<a href=""><img src="resources/images/facebook.png" alt=""
										style="width: 32px; height: 32px;" /></a> <a href=""><img
										src="resources/images/Instagram.png" alt=""
										style="width: 32px; height: 32px;" /></a> <a href=""><img
										src="resources/images/Kakao_Talk.png" alt=""
										style="width: 32px; height: 32px;" /></a>
								</div>

								<div class="contact_adress">
									<h3>Address:</h3>
									<span>Yeongdong-daero 513, Gangnam-gu, Seoul</span> <span>COEX
										office (06164)</span>
								</div>

								<div class="row">
									<div class="col-md-6 col-sm-6 col-xs-12">
										<div class="single_contact_phone">
											<h3>TEL:</h3>
											<span>+82 1566 - 5114</span>
										</div>
									</div>

									<div class="col-md-6 col-sm-6 col-xs-12">
										<div class="single_contact_phone">
											<h3>Email:</h3>
											<span>ddaaahhiiiii@gmail.com</span>
										</div>
									</div>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="footer_copyright">

					<div class="col-md-6 col-sm-6 col-xs-12 wow fadeInDown"
						data-wow-duration="3s">
						<div class="single_copyirgth text-left">
							<p style="font-family: 'big_johnregular';">Copyright 2018
								&copy; by C-4</p>
						</div>
					</div>

					<div class="col-md-6 col-sm-6 col-xs-12">
						<div class="single_copyirgth wow fadeInUp" data-wow-duration="2s">
							<ul class="navbar-right">
								<li class="active" style="font-family: 'big_johnregular';"><a
									href="Socar"> <img style="width: 120px;"
										src="resources/images/socar1.png"></a></li>

							</ul>
						</div>
					</div>

				</div>
			</div>
		</div>
	</section>
	<!-- End of contact With Map Section -->









	<!-- STRAT SCROLL TO TOP -->

	<div class="scrollup">
		<a href="#"><i class="fa fa-chevron-up"></i></a>
	</div>

	<script src="resources/js/vendor/jquery-1.11.2.min.js"></script>
	<script src="resources/js/vendor/bootstrap.min.js"></script>
	<script src="resources/js/vendor/isotope.min.js"></script>

	<script src="resources/js/jquery.easypiechart.min.js"></script>
	<script src="resources/js/jquery.mixitup.min.js"></script>


	<script src="resources/js/plugins.js"></script>
	<script src="resources/js/main.js"></script>
		<script src="resources/js/plugins.js"></script>
	<script src="resources/js/main.js"></script>
	<script src="resources/jquery-3.3.1.min.js"></script>
	<!-- 컨텍스트 메뉴 입포트 -->
	<link rel="stylesheet" type="text/css"
		href="resources/css/jquery.contextMenu.min.css" />
	<script type="text/javascript" src="resources/js/contextMenu.min.js"></script>
	<script type="text/javascript" src="resources/js/jquery.ui.position.js"></script>

	<script type="text/javascript">
		function contactCheck() {
			document.contactForm.submit();
		}
	</script>

</body>
</html>
