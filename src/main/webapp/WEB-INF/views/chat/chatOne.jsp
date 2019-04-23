<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="" style="background-color: #ffffff;">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>Culture Shocka-Message</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="resources/css/mypage.css">



<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Poppins');

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
	border-top: 1px solid #f8d004;
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
	border-bottom: 2px solid #f8d004;
}

/* FORM TYPOGRAPHY*/
input[type=button], input[type=submit], input[type=reset] {
	background-color: #f8d004;
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
	background-color: #f8d004;
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
	border-bottom: 2px solid #f8d004;
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
	background-color: #f8d004;
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

.navbar-fixed-top, .navbar-fixed-bottom {
	padding-top: 0px;
	padding-bottom: 0px;
	position: fixed;
	left: 0;
	right: 0;
	z-index: 1000;
	-webkit-box-shadow: 0 6px 12px rgba(0, 0, 0, .175);
	background-color: #f8d004;
	color: #f8d004;
	height: 80px;
}

.menu-scroll {
	padding-top: 0px;
	padding-bottom: 0px;
	position: fixed;
	top: 0;
	left: 0;
	right: 0;
	z-index: 300;
	-webkit-box-shadow: 0 6px 12px rgba(0, 0, 0, .175);
	background-color: #f8d004;
	color: #f8d004;
	height: 80px;
}

body {
	background: #ffffff;
	color: #000000;
	font-family: "Roboto", Arial, Helvetica, sans-serif;
	font-size: 16px;
	font-weight: 300;
	letter-spacing: 0.01em;
	line-height: 1.6em;
	margin: 0;
	padding: 100px;
}

h1 {
	font-size: 40px;
	line-height: 0.8em;
	color: rgba(255, 255, 255, 0.2);
}

button:focus, input:focus, textarea:focus, select:focus {
	outline: none;
}

.tabs {
	display: block;
	display: -webkit-flex;
	display: -moz-flex;
	display: flex;
	-webkit-flex-wrap: wrap;
	-moz-flex-wrap: wrap;
	flex-wrap: wrap;
	margin: 0;
	overflow: hidden;
}

.tabs [class^="tab"] label, .tabs [class*=" tab"] label {
	color: #000000;
	cursor: pointer;
	display: block;
	font-size: 1.1em;
	font-weight: 300;
	line-height: 1em;
	padding: 2rem 0;
	text-align: center;
}

.tabs [class^="tab"] [type="radio"], .tabs [class*=" tab"] [type="radio"]
	{
	border-bottom: 1px solid rgba(239, 237, 239, 0.5);
	cursor: pointer;
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	display: block;
	width: 100%;
	-webkit-transition: all 0.3s ease-in-out;
	-moz-transition: all 0.3s ease-in-out;
	-o-transition: all 0.3s ease-in-out;
	transition: all 0.3s ease-in-out;
}

.tabs [class^="tab"] [type="radio"]:hover, .tabs [class^="tab"] [type="radio"]:focus,
	.tabs [class*=" tab"] [type="radio"]:hover, .tabs [class*=" tab"] [type="radio"]:focus
	{
	border-bottom: 1px solid #fd264f;
}

.tabs [class^="tab"] [type="radio"]:checked, .tabs [class*=" tab"] [type="radio"]:checked
	{
	border-bottom: 2px solid #fd264f;
}

.tabs [class^="tab"] [type="radio"]:checked+div, .tabs [class*=" tab"] [type="radio"]:checked+div
	{
	opacity: 1;
}

.tabs [class^="tab"] [type="radio"]+div, .tabs [class*=" tab"] [type="radio"]+div
	{
	display: block;
	opacity: 0;
	padding: 2rem 0;
	width: 90%;
	-webkit-transition: all 0.3s ease-in-out;
	-moz-transition: all 0.3s ease-in-out;
	-o-transition: all 0.3s ease-in-out;
	transition: all 0.3s ease-in-out;
}

.tabs .tab-2 {
	width: 50%;
}

.tabs .tab-2 [type="radio"]+div {
	width: 200%;
	margin-left: 200%;
}

.tabs .tab-2 [type="radio"]:checked+div {
	margin-left: 0;
}

.tabs .tab-2:last-child [type="radio"]+div {
	margin-left: 100%;
}

.tabs .tab-2:last-child [type="radio"]:checked+div {
	margin-left: -100%;
}

#wrapper {
 width: 100%;
 text-align: center;
 margin-top:40px;
 background-color: #ffffff;
 }
 
#in {
 display: inline-block;
 }
 
 #sendBtn {
 margin-top: 25px;
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
<script type="text/javascript" src="resources/sockjs-0.3.4.js"></script>
<script src="resources/jquery-3.3.1.min.js"></script>
<script src="resources/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>

<script>
	//소켓 관련 스크립트
	/* $(function() {
		$("#chatList")
				.append(
	}) */
var receiveuserid = '<c:out value="${receiveuserid}"/>';//aaa
var senduserId = '<c:out value="${senduserId}"/>'; //ccc
var msg = '<c:out value="${msg}"/>'; 
var date = '<c:out value="${date}"/>';

$(function(){
	if(date!=""){
		$('#msgU').val(msg);
		$('#msgU2').val("보내는사람"+senduserId+"        받는사람"+receiveuserid);
		$('#msgU3').val("시간"+date);
	}
	
})
function setParentText() {
	var msgU = $('#msgU').val();
	opener.send(msgU + "-" +receiveuserid);
	window.close();
}

function setResponseText(){
	window.close();
	opener.chatOneConnect(senduserId);
}

function onClose(){
	window.close();
}

</script>


<title>쪽지보내기</title>
</head>
<body>
		<div id="wrapper">
		<c:if test="${date!=null}">
		<div>
			<input id="msgU2" type="text" style="font-size: 15px; height: 30px; width: 420px"/>
			<input id="msgU3" type="text" style="font-size: 15px; height: 30px; width: 420px"/>
		</div>
		</c:if>
		<div id="in">
			<textarea style="height: 230px; width: 420px; border:dashed #facc00;" id="msgU"
				class="form-control" placeholder="메시지를 입력" maxlength="1000"></textarea>
		</div>
		<div>
			<c:if test="${date==null}">
			<input id="sendBtn" type="button" onclick="setParentText()" value="전송"></input>
			</c:if>
			<c:if test="${date!=null}">
			
			<div class="row">
				<input class="btn" id="sendBtn" type="button" onclick="setResponseText()" value="답장  "></input>
				<input class="btn" id="sendBtn" type="button" onclick="onClose()" value="확인  "></input>
			</div>
			</c:if>
		</div>
	</div>
</body>
</html>