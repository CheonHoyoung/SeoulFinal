<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html class="no-js" lang="">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>Pink-Donut One Page Template</title>
  <script src="resources/jquery-3.3.1.min.js"></script>
  <script type="text/javascript">
 
  function formCheck() {
		var title = document.getElementById("title");
		var content = document.getElementById("content");
		
		if (title.value == '' || content.value == '') {
			alert('제목과 내용을 입력하세요.');
			return false;
		}
		return true;
	}
	function boardList() {
		location.href = "Board";
	}
   
  
  </script>


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
	ㅈ padding: 30px;
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
opacity:1;
-webkit-transform:none;
transform:none;
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
opacity:1;
-webkit-transform:
none;
transform:none
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

.jumbotron {
	background-image: url('');
	background-size: cover;
	text-shadow: black 0.2em 0.2em 0.2em;
	color: green;
}

.filebox input[type="file"] { /* 파일 필드 숨기기 */
	 position: absolute; 
	 width: 1px; 
	 height: 1px;
	 padding: 0;
	margin: -1px; 
	overflow: hidden; 
	clip:rect(0,0,0,0); 
	border: 0; 
}

.filebox input[type="file"] { 
	position: absolute; 
	width: 1px; 
	height: 1px; 
	padding: 0; 
	margin: -1px;
	overflow: hidden; 
	clip:rect(0,0,0,0);
	 border: 0; 
	 } 
	 
.filebox label { 
	margin-top :10px;
	margin-bottom : 5px;
	display: inline-block; 
	padding: .5em .75em; 
	color: #fff; 
	font-size: inherit; 
	line-height: normal; 
	vertical-align: middle; 
	background-color: #FFC107; 
	cursor: pointer; 
	border: 1px solid #FFEB3B; 
	border-bottom-color: #FFEB3B; 
	border-radius: .25em; 
} 

/* named upload */ 
.filebox .upload-name { 
	color: #9E9E9E;
	margin-top :10px;
	margin-bottom : 5px;
	display: inline-block; 
	padding: .5em .75em; /* label의 패딩값과 일치 */ 
	font-size: inherit; 
	font-family: inherit; 
	line-height: normal; 
	vertical-align: middle;
	background-color: #f5f5f5; 
	border: 1px solid #ebebeb; 
	border-bottom-color: #e2e2e2; 
	border-radius: .25em; 
	-webkit-appearance: none; /* 네이티브 외형 감추기 */ 
	-moz-appearance: none; 
	appearance: none; 
}

/* imaged preview */ 
.filebox .upload-display { /* 이미지가 표시될 지역 */ 
	margin-bottom: 5px; 
} 

@media(min-width: 768px) { 
	.filebox .upload-display { 
		display: inline-block; 
		margin-right: 5px; 
		margin-bottom: 0; 
	} 
} 

.filebox .upload-thumb-wrap { /* 추가될 이미지를 감싸는 요소 */ 
	display: inline-block; 
	width: 54px; 
	padding: 2px; 
	vertical-align: middle; 
	border: 1px solid #ddd; 
	border-radius: 5px; 
	background-color: #fff; 
} 

.filebox .upload-display img { /* 추가될 이미지 */ 
	display: block; 
	max-width: 100%; 
	width: 100% \9; 
	height: auto; 
}

.filebox {
	text-align: left;
	margin-left: 175px;
}

textarea {
	width: 100%;
	height: 200px;
	padding: 10px;
	box-sizing: border-box;
	border: solid 1px #facc00;
	border-radius: 5px;
	font-size: 16px;
	resize: both;
}

input::placeholder {
  color:#dfdfdf;
 }

#wrapper {
 width: 900px;
 text-align: center;
 margin: 0 auto;
 margin-top:20px;
 }
#in {
 display: inline-block;
 }
 
 table {
    width: 900px;
    margin: 0 auto;
    border: 5px solid #444444;
    border-collapse: collapse;

  }
  
   th {
   	width: 130px;
    border: 5px solid #444444;
    height: 50px;
	text-align: center;
    background-color: #444444;
	color: #ffffff;
  }
  
  td {
  	border: 5px solid #444444;
    height: 50px;
  }

.size {
font-size: 20px;
}

.title {
font-size: 20px;
background-color: #444444;
color: #ffffff;
}

img:hover {
	opacity: 0.5;
	cursor: pointer;
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
		<div class="main_menu_bg navbar-fixed-top" style="width: 100%; height: 80px; background-color: #fad000;">
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
										<span class="sr-only">Toggle navigation</span> 
										<span class="icon-bar"></span>
										<span class="icon-bar"></span> 
										<span class="icon-bar"></span>
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


	<section id="myworks" class="myworks">

	<form action="BoardUpdate" method="post" onsubmit="return formCheck()" enctype="multipart/form-data">
		<input type="hidden" name="board_num" value="${board.board_num}">
		<input type="hidden" name="userid" value="${board.userid}">
		<div id="wrapper">
      	<div style="float: left; height: 60px; padding-left: 20px;">
      		<a href="javascript:home();"><img src="resources/images/home.png" style="width: 50px; height: 50px;"></a>
      	</div>
      	<div style="float: right; height: 40px; padding: 20px 20px;">
				<a href="javascript:boardList();"><img src="resources/images/list.png" style="padding-right: 10px;"></a>
				<c:if test="${loginId == board.userid }">
					<img src="resources/images/delete.png" onclick="boardDelete(${board.board_num});">
				</c:if>
      	</div>
	
	<table>
			<tr>
				<th style="text-align: center;">번호</th>
				<td>${board.board_num}</td>
			</tr>
			<tr>
				<th style="text-align: center;">작성자</th>
				<td>${board.userid}</td>
			</tr>
			<tr>
				<th style="text-align: center;">작성일</th>
				<td>${board.b_regdate }</td>
			</tr>
			<tr>
				<th style="text-align: center;">조회수</th>
				<td>${board.hitcount }</td>
			</tr>
			<tr>
				<th style="text-align: center;">제목</th>
				<td>
					<input type="text" name="b_title" id="title" value="${board.b_title }">
				</td>
			</tr>
			<tr>
				<th style="height: 200px; text-align: center;">내용</th>
				<td style="text-align: left;">
					<textarea rows="100%" cols="100%" name="b_content" id="content" >${board.b_content}</textarea>
				</td>
			</tr>
			<tr>
				<th style="text-align: center;">첨부파일</th>
				<td style="text-align: left;">
					<input type="file" name="upload"/> 
		  		          <!-- 기존 첨부된 파일이 존재할 경우 출력 -->
		        		${board.b_originalfile }	       
		        		<c:if test="${not empty board.b_originalfile }">
		        		<a href="DeleteAttachment?board_num=${board.board_num } ">파일삭제</a>
			  			</c:if>
					<c:if test="${empty board.b_originalfile}">
		                                  첨부파일 없음.
		       </c:if>

				</td>

			</tr>
			

		</table>
		<div style="width: 100%; height: 30px;"></div>
		<input type="submit" value="수정">
		<input type="button" value="취소">
	</div>
	</form>
		
	



	</section>
	<!-- End of Features Section -->


	<section id="contact" class="contact">

		<div class="row" style="margin-right: 170px; margin-left: 170px;">
			<div class="footer_copyright">

				<div class="col-md-6 col-sm-6 col-xs-12 wow fadeInDown"
					data-wow-duration="3s">
					<div class="single_copyirgth text-left">
						<p>Copyright 2018 &copy; by D반4조</p>
					</div>
				</div>

				<div class="col-md-6 col-sm-6 col-xs-12">
					<div class="single_copyirgth wow fadeInUp" data-wow-duration="2s">
						<ul class="navbar-right">
							<li class="active"><a href="Home">다음에채우기</a></li>

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
